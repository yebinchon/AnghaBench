
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {unsigned long sp_state; int dev; } ;


 int BNX2X_ERR (char*,unsigned long,unsigned long) ;
 int netif_addr_lock_bh (int ) ;
 int netif_addr_unlock_bh (int ) ;
 int smp_mb () ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline bool bnx2x_wait_sp_comp(struct bnx2x *bp, unsigned long mask)
{
 int tout = 5000;

 while (tout--) {
  smp_mb();
  netif_addr_lock_bh(bp->dev);
  if (!(bp->sp_state & mask)) {
   netif_addr_unlock_bh(bp->dev);
   return 1;
  }
  netif_addr_unlock_bh(bp->dev);

  usleep_range(1000, 2000);
 }

 smp_mb();

 netif_addr_lock_bh(bp->dev);
 if (bp->sp_state & mask) {
  BNX2X_ERR("Filtering completion timed out. sp_state 0x%lx, mask 0x%lx\n",
     bp->sp_state, mask);
  netif_addr_unlock_bh(bp->dev);
  return 0;
 }
 netif_addr_unlock_bh(bp->dev);

 return 1;
}
