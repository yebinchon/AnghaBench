
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
struct mei_cl {int dummy; } ;
struct hbm_flow_control {int dummy; } ;
typedef int req ;


 int MEI_FLOW_CONTROL_CMD ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*) ;
 int mei_hbm_cl_write (struct mei_device*,struct mei_cl*,int ,struct hbm_flow_control*,int) ;

int mei_hbm_cl_flow_control_req(struct mei_device *dev, struct mei_cl *cl)
{
 struct hbm_flow_control req;

 cl_dbg(dev, cl, "sending flow control\n");
 return mei_hbm_cl_write(dev, cl, MEI_FLOW_CONTROL_CMD,
    &req, sizeof(req));
}
