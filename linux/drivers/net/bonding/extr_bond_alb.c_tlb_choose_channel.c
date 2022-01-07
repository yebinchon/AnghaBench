
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slave {int dummy; } ;
struct bonding {int mode_lock; } ;


 struct slave* __tlb_choose_channel (struct bonding*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct slave *tlb_choose_channel(struct bonding *bond, u32 hash_index,
     u32 skb_len)
{
 struct slave *tx_slave;





 spin_lock(&bond->mode_lock);
 tx_slave = __tlb_choose_channel(bond, hash_index, skb_len);
 spin_unlock(&bond->mode_lock);

 return tx_slave;
}
