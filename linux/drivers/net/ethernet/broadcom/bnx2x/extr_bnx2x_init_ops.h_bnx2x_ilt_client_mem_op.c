
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ilt_client_info {int flags; int start; int end; int page_size; } ;
struct bnx2x_ilt {int * lines; struct ilt_client_info* clients; } ;
struct bnx2x {int dummy; } ;


 struct bnx2x_ilt* BP_ILT (struct bnx2x*) ;
 int ILT_CLIENT_SKIP_INIT ;
 int ILT_CLIENT_SKIP_MEM ;
 int bnx2x_ilt_line_mem_op (struct bnx2x*,int *,int ,int ) ;

__attribute__((used)) static int bnx2x_ilt_client_mem_op(struct bnx2x *bp, int cli_num,
       u8 memop)
{
 int i, rc;
 struct bnx2x_ilt *ilt = BP_ILT(bp);
 struct ilt_client_info *ilt_cli = &ilt->clients[cli_num];

 if (!ilt || !ilt->lines)
  return -1;

 if (ilt_cli->flags & (ILT_CLIENT_SKIP_INIT | ILT_CLIENT_SKIP_MEM))
  return 0;

 for (rc = 0, i = ilt_cli->start; i <= ilt_cli->end && !rc; i++) {
  rc = bnx2x_ilt_line_mem_op(bp, &ilt->lines[i],
        ilt_cli->page_size, memop);
 }
 return rc;
}
