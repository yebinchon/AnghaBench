
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
typedef int spinlock_t ;


 int BUILD_BUG_ON (int) ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int SWID_END ;
 int SWID_START ;
 int idr_alloc (struct idr*,void*,int ,int,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mlx5_fpga_tls_alloc_swid(struct idr *idr, spinlock_t *idr_spinlock,
        void *ptr)
{
 unsigned long flags;
 int ret;






 BUILD_BUG_ON((SWID_END - 1) & 0xFF000000);

 idr_preload(GFP_KERNEL);
 spin_lock_irqsave(idr_spinlock, flags);
 ret = idr_alloc(idr, ptr, SWID_START, SWID_END, GFP_ATOMIC);
 spin_unlock_irqrestore(idr_spinlock, flags);
 idr_preload_end();

 return ret;
}
