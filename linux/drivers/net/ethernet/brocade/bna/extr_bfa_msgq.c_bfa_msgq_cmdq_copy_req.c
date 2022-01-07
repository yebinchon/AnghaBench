
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_msgq_i2h_cmdq_copy_req {int len; int offset; } ;
struct bfi_mbmsg {int dummy; } ;
struct bfa_msgq_cmdq {void* bytes_to_copy; void* offset; scalar_t__ token; } ;


 int bfa_msgq_cmdq_copy_rsp (struct bfa_msgq_cmdq*) ;
 void* ntohs (int ) ;

__attribute__((used)) static void
bfa_msgq_cmdq_copy_req(struct bfa_msgq_cmdq *cmdq, struct bfi_mbmsg *mb)
{
 struct bfi_msgq_i2h_cmdq_copy_req *req =
  (struct bfi_msgq_i2h_cmdq_copy_req *)mb;

 cmdq->token = 0;
 cmdq->offset = ntohs(req->offset);
 cmdq->bytes_to_copy = ntohs(req->len);
 bfa_msgq_cmdq_copy_rsp(cmdq);
}
