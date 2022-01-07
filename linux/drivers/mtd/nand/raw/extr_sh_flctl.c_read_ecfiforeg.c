
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sh_flctl {int dummy; } ;
typedef enum flctl_ecc_res_t { ____Placeholder_flctl_ecc_res_t } flctl_ecc_res_t ;


 int FLECFIFO (struct sh_flctl*) ;
 int FL_ERROR ;
 unsigned long be32_to_cpu (unsigned long) ;
 unsigned long readl (int ) ;
 int wait_recfifo_ready (struct sh_flctl*,int) ;

__attribute__((used)) static enum flctl_ecc_res_t read_ecfiforeg
  (struct sh_flctl *flctl, uint8_t *buff, int sector)
{
 int i;
 enum flctl_ecc_res_t res;
 unsigned long *ecc_buf = (unsigned long *)buff;

 res = wait_recfifo_ready(flctl , sector);

 if (res != FL_ERROR) {
  for (i = 0; i < 4; i++) {
   ecc_buf[i] = readl(FLECFIFO(flctl));
   ecc_buf[i] = be32_to_cpu(ecc_buf[i]);
  }
 }

 return res;
}
