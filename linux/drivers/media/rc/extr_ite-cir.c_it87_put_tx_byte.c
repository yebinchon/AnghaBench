
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ite_dev {scalar_t__ cir_addr; } ;


 scalar_t__ IT87_DR ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void it87_put_tx_byte(struct ite_dev *dev, u8 value)
{
 outb(value, dev->cir_addr + IT87_DR);
}
