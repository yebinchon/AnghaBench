
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int data; } ;
struct mlxsw_core {TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ txhdr_len; } ;


 int MLXSW_EMAD_END_TLV_LEN ;
 scalar_t__ MLXSW_EMAD_ETH_HDR_LEN ;
 scalar_t__ MLXSW_EMAD_MAX_FRAME_LEN ;
 int MLXSW_EMAD_OP_TLV_LEN ;
 int memset (int ,int ,scalar_t__) ;
 struct sk_buff* netdev_alloc_skb (int *,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *mlxsw_emad_alloc(const struct mlxsw_core *mlxsw_core,
     u16 reg_len)
{
 struct sk_buff *skb;
 u16 emad_len;

 emad_len = (reg_len + sizeof(u32) + MLXSW_EMAD_ETH_HDR_LEN +
      (MLXSW_EMAD_OP_TLV_LEN + MLXSW_EMAD_END_TLV_LEN) *
      sizeof(u32) + mlxsw_core->driver->txhdr_len);
 if (emad_len > MLXSW_EMAD_MAX_FRAME_LEN)
  return ((void*)0);

 skb = netdev_alloc_skb(((void*)0), emad_len);
 if (!skb)
  return ((void*)0);
 memset(skb->data, 0, emad_len);
 skb_reserve(skb, emad_len);

 return skb;
}
