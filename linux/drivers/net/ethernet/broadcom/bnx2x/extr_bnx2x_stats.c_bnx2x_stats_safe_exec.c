
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int stats_lock; scalar_t__ stats_pending; } ;


 int BNX2X_ERR (char*) ;
 int EBUSY ;
 int HZ ;
 int bnx2x_stats_comp (struct bnx2x*) ;
 scalar_t__ bnx2x_storm_stats_update (struct bnx2x*) ;
 int down_timeout (int *,int) ;
 scalar_t__ unlikely (int) ;
 int up (int *) ;
 int usleep_range (int,int) ;

int bnx2x_stats_safe_exec(struct bnx2x *bp,
     void (func_to_exec)(void *cookie),
     void *cookie)
{
 int cnt = 10, rc = 0;




 rc = down_timeout(&bp->stats_lock, HZ / 10);
 if (unlikely(rc)) {
  BNX2X_ERR("Failed to take statistics lock for safe execution\n");
  goto out_no_lock;
 }

 bnx2x_stats_comp(bp);
 while (bp->stats_pending && cnt--)
  if (bnx2x_storm_stats_update(bp))
   usleep_range(1000, 2000);
 if (bp->stats_pending) {
  BNX2X_ERR("Failed to wait for stats pending to clear [possibly FW is stuck]\n");
  rc = -EBUSY;
  goto out;
 }

 func_to_exec(cookie);

out:



 up(&bp->stats_lock);
out_no_lock:
 return rc;
}
