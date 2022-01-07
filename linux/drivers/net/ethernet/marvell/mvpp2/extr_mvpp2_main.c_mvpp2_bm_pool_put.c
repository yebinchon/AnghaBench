
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mvpp2_port {int * bm_lock; TYPE_1__* priv; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;
struct TYPE_3__ {scalar_t__ hw_version; int lock_map; } ;


 scalar_t__ MVPP22 ;
 int MVPP22_BM_ADDR_HIGH_PHYS_RLS_MASK ;
 int MVPP22_BM_ADDR_HIGH_RLS_REG ;
 int MVPP22_BM_ADDR_HIGH_VIRT_RLS_MASK ;
 int MVPP22_BM_ADDR_HIGH_VIRT_RLS_SHIFT ;
 int MVPP2_BM_PHY_RLS_REG (int) ;
 int MVPP2_BM_VIRT_RLS_REG ;
 int get_cpu () ;
 unsigned int mvpp2_cpu_to_thread (TYPE_1__*,int ) ;
 int mvpp2_thread_write_relaxed (TYPE_1__*,unsigned int,int ,int) ;
 int put_cpu () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (unsigned int,int *) ;
 int upper_32_bits (int) ;

__attribute__((used)) static inline void mvpp2_bm_pool_put(struct mvpp2_port *port, int pool,
         dma_addr_t buf_dma_addr,
         phys_addr_t buf_phys_addr)
{
 unsigned int thread = mvpp2_cpu_to_thread(port->priv, get_cpu());
 unsigned long flags = 0;

 if (test_bit(thread, &port->priv->lock_map))
  spin_lock_irqsave(&port->bm_lock[thread], flags);

 if (port->priv->hw_version == MVPP22) {
  u32 val = 0;

  if (sizeof(dma_addr_t) == 8)
   val |= upper_32_bits(buf_dma_addr) &
    MVPP22_BM_ADDR_HIGH_PHYS_RLS_MASK;

  if (sizeof(phys_addr_t) == 8)
   val |= (upper_32_bits(buf_phys_addr)
    << MVPP22_BM_ADDR_HIGH_VIRT_RLS_SHIFT) &
    MVPP22_BM_ADDR_HIGH_VIRT_RLS_MASK;

  mvpp2_thread_write_relaxed(port->priv, thread,
        MVPP22_BM_ADDR_HIGH_RLS_REG, val);
 }






 mvpp2_thread_write_relaxed(port->priv, thread,
       MVPP2_BM_VIRT_RLS_REG, buf_phys_addr);
 mvpp2_thread_write_relaxed(port->priv, thread,
       MVPP2_BM_PHY_RLS_REG(pool), buf_dma_addr);

 if (test_bit(thread, &port->priv->lock_map))
  spin_unlock_irqrestore(&port->bm_lock[thread], flags);

 put_cpu();
}
