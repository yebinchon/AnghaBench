
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dummy; } ;
struct ready_msg_rsp {int dummy; } ;
struct msg_req {int dummy; } ;



__attribute__((used)) static int rvu_mbox_handler_ready(struct rvu *rvu, struct msg_req *req,
      struct ready_msg_rsp *rsp)
{
 return 0;
}
