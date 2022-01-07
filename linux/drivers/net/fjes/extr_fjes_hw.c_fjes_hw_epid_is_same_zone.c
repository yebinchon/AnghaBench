
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fjes_hw {int max_epid; size_t my_epid; TYPE_1__* ep_shm_info; } ;
struct TYPE_2__ {scalar_t__ es_status; scalar_t__ zone; } ;


 scalar_t__ FJES_ZONING_STATUS_ENABLE ;
 scalar_t__ FJES_ZONING_ZONE_TYPE_NONE ;

bool fjes_hw_epid_is_same_zone(struct fjes_hw *hw, int epid)
{
 if (epid >= hw->max_epid)
  return 0;

 if ((hw->ep_shm_info[epid].es_status !=
   FJES_ZONING_STATUS_ENABLE) ||
  (hw->ep_shm_info[hw->my_epid].zone ==
   FJES_ZONING_ZONE_TYPE_NONE))
  return 0;
 else
  return (hw->ep_shm_info[epid].zone ==
    hw->ep_shm_info[hw->my_epid].zone);
}
