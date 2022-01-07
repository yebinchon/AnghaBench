
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


struct fw_port_app_priority {int idx; int protocolid; int sel_field; int user_prio_map; } ;
struct TYPE_12__ {int max_pfc_tcs; int pfcen; } ;
struct TYPE_11__ {int strict_priorate; } ;
struct TYPE_10__ {int tsa; int pgrate; int num_tcs_supported; } ;
struct TYPE_9__ {int type; int pgid; } ;
struct TYPE_7__ {int all_syncd_pkd; int dcb_version_to_app_state; } ;
union fw_port_dcb {struct fw_port_app_priority app_priority; TYPE_6__ pfc; TYPE_5__ priorate; TYPE_4__ pgrate; TYPE_3__ pgid; TYPE_1__ control; } ;
struct port_dcb_info {int dcb_version; scalar_t__ state; int msgs; struct app_priority* app_priority; int pfc_num_tcs_supported; int pfcen; int priorate; int tsa; int pgrate; int pg_num_tcs_supported; int pgid; } ;
struct port_info {struct port_dcb_info dcb; } ;
struct net_device {int name; } ;
struct TYPE_8__ {union fw_port_dcb dcb; } ;
struct fw_port_cmd {TYPE_2__ u; int op_to_portid; } ;
struct dcb_app {int selector; int priority; int protocol; } ;
struct app_priority {int protocolid; int sel_field; int user_prio_map; } ;
struct adapter {size_t* chan_map; int pdev_dev; struct net_device** port; } ;
typedef enum cxgb4_dcb_state_input { ____Placeholder_cxgb4_dcb_state_input } cxgb4_dcb_state_input ;


 int CXGB4_DCB_FW_APP_ID ;
 int CXGB4_DCB_FW_PFC ;
 int CXGB4_DCB_FW_PGID ;
 int CXGB4_DCB_FW_PGRATE ;
 int CXGB4_DCB_FW_PRIORATE ;
 int CXGB4_DCB_INPUT_FW_ALLSYNCED ;
 int CXGB4_DCB_INPUT_FW_INCOMPLETE ;
 scalar_t__ CXGB4_DCB_STATE_HOST ;
 scalar_t__ CXGB4_DCB_STATE_START ;
 int FW_PORT_CMD_ALL_SYNCD_F ;
 int FW_PORT_CMD_DCB_VERSION_G (int ) ;
 int FW_PORT_CMD_PORTID_G (int ) ;

 int FW_PORT_DCB_TYPE_CONTROL ;




 int FW_PORT_DCB_VER_CEE1D01 ;
 int FW_PORT_DCB_VER_IEEE ;
 int FW_PORT_DCB_VER_UNKNOWN ;
 int IEEE_FAUX_SYNC (struct net_device*,struct port_dcb_info*) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int cxgb4_dcb_state_fsm (struct net_device*,int) ;
 int dcb_ieee_setapp (struct net_device*,struct dcb_app*) ;
 int dcb_setapp (struct net_device*,struct dcb_app*) ;
 int * dcb_ver_array ;
 int dev_err (int ,char*,int,...) ;
 int dev_warn (int ,char*,int ,int ) ;
 int ffs (int ) ;
 int memcpy (int ,int *,int) ;
 struct port_info* netdev_priv (struct net_device*) ;

void cxgb4_dcb_handle_fw_update(struct adapter *adap,
    const struct fw_port_cmd *pcmd)
{
 const union fw_port_dcb *fwdcb = &pcmd->u.dcb;
 int port = FW_PORT_CMD_PORTID_G(be32_to_cpu(pcmd->op_to_portid));
 struct net_device *dev = adap->port[adap->chan_map[port]];
 struct port_info *pi = netdev_priv(dev);
 struct port_dcb_info *dcb = &pi->dcb;
 int dcb_type = pcmd->u.dcb.pgid.type;
 int dcb_running_version;




 if (dcb_type == FW_PORT_DCB_TYPE_CONTROL) {
  enum cxgb4_dcb_state_input input =
   ((pcmd->u.dcb.control.all_syncd_pkd &
     FW_PORT_CMD_ALL_SYNCD_F)
    ? CXGB4_DCB_INPUT_FW_ALLSYNCED
    : CXGB4_DCB_INPUT_FW_INCOMPLETE);

  if (dcb->dcb_version != FW_PORT_DCB_VER_UNKNOWN) {
   dcb_running_version = FW_PORT_CMD_DCB_VERSION_G(
    be16_to_cpu(
    pcmd->u.dcb.control.dcb_version_to_app_state));
   if (dcb_running_version == FW_PORT_DCB_VER_CEE1D01 ||
       dcb_running_version == FW_PORT_DCB_VER_IEEE) {
    dcb->dcb_version = dcb_running_version;
    dev_warn(adap->pdev_dev, "Interface %s is running %s\n",
      dev->name,
      dcb_ver_array[dcb->dcb_version]);
   } else {
    dev_warn(adap->pdev_dev,
      "Something screwed up, requested firmware for %s, but firmware returned %s instead\n",
      dcb_ver_array[dcb->dcb_version],
      dcb_ver_array[dcb_running_version]);
    dcb->dcb_version = FW_PORT_DCB_VER_UNKNOWN;
   }
  }

  cxgb4_dcb_state_fsm(dev, input);
  return;
 }






 if (dcb->state == CXGB4_DCB_STATE_START ||
     dcb->state == CXGB4_DCB_STATE_HOST) {
  dev_err(adap->pdev_dev, "Receiving Firmware DCB messages in State %d\n",
   dcb->state);
  return;
 }



 switch (dcb_type) {
 case 130:
  dcb->pgid = be32_to_cpu(fwdcb->pgid.pgid);
  dcb->msgs |= CXGB4_DCB_FW_PGID;
  break;

 case 129:
  dcb->pg_num_tcs_supported = fwdcb->pgrate.num_tcs_supported;
  memcpy(dcb->pgrate, &fwdcb->pgrate.pgrate,
         sizeof(dcb->pgrate));
  memcpy(dcb->tsa, &fwdcb->pgrate.tsa,
         sizeof(dcb->tsa));
  dcb->msgs |= CXGB4_DCB_FW_PGRATE;
  if (dcb->msgs & CXGB4_DCB_FW_PGID)
   IEEE_FAUX_SYNC(dev, dcb);
  break;

 case 128:
  memcpy(dcb->priorate, &fwdcb->priorate.strict_priorate,
         sizeof(dcb->priorate));
  dcb->msgs |= CXGB4_DCB_FW_PRIORATE;
  break;

 case 131:
  dcb->pfcen = fwdcb->pfc.pfcen;
  dcb->pfc_num_tcs_supported = fwdcb->pfc.max_pfc_tcs;
  dcb->msgs |= CXGB4_DCB_FW_PFC;
  IEEE_FAUX_SYNC(dev, dcb);
  break;

 case 132: {
  const struct fw_port_app_priority *fwap = &fwdcb->app_priority;
  int idx = fwap->idx;
  struct app_priority *ap = &dcb->app_priority[idx];

  struct dcb_app app = {
   .protocol = be16_to_cpu(fwap->protocolid),
  };
  int err;




  if (dcb->dcb_version == FW_PORT_DCB_VER_IEEE) {
   app.selector = (fwap->sel_field + 1);
   app.priority = ffs(fwap->user_prio_map) - 1;
   err = dcb_ieee_setapp(dev, &app);
   IEEE_FAUX_SYNC(dev, dcb);
  } else {

   app.selector = !!(fwap->sel_field);
   app.priority = fwap->user_prio_map;
   err = dcb_setapp(dev, &app);
  }

  if (err)
   dev_err(adap->pdev_dev,
    "Failed DCB Set Application Priority: sel=%d, prot=%d, prio=%d, err=%d\n",
    app.selector, app.protocol, app.priority, -err);

  ap->user_prio_map = fwap->user_prio_map;
  ap->sel_field = fwap->sel_field;
  ap->protocolid = be16_to_cpu(fwap->protocolid);
  dcb->msgs |= CXGB4_DCB_FW_APP_ID;
  break;
 }

 default:
  dev_err(adap->pdev_dev, "Unknown DCB update type received %x\n",
   dcb_type);
  break;
 }
}
