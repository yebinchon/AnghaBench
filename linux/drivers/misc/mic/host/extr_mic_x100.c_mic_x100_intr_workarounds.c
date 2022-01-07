
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_mw {int dummy; } ;
struct mic_device {scalar_t__ stepping; TYPE_1__* intr_ops; struct mic_mw mmio; } ;
struct TYPE_2__ {int (* enable_interrupts ) (struct mic_device*) ;} ;


 scalar_t__ MIC_A0_STEP ;
 scalar_t__ MIC_B0_STEP ;
 scalar_t__ MIC_X100_SBOX_BASE_ADDRESS ;
 scalar_t__ MIC_X100_SBOX_MSIXPBACR ;
 int mic_mmio_write (struct mic_mw*,int,scalar_t__) ;
 int stub1 (struct mic_device*) ;

__attribute__((used)) static void mic_x100_intr_workarounds(struct mic_device *mdev)
{
 struct mic_mw *mw = &mdev->mmio;


 if (MIC_A0_STEP == mdev->stepping)
  mic_mmio_write(mw, 1, MIC_X100_SBOX_BASE_ADDRESS +
   MIC_X100_SBOX_MSIXPBACR);

 if (mdev->stepping >= MIC_B0_STEP)
  mdev->intr_ops->enable_interrupts(mdev);
}
