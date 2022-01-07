
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* res_buf; TYPE_2__* req_buf; } ;
struct fjes_hw {int max_epid; int my_epid; TYPE_2__* ep_shm_info; TYPE_1__ hw_info; } ;
struct TYPE_4__ {int rx; int tx; } ;


 int fjes_hw_free_epbuf (int *) ;
 int fjes_hw_free_shared_status_region (struct fjes_hw*) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void fjes_hw_cleanup(struct fjes_hw *hw)
{
 int epidx;

 if (!hw->ep_shm_info)
  return;

 fjes_hw_free_shared_status_region(hw);

 kfree(hw->hw_info.req_buf);
 hw->hw_info.req_buf = ((void*)0);

 kfree(hw->hw_info.res_buf);
 hw->hw_info.res_buf = ((void*)0);

 for (epidx = 0; epidx < hw->max_epid ; epidx++) {
  if (epidx == hw->my_epid)
   continue;
  fjes_hw_free_epbuf(&hw->ep_shm_info[epidx].tx);
  fjes_hw_free_epbuf(&hw->ep_shm_info[epidx].rx);
 }

 kfree(hw->ep_shm_info);
 hw->ep_shm_info = ((void*)0);
}
