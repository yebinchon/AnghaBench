
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vxgedev {int no_of_vpath; int vp_lockup_timer; struct vxge_vpath* vpaths; int vp_reset; } ;
struct TYPE_3__ {int txq; } ;
struct TYPE_4__ {unsigned long prev_rx_frms; int rx_frms; } ;
struct vxge_ring {int last_status; TYPE_2__ stats; int handle; } ;
struct vxge_vpath {TYPE_1__ fifo; struct vxge_ring ring; } ;
struct timer_list {int dummy; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;


 int HZ ;
 unsigned long READ_ONCE (int ) ;
 int VXGE_HW_FAIL ;
 int VXGE_HW_OK ;
 struct vxgedev* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netif_tx_stop_queue (int ) ;
 int test_and_set_bit (int,int *) ;
 struct vxgedev* vdev ;
 int vp_lockup_timer ;
 int vxge_hw_vpath_check_leak (int ) ;
 int vxge_vpath_intr_disable (struct vxgedev*,int) ;

__attribute__((used)) static void vxge_poll_vp_lockup(struct timer_list *t)
{
 struct vxgedev *vdev = from_timer(vdev, t, vp_lockup_timer);
 enum vxge_hw_status status = VXGE_HW_OK;
 struct vxge_vpath *vpath;
 struct vxge_ring *ring;
 int i;
 unsigned long rx_frms;

 for (i = 0; i < vdev->no_of_vpath; i++) {
  ring = &vdev->vpaths[i].ring;


  rx_frms = READ_ONCE(ring->stats.rx_frms);


  if (ring->stats.prev_rx_frms == rx_frms) {
   status = vxge_hw_vpath_check_leak(ring->handle);


   if ((VXGE_HW_FAIL == status) &&
    (VXGE_HW_FAIL == ring->last_status)) {


    if (!test_and_set_bit(i, &vdev->vp_reset)) {
     vpath = &vdev->vpaths[i];


     vxge_vpath_intr_disable(vdev, i);


     netif_tx_stop_queue(vpath->fifo.txq);
     continue;
    }
   }
  }
  ring->stats.prev_rx_frms = rx_frms;
  ring->last_status = status;
 }


 mod_timer(&vdev->vp_lockup_timer, jiffies + HZ / 1000);
}
