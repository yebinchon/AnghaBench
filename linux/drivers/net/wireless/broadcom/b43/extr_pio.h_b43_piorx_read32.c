
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43_pio_rxqueue {scalar_t__ mmio_base; int dev; } ;


 int b43_read32 (int ,scalar_t__) ;

__attribute__((used)) static inline u32 b43_piorx_read32(struct b43_pio_rxqueue *q, u16 offset)
{
 return b43_read32(q->dev, q->mmio_base + offset);
}
