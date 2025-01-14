
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mic_device {int mmio; } ;


 scalar_t__ MIC_X100_SBOX_BASE_ADDRESS ;
 scalar_t__ MIC_X100_SBOX_SICR0 ;
 scalar_t__ mic_mmio_read (int *,scalar_t__) ;
 int mic_mmio_write (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 mic_x100_ack_interrupt(struct mic_device *mdev)
{
 u32 sicr0 = MIC_X100_SBOX_BASE_ADDRESS + MIC_X100_SBOX_SICR0;
 u32 reg = mic_mmio_read(&mdev->mmio, sicr0);
 mic_mmio_write(&mdev->mmio, reg, sicr0);
 return reg;
}
