
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_ddcb_cmd {int dummy; } ;
struct ddcb_requ {struct genwqe_ddcb_cmd cmd; } ;


 int GFP_KERNEL ;
 struct ddcb_requ* kzalloc (int,int ) ;

struct genwqe_ddcb_cmd *ddcb_requ_alloc(void)
{
 struct ddcb_requ *req;

 req = kzalloc(sizeof(*req), GFP_KERNEL);
 if (!req)
  return ((void*)0);

 return &req->cmd;
}
