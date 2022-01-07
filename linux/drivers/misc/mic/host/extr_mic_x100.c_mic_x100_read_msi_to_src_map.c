
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mic_device {int mmio; } ;


 scalar_t__ MIC_X100_SBOX_BASE_ADDRESS ;
 scalar_t__ MIC_X100_SBOX_MXAR0 ;
 int mic_mmio_read (int *,scalar_t__) ;

__attribute__((used)) static u32
mic_x100_read_msi_to_src_map(struct mic_device *mdev, int idx)
{
 return mic_mmio_read(&mdev->mmio,
  MIC_X100_SBOX_BASE_ADDRESS +
  MIC_X100_SBOX_MXAR0 + idx * 4);
}
