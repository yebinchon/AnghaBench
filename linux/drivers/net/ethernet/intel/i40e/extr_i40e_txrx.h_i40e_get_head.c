
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_tx_desc {int dummy; } ;
struct i40e_ring {int count; scalar_t__ desc; } ;
typedef int __le32 ;


 int le32_to_cpu (int volatile) ;

__attribute__((used)) static inline u32 i40e_get_head(struct i40e_ring *tx_ring)
{
 void *head = (struct i40e_tx_desc *)tx_ring->desc + tx_ring->count;

 return le32_to_cpu(*(volatile __le32 *)head);
}
