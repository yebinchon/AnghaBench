
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int intr_type; int tx_steering_type; scalar_t__ addr_learn_en; scalar_t__ rth_steering; } ;
struct vxgedev {char* no_of_vpath; TYPE_6__* devh; TYPE_2__* ndev; TYPE_1__ config; } ;
struct TYPE_11__ {TYPE_4__* vp_config; } ;
struct TYPE_12__ {TYPE_5__ config; } ;
struct TYPE_9__ {int max_frags; } ;
struct TYPE_10__ {TYPE_3__ fifo; scalar_t__ rpa_strip_vlan_tag; int mtu; } ;
struct TYPE_8__ {int name; } ;
 int VXGE_ERR ;
 int VXGE_HW_MAX_VIRTUAL_PATHS ;
 int VXGE_TRACE ;
 int vxge_bVALn (int ,int,int) ;
 int vxge_debug_init (int ,char*,int ,...) ;
 int vxge_debug_ll_config (int ,char*,int ,int ) ;

__attribute__((used)) static void vxge_print_parm(struct vxgedev *vdev, u64 vpath_mask)
{
 int i;

 vxge_debug_init(VXGE_TRACE,
  "%s: %d Vpath(s) opened",
  vdev->ndev->name, vdev->no_of_vpath);

 switch (vdev->config.intr_type) {
 case 134:
  vxge_debug_init(VXGE_TRACE,
   "%s: Interrupt type INTA", vdev->ndev->name);
  break;

 case 133:
  vxge_debug_init(VXGE_TRACE,
   "%s: Interrupt type MSI-X", vdev->ndev->name);
  break;
 }

 if (vdev->config.rth_steering) {
  vxge_debug_init(VXGE_TRACE,
   "%s: RTH steering enabled for TCP_IPV4",
   vdev->ndev->name);
 } else {
  vxge_debug_init(VXGE_TRACE,
   "%s: RTH steering disabled", vdev->ndev->name);
 }

 switch (vdev->config.tx_steering_type) {
 case 132:
  vxge_debug_init(VXGE_TRACE,
   "%s: Tx steering disabled", vdev->ndev->name);
  break;
 case 129:
  vxge_debug_init(VXGE_TRACE,
   "%s: Unsupported tx steering option",
   vdev->ndev->name);
  vxge_debug_init(VXGE_TRACE,
   "%s: Tx steering disabled", vdev->ndev->name);
  vdev->config.tx_steering_type = 0;
  break;
 case 128:
  vxge_debug_init(VXGE_TRACE,
   "%s: Unsupported tx steering option",
   vdev->ndev->name);
  vxge_debug_init(VXGE_TRACE,
   "%s: Tx steering disabled", vdev->ndev->name);
  vdev->config.tx_steering_type = 0;
  break;
 case 131:
  vxge_debug_init(VXGE_TRACE,
   "%s: Tx multiqueue steering enabled",
   vdev->ndev->name);
  break;
 case 130:
  vxge_debug_init(VXGE_TRACE,
   "%s: Tx port steering enabled",
   vdev->ndev->name);
  break;
 default:
  vxge_debug_init(VXGE_ERR,
   "%s: Unsupported tx steering type",
   vdev->ndev->name);
  vxge_debug_init(VXGE_TRACE,
   "%s: Tx steering disabled", vdev->ndev->name);
  vdev->config.tx_steering_type = 0;
 }

 if (vdev->config.addr_learn_en)
  vxge_debug_init(VXGE_TRACE,
   "%s: MAC Address learning enabled", vdev->ndev->name);

 for (i = 0; i < VXGE_HW_MAX_VIRTUAL_PATHS; i++) {
  if (!vxge_bVALn(vpath_mask, i, 1))
   continue;
  vxge_debug_ll_config(VXGE_TRACE,
   "%s: MTU size - %d", vdev->ndev->name,
   ((vdev->devh))->
    config.vp_config[i].mtu);
  vxge_debug_init(VXGE_TRACE,
   "%s: VLAN tag stripping %s", vdev->ndev->name,
   ((vdev->devh))->
    config.vp_config[i].rpa_strip_vlan_tag
   ? "Enabled" : "Disabled");
  vxge_debug_ll_config(VXGE_TRACE,
   "%s: Max frags : %d", vdev->ndev->name,
   ((vdev->devh))->
    config.vp_config[i].fifo.max_frags);
  break;
 }
}
