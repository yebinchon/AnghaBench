
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct i40e_rx_ptype_decoded {int dummy; } ;


 struct i40e_rx_ptype_decoded* i40e_ptype_lookup ;

__attribute__((used)) static inline struct i40e_rx_ptype_decoded decode_rx_desc_ptype(u8 ptype)
{
 return i40e_ptype_lookup[ptype];
}
