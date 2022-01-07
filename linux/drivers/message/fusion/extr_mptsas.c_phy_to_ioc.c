
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct sas_phy {TYPE_1__ dev; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_4__ {int * ioc; } ;
typedef TYPE_2__ MPT_SCSI_HOST ;
typedef int MPT_ADAPTER ;


 struct Scsi_Host* dev_to_shost (int ) ;

__attribute__((used)) static inline MPT_ADAPTER *phy_to_ioc(struct sas_phy *phy)
{
 struct Scsi_Host *shost = dev_to_shost(phy->dev.parent);
 return ((MPT_SCSI_HOST *)shost->hostdata)->ioc;
}
