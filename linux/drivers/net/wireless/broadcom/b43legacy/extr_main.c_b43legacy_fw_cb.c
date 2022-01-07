
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct b43legacy_wldev {int fw_load_complete; struct firmware const* fwp; } ;


 int complete (int *) ;

__attribute__((used)) static void b43legacy_fw_cb(const struct firmware *firmware, void *context)
{
 struct b43legacy_wldev *dev = context;

 dev->fwp = firmware;
 complete(&dev->fw_load_complete);
}
