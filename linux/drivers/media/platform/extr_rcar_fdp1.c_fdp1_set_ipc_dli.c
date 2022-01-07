
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdp1_dev {int dummy; } ;
struct fdp1_ctx {struct fdp1_dev* fdp1; } ;


 int FD1_IPC_COMB_DET ;
 int FD1_IPC_COMB_DET_CONST ;
 int FD1_IPC_DLI_ANGLE ;
 int FD1_IPC_DLI_ANGLE_CONST ;
 int FD1_IPC_DLI_BLEND ;
 int FD1_IPC_DLI_BLEND_CONST ;
 int FD1_IPC_DLI_HGAIN ;
 int FD1_IPC_DLI_HGAIN_CONST ;
 int FD1_IPC_DLI_ISOPIX0 ;
 int FD1_IPC_DLI_ISOPIX0_CONST ;
 int FD1_IPC_DLI_ISOPIX1 ;
 int FD1_IPC_DLI_ISOPIX1_CONST ;
 int FD1_IPC_DLI_SPRS ;
 int FD1_IPC_DLI_SPRS_CONST ;
 int FD1_IPC_MOTDEC ;
 int FD1_IPC_MOTDEC_CONST ;
 int FD1_IPC_SMSK_THRESH ;
 int FD1_IPC_SMSK_THRESH_CONST ;
 int fdp1_write (struct fdp1_dev*,int ,int ) ;

__attribute__((used)) static void fdp1_set_ipc_dli(struct fdp1_ctx *ctx)
{
 struct fdp1_dev *fdp1 = ctx->fdp1;

 fdp1_write(fdp1, FD1_IPC_SMSK_THRESH_CONST, FD1_IPC_SMSK_THRESH);
 fdp1_write(fdp1, FD1_IPC_COMB_DET_CONST, FD1_IPC_COMB_DET);
 fdp1_write(fdp1, FD1_IPC_MOTDEC_CONST, FD1_IPC_MOTDEC);

 fdp1_write(fdp1, FD1_IPC_DLI_BLEND_CONST, FD1_IPC_DLI_BLEND);
 fdp1_write(fdp1, FD1_IPC_DLI_HGAIN_CONST, FD1_IPC_DLI_HGAIN);
 fdp1_write(fdp1, FD1_IPC_DLI_SPRS_CONST, FD1_IPC_DLI_SPRS);
 fdp1_write(fdp1, FD1_IPC_DLI_ANGLE_CONST, FD1_IPC_DLI_ANGLE);
 fdp1_write(fdp1, FD1_IPC_DLI_ISOPIX0_CONST, FD1_IPC_DLI_ISOPIX0);
 fdp1_write(fdp1, FD1_IPC_DLI_ISOPIX1_CONST, FD1_IPC_DLI_ISOPIX1);
}
