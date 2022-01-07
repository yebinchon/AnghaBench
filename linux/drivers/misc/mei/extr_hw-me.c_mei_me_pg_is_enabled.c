
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mei_me_hw {scalar_t__ d0i3_supported; } ;
struct TYPE_2__ {int minor_version; int major_version; } ;
struct mei_device {TYPE_1__ version; int dev; int hbm_f_pg_supported; } ;


 int HBM_MAJOR_VERSION_PGI ;
 int HBM_MINOR_VERSION_PGI ;
 int ME_PGIC_HRA ;
 int dev_dbg (int ,char*,scalar_t__,int,int ,int ,int ,int ) ;
 int mei_me_mecsr_read (struct mei_device*) ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;

__attribute__((used)) static bool mei_me_pg_is_enabled(struct mei_device *dev)
{
 struct mei_me_hw *hw = to_me_hw(dev);
 u32 reg = mei_me_mecsr_read(dev);

 if (hw->d0i3_supported)
  return 1;

 if ((reg & ME_PGIC_HRA) == 0)
  goto notsupported;

 if (!dev->hbm_f_pg_supported)
  goto notsupported;

 return 1;

notsupported:
 dev_dbg(dev->dev, "pg: not supported: d0i3 = %d HGP = %d hbm version %d.%d ?= %d.%d\n",
  hw->d0i3_supported,
  !!(reg & ME_PGIC_HRA),
  dev->version.major_version,
  dev->version.minor_version,
  HBM_MAJOR_VERSION_PGI,
  HBM_MINOR_VERSION_PGI);

 return 0;
}
