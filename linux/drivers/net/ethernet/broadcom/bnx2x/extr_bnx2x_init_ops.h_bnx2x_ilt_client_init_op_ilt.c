
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ilt_client_info {int flags; int start; int end; } ;
struct bnx2x_ilt {int start_line; } ;
struct bnx2x {int dummy; } ;


 int ILT_CLIENT_SKIP_INIT ;
 int bnx2x_ilt_boundry_init_op (struct bnx2x*,struct ilt_client_info*,int ,int ) ;
 int bnx2x_ilt_line_init_op (struct bnx2x*,struct bnx2x_ilt*,int,int ) ;

__attribute__((used)) static void bnx2x_ilt_client_init_op_ilt(struct bnx2x *bp,
      struct bnx2x_ilt *ilt,
      struct ilt_client_info *ilt_cli,
      u8 initop)
{
 int i;

 if (ilt_cli->flags & ILT_CLIENT_SKIP_INIT)
  return;

 for (i = ilt_cli->start; i <= ilt_cli->end; i++)
  bnx2x_ilt_line_init_op(bp, ilt, i, initop);


 bnx2x_ilt_boundry_init_op(bp, ilt_cli, ilt->start_line, initop);
}
