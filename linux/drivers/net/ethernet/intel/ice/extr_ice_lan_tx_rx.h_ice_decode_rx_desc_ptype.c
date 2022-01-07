
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ice_rx_ptype_decoded {int dummy; } ;


 struct ice_rx_ptype_decoded* ice_ptype_lkup ;

__attribute__((used)) static inline struct ice_rx_ptype_decoded ice_decode_rx_desc_ptype(u16 ptype)
{
 return ice_ptype_lkup[ptype];
}
