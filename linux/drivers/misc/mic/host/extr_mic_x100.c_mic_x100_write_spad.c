
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mic_device {int mmio; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ MIC_X100_SBOX_BASE_ADDRESS ;
 scalar_t__ MIC_X100_SBOX_SPAD0 ;
 int dev_dbg (int *,char*,int ,unsigned int) ;
 int mic_mmio_write (int *,int ,scalar_t__) ;

__attribute__((used)) static void
mic_x100_write_spad(struct mic_device *mdev, unsigned int idx, u32 val)
{
 dev_dbg(&mdev->pdev->dev, "Writing 0x%x to scratch pad index %d\n",
  val, idx);
 mic_mmio_write(&mdev->mmio, val,
         MIC_X100_SBOX_BASE_ADDRESS +
         MIC_X100_SBOX_SPAD0 + idx * 4);
}
