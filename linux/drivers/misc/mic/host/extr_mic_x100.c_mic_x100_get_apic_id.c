
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mic_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read_spad ) (struct mic_device*,int ) ;} ;


 int MIC_X100_DOWNLOAD_INFO ;
 int MIC_X100_SPAD2_APIC_ID (int ) ;
 int stub1 (struct mic_device*,int ) ;

__attribute__((used)) static u32 mic_x100_get_apic_id(struct mic_device *mdev)
{
 u32 scratch2 = 0;

 scratch2 = mdev->ops->read_spad(mdev, MIC_X100_DOWNLOAD_INFO);
 return MIC_X100_SPAD2_APIC_ID(scratch2);
}
