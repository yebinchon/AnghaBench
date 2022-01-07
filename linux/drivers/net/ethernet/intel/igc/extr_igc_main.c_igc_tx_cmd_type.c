
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int IGC_ADVTXD_DCMD_DEXT ;
 int IGC_ADVTXD_DCMD_IFCS ;
 int IGC_ADVTXD_DTYP_DATA ;

__attribute__((used)) static u32 igc_tx_cmd_type(struct sk_buff *skb, u32 tx_flags)
{

 u32 cmd_type = IGC_ADVTXD_DTYP_DATA |
         IGC_ADVTXD_DCMD_DEXT |
         IGC_ADVTXD_DCMD_IFCS;

 return cmd_type;
}
