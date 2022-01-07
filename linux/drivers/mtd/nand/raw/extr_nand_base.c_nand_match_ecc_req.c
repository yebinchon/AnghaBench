
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nand_ecc_step_info {int stepsize; int nstrengths; int* strengths; } ;
struct nand_ecc_caps {int nstepinfos; int (* calc_ecc_bytes ) (int,int) ;struct nand_ecc_step_info* stepinfos; } ;
struct TYPE_6__ {int size; int strength; int bytes; } ;
struct TYPE_4__ {int step_size; int strength; } ;
struct TYPE_5__ {TYPE_1__ eccreq; } ;
struct nand_chip {TYPE_3__ ecc; TYPE_2__ base; } ;
struct mtd_info {int writesize; } ;


 int ENOTSUPP ;
 int INT_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (int,int) ;

__attribute__((used)) static int
nand_match_ecc_req(struct nand_chip *chip,
     const struct nand_ecc_caps *caps, int oobavail)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 const struct nand_ecc_step_info *stepinfo;
 int req_step = chip->base.eccreq.step_size;
 int req_strength = chip->base.eccreq.strength;
 int req_corr, step_size, strength, nsteps, ecc_bytes, ecc_bytes_total;
 int best_step, best_strength, best_ecc_bytes;
 int best_ecc_bytes_total = INT_MAX;
 int i, j;


 if (!req_step || !req_strength)
  return -ENOTSUPP;


 req_corr = mtd->writesize / req_step * req_strength;

 for (i = 0; i < caps->nstepinfos; i++) {
  stepinfo = &caps->stepinfos[i];
  step_size = stepinfo->stepsize;

  for (j = 0; j < stepinfo->nstrengths; j++) {
   strength = stepinfo->strengths[j];






   if (step_size < req_step && strength < req_strength)
    continue;

   if (mtd->writesize % step_size)
    continue;

   nsteps = mtd->writesize / step_size;

   ecc_bytes = caps->calc_ecc_bytes(step_size, strength);
   if (WARN_ON_ONCE(ecc_bytes < 0))
    continue;
   ecc_bytes_total = ecc_bytes * nsteps;

   if (ecc_bytes_total > oobavail ||
       strength * nsteps < req_corr)
    continue;





   if (ecc_bytes_total < best_ecc_bytes_total) {
    best_ecc_bytes_total = ecc_bytes_total;
    best_step = step_size;
    best_strength = strength;
    best_ecc_bytes = ecc_bytes;
   }
  }
 }

 if (best_ecc_bytes_total == INT_MAX)
  return -ENOTSUPP;

 chip->ecc.size = best_step;
 chip->ecc.strength = best_strength;
 chip->ecc.bytes = best_ecc_bytes;

 return 0;
}
