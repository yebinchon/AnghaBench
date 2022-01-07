
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idr {int dummy; } ;
typedef int spinlock_t ;


 void* idr_remove (struct idr*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void *mlx5_fpga_tls_release_swid(struct idr *idr,
     spinlock_t *idr_spinlock, u32 swid)
{
 unsigned long flags;
 void *ptr;

 spin_lock_irqsave(idr_spinlock, flags);
 ptr = idr_remove(idr, swid);
 spin_unlock_irqrestore(idr_spinlock, flags);
 return ptr;
}
