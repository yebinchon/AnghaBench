
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mic_device {int mmio; } ;


 int MIC_X100_POSTCODE ;
 int mic_mmio_read (int *,int ) ;

__attribute__((used)) static u32 mic_x100_get_postcode(struct mic_device *mdev)
{
 return mic_mmio_read(&mdev->mmio, MIC_X100_POSTCODE);
}
