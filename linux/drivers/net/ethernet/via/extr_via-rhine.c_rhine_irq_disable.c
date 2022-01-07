
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhine_private {scalar_t__ base; } ;


 scalar_t__ IntrEnable ;
 int iowrite16 (int,scalar_t__) ;

__attribute__((used)) static void rhine_irq_disable(struct rhine_private *rp)
{
 iowrite16(0x0000, rp->base + IntrEnable);
}
