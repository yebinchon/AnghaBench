
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_spad ) (struct mic_device*,int ,int ) ;} ;


 int MIC_X100_DOWNLOAD_INFO ;
 int stub1 (struct mic_device*,int ,int ) ;

__attribute__((used)) static void mic_x100_reset_fw_ready(struct mic_device *mdev)
{
 mdev->ops->write_spad(mdev, MIC_X100_DOWNLOAD_INFO, 0);
}
