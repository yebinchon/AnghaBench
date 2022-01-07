
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct hcp_ehea_port_cb4 {int jumbo_frame; } ;
struct ehea_port {int logical_port_id; TYPE_1__* adapter; } ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int H_PORT_CB4 ;
 int H_PORT_CB4_JUMBO ;
 scalar_t__ H_SUCCESS ;
 scalar_t__ ehea_h_modify_ehea_port (int ,int ,int ,int ,struct hcp_ehea_port_cb4*) ;
 scalar_t__ ehea_h_query_ehea_port (int ,int ,int ,int ,struct hcp_ehea_port_cb4*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int ehea_get_jumboframe_status(struct ehea_port *port, int *jumbo)
{
 struct hcp_ehea_port_cb4 *cb4;
 u64 hret;
 int ret = 0;

 *jumbo = 0;


 cb4 = (void *)get_zeroed_page(GFP_KERNEL);
 if (!cb4) {
  pr_err("no mem for cb4\n");
  ret = -ENOMEM;
  goto out;
 } else {
  hret = ehea_h_query_ehea_port(port->adapter->handle,
           port->logical_port_id,
           H_PORT_CB4,
           H_PORT_CB4_JUMBO, cb4);
  if (hret == H_SUCCESS) {
   if (cb4->jumbo_frame)
    *jumbo = 1;
   else {
    cb4->jumbo_frame = 1;
    hret = ehea_h_modify_ehea_port(port->adapter->
              handle,
              port->
              logical_port_id,
              H_PORT_CB4,
              H_PORT_CB4_JUMBO,
              cb4);
    if (hret == H_SUCCESS)
     *jumbo = 1;
   }
  } else
   ret = -EINVAL;

  free_page((unsigned long)cb4);
 }
out:
 return ret;
}
