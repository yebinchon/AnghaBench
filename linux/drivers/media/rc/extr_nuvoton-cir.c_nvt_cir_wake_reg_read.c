
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nvt_dev {scalar_t__ cir_wake_addr; } ;


 scalar_t__ inb (scalar_t__) ;

__attribute__((used)) static u8 nvt_cir_wake_reg_read(struct nvt_dev *nvt, u8 offset)
{
 return inb(nvt->cir_wake_addr + offset);
}
