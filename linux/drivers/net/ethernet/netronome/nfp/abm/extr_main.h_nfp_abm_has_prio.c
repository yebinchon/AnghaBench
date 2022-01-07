
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_abm {int num_bands; } ;



__attribute__((used)) static inline bool nfp_abm_has_prio(struct nfp_abm *abm)
{
 return abm->num_bands > 1;
}
