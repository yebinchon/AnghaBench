
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rave_sp_status {int bootloader_version; int firmware_version; } ;
struct rave_sp {char const* part_number_firmware; char const* part_number_bootloader; TYPE_3__* variant; TYPE_1__* serdev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int (* get_status ) (struct rave_sp*,struct rave_sp_status*) ;} ;
struct TYPE_6__ {TYPE_2__ cmd; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENOMEM ;
 char* devm_rave_sp_version (struct device*,int *) ;
 int stub1 (struct rave_sp*,struct rave_sp_status*) ;

__attribute__((used)) static int rave_sp_get_status(struct rave_sp *sp)
{
 struct device *dev = &sp->serdev->dev;
 struct rave_sp_status status;
 const char *version;
 int ret;

 ret = sp->variant->cmd.get_status(sp, &status);
 if (ret)
  return ret;

 version = devm_rave_sp_version(dev, &status.firmware_version);
 if (!version)
  return -ENOMEM;

 sp->part_number_firmware = version;

 version = devm_rave_sp_version(dev, &status.bootloader_version);
 if (!version)
  return -ENOMEM;

 sp->part_number_bootloader = version;

 return 0;
}
