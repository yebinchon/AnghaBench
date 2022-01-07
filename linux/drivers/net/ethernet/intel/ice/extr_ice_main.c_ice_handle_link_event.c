
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_rq_event_info {scalar_t__ msg_buf; } ;
struct ice_port_info {int dummy; } ;
struct TYPE_4__ {struct ice_port_info* port_info; } ;
struct ice_pf {TYPE_1__* pdev; TYPE_2__ hw; } ;
struct ice_aqc_get_link_status_data {int link_info; int link_speed; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ICE_AQ_LINK_UP ;
 int dev_dbg (int *,char*,int) ;
 int ice_link_event (struct ice_pf*,struct ice_port_info*,int,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int
ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
{
 struct ice_aqc_get_link_status_data *link_data;
 struct ice_port_info *port_info;
 int status;

 link_data = (struct ice_aqc_get_link_status_data *)event->msg_buf;
 port_info = pf->hw.port_info;
 if (!port_info)
  return -EINVAL;

 status = ice_link_event(pf, port_info,
    !!(link_data->link_info & ICE_AQ_LINK_UP),
    le16_to_cpu(link_data->link_speed));
 if (status)
  dev_dbg(&pf->pdev->dev,
   "Could not process link event, error %d\n", status);

 return status;
}
