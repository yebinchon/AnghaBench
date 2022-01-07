
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdr {int dummy; } ;
struct pdi {int * data; } ;
struct hermes {int dummy; } ;
typedef int __le16 ;


 scalar_t__ PDI_END ;
 int hermes_plug_pdi (struct hermes*,struct pdr const*,struct pdi const*,void const*) ;
 scalar_t__ pdi_id (struct pdi const*) ;
 size_t pdi_len (struct pdi const*) ;

int hermes_apply_pda(struct hermes *hw,
       const char *first_pdr,
       const void *pdr_end,
       const __le16 *pda,
       const void *pda_end)
{
 int ret;
 const struct pdi *pdi;
 const struct pdr *pdr;

 pdr = (const struct pdr *) first_pdr;
 pda_end -= sizeof(struct pdi);


 pdi = (const struct pdi *) (pda + 2);
 while (((void *) pdi <= pda_end) &&
        (pdi_id(pdi) != PDI_END)) {
  ret = hermes_plug_pdi(hw, pdr, pdi, pdr_end);
  if (ret)
   return ret;


  pdi = (const struct pdi *) &pdi->data[pdi_len(pdi)];
 }
 return 0;
}
