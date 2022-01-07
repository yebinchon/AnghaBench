
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;


 scalar_t__ MLXSW_EMAD_ETH_HDR_LEN ;
 int MLXSW_EMAD_OP_TLV_LEN ;

__attribute__((used)) static char *mlxsw_emad_reg_tlv(const struct sk_buff *skb)
{
 return ((char *) (skb->data + MLXSW_EMAD_ETH_HDR_LEN +
          MLXSW_EMAD_OP_TLV_LEN * sizeof(u32)));
}
