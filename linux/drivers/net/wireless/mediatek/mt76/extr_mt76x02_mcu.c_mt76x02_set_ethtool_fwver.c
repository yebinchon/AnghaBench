
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct mt76x02_fw_header {int fw_ver; int build_ver; } ;
struct TYPE_5__ {TYPE_3__* hw; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;
struct TYPE_6__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int fw_version; } ;


 int le16_to_cpu (int ) ;
 int snprintf (int ,int,char*,int,int,int,int) ;

void mt76x02_set_ethtool_fwver(struct mt76x02_dev *dev,
          const struct mt76x02_fw_header *h)
{
 u16 bld = le16_to_cpu(h->build_ver);
 u16 ver = le16_to_cpu(h->fw_ver);

 snprintf(dev->mt76.hw->wiphy->fw_version,
   sizeof(dev->mt76.hw->wiphy->fw_version),
   "%d.%d.%02d-b%x",
   (ver >> 12) & 0xf, (ver >> 8) & 0xf, ver & 0xf, bld);
}
