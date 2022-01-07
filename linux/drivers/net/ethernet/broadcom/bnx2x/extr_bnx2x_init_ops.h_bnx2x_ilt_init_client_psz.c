
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ilt_client_info {int flags; int page_size; } ;
struct bnx2x_ilt {struct ilt_client_info* clients; } ;
struct bnx2x {int dummy; } ;


 struct bnx2x_ilt* BP_ILT (struct bnx2x*) ;
 int ILOG2 (int) ;
 int ILT_CLIENT_SKIP_INIT ;



 int REG_WR (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_ilt_init_client_psz(struct bnx2x *bp, int cli_num,
          u32 psz_reg, u8 initop)
{
 struct bnx2x_ilt *ilt = BP_ILT(bp);
 struct ilt_client_info *ilt_cli = &ilt->clients[cli_num];

 if (ilt_cli->flags & ILT_CLIENT_SKIP_INIT)
  return;

 switch (initop) {
 case 129:

 case 128:
  REG_WR(bp, psz_reg, ILOG2(ilt_cli->page_size >> 12));
  break;
 case 130:
  break;
 }
}
