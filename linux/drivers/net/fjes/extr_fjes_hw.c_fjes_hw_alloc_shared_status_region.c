
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {TYPE_2__* share; } ;
struct fjes_hw {int max_epid; TYPE_1__ hw_info; } ;
struct fjes_device_shared_info {int dummy; } ;
struct TYPE_4__ {int epnum; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* kzalloc (size_t,int ) ;

__attribute__((used)) static int fjes_hw_alloc_shared_status_region(struct fjes_hw *hw)
{
 size_t size;

 size = sizeof(struct fjes_device_shared_info) +
     (sizeof(u8) * hw->max_epid);
 hw->hw_info.share = kzalloc(size, GFP_KERNEL);
 if (!hw->hw_info.share)
  return -ENOMEM;

 hw->hw_info.share->epnum = hw->max_epid;

 return 0;
}
