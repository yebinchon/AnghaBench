
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;


 int FM10K_SET_FLAG (int ,int ,int ) ;
 int FM10K_TXD_FLAG_CSUM ;
 int FM10K_TX_FLAGS_CSUM ;

__attribute__((used)) static u8 fm10k_tx_desc_flags(struct sk_buff *skb, u32 tx_flags)
{

 u32 desc_flags = 0;


 desc_flags |= FM10K_SET_FLAG(tx_flags, FM10K_TX_FLAGS_CSUM,
         FM10K_TXD_FLAG_CSUM);

 return desc_flags;
}
