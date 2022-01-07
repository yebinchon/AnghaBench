
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethoc {int dummy; } ;


 int INT_MASK ;
 int ethoc_read (struct ethoc*,int ) ;
 int ethoc_write (struct ethoc*,int ,int ) ;

__attribute__((used)) static inline void ethoc_enable_irq(struct ethoc *dev, u32 mask)
{
 u32 imask = ethoc_read(dev, INT_MASK);
 imask |= mask;
 ethoc_write(dev, INT_MASK, imask);
}
