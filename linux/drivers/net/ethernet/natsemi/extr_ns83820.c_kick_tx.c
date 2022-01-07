
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns83820 {scalar_t__ base; int tx_free_idx; int tx_idx; } ;


 scalar_t__ CR ;
 int CR_TXE ;
 int dprintk (char*,struct ns83820*,int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void kick_tx(struct ns83820 *dev)
{
 dprintk("kick_tx(%p): tx_idx=%d free_idx=%d\n",
  dev, dev->tx_idx, dev->tx_free_idx);
 writel(CR_TXE, dev->base + CR);
}
