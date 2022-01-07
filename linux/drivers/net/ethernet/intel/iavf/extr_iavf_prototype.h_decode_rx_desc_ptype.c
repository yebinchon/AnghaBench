
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct iavf_rx_ptype_decoded {int dummy; } ;


 struct iavf_rx_ptype_decoded* iavf_ptype_lookup ;

__attribute__((used)) static inline struct iavf_rx_ptype_decoded decode_rx_desc_ptype(u8 ptype)
{
 return iavf_ptype_lookup[ptype];
}
