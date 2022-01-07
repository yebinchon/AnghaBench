
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mic_device {TYPE_1__* pdev; int mmio; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ MIC_X100_SBOX_BASE_ADDRESS ;
 scalar_t__ MIC_X100_SBOX_SPAD0 ;
 int dev_dbg (int *,char*,int ,unsigned int) ;
 int mic_mmio_read (int *,scalar_t__) ;

__attribute__((used)) static u32
mic_x100_read_spad(struct mic_device *mdev, unsigned int idx)
{
 u32 val = mic_mmio_read(&mdev->mmio,
  MIC_X100_SBOX_BASE_ADDRESS +
  MIC_X100_SBOX_SPAD0 + idx * 4);

 dev_dbg(&mdev->pdev->dev,
  "Reading 0x%x from scratch pad index %d\n", val, idx);
 return val;
}
