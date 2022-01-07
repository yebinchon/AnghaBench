
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ fw; } ;



__attribute__((used)) static inline int b43_new_kidx_api(struct b43_wldev *dev)
{

 return (dev->fw.rev >= 351);
}
