
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int opensource; } ;
struct b43_wldev {TYPE_1__ fw; } ;


 int B43_SHM_SHARED ;
 int B43_SHM_SH_FWCAPA ;
 int B43_WARN_ON (int) ;
 int b43_shm_read16 (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static u16 b43_fwcapa_read(struct b43_wldev *dev)
{
 B43_WARN_ON(!dev->fw.opensource);
 return b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_FWCAPA);
}
