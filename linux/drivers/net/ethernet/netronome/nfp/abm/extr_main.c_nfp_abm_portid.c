
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;


 int FIELD_PREP (int ,unsigned int) ;
 int NFP_ABM_PORTID_ID ;
 int NFP_ABM_PORTID_TYPE ;

__attribute__((used)) static u32 nfp_abm_portid(enum nfp_repr_type rtype, unsigned int id)
{
 return FIELD_PREP(NFP_ABM_PORTID_TYPE, rtype) |
        FIELD_PREP(NFP_ABM_PORTID_ID, id);
}
