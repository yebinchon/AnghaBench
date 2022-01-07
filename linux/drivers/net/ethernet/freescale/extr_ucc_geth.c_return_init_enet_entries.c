
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned int u32 ;
struct ucc_geth_private {int dummy; } ;


 unsigned int ENET_INIT_PARAM_PTR_MASK ;
 unsigned int ENET_INIT_PARAM_RISC_MASK ;
 unsigned int ENET_INIT_PARAM_SNUM_MASK ;
 unsigned int ENET_INIT_PARAM_SNUM_SHIFT ;
 int qe_muram_free (unsigned int) ;
 int qe_put_snum (scalar_t__) ;

__attribute__((used)) static int return_init_enet_entries(struct ucc_geth_private *ugeth,
        u32 *p_start,
        u8 num_entries,
        unsigned int risc,
        int skip_page_for_first_entry)
{
 u32 init_enet_offset;
 u8 i;
 int snum;

 for (i = 0; i < num_entries; i++) {
  u32 val = *p_start;



  if ((val & ENET_INIT_PARAM_RISC_MASK) == risc) {
   snum =
       (u32) (val & ENET_INIT_PARAM_SNUM_MASK) >>
       ENET_INIT_PARAM_SNUM_SHIFT;
   qe_put_snum((u8) snum);
   if (!((i == 0) && skip_page_for_first_entry)) {

    init_enet_offset =
        (val & ENET_INIT_PARAM_PTR_MASK);
    qe_muram_free(init_enet_offset);
   }
   *p_start++ = 0;
  }
 }

 return 0;
}
