
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
struct mei_cl {int dummy; } ;
struct hbm_client_connect_request {int dummy; } ;
typedef int req ;


 int CLIENT_DISCONNECT_REQ_CMD ;
 int mei_hbm_cl_write (struct mei_device*,struct mei_cl*,int ,struct hbm_client_connect_request*,int) ;

int mei_hbm_cl_disconnect_req(struct mei_device *dev, struct mei_cl *cl)
{
 struct hbm_client_connect_request req;

 return mei_hbm_cl_write(dev, cl, CLIENT_DISCONNECT_REQ_CMD,
    &req, sizeof(req));
}
