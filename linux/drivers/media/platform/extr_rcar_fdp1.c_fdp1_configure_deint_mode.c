
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fdp1_job {int dummy; } ;
struct fdp1_dev {int dummy; } ;
struct fdp1_ctx {int deint_mode; int sequence; int aborting; struct fdp1_dev* fdp1; } ;


 int FD1_CTL_CHACT ;
 int FD1_CTL_CHACT_RD0 ;
 int FD1_CTL_CHACT_RD1 ;
 int FD1_CTL_CHACT_RD2 ;
 int FD1_CTL_CHACT_SMR ;
 int FD1_CTL_CHACT_SMW ;
 int FD1_CTL_CHACT_WR ;
 int FD1_CTL_OPMODE ;
 int FD1_CTL_OPMODE_PRG ;
 int FD1_CTL_OPMODE_VIMD_NOINTERRUPT ;
 int FD1_IPC_MODE ;
 int FD1_IPC_MODE_DIM_ADAPT2D3D ;
 int FD1_IPC_MODE_DIM_FIXED2D ;
 int FD1_IPC_MODE_DIM_FIXED3D ;
 int FD1_IPC_MODE_DIM_NEXTFIELD ;
 int FD1_IPC_MODE_DIM_PREVFIELD ;
 int FD1_IPC_MODE_DLI ;






 int dprintk (struct fdp1_dev*,char*) ;
 int fdp1_write (struct fdp1_dev*,int,int ) ;

__attribute__((used)) static void fdp1_configure_deint_mode(struct fdp1_ctx *ctx,
          struct fdp1_job *job)
{
 struct fdp1_dev *fdp1 = ctx->fdp1;
 u32 opmode = FD1_CTL_OPMODE_VIMD_NOINTERRUPT;
 u32 ipcmode = FD1_IPC_MODE_DLI;
 u32 channels = FD1_CTL_CHACT_WR | FD1_CTL_CHACT_RD1;


 switch (ctx->deint_mode) {
 default:
 case 128:
  dprintk(fdp1, "Progressive Mode\n");
  opmode |= FD1_CTL_OPMODE_PRG;
  ipcmode |= FD1_IPC_MODE_DIM_FIXED2D;
  break;
 case 133:
  dprintk(fdp1, "Adapt2D3D Mode\n");
  if (ctx->sequence == 0 || ctx->aborting)
   ipcmode |= FD1_IPC_MODE_DIM_FIXED2D;
  else
   ipcmode |= FD1_IPC_MODE_DIM_ADAPT2D3D;

  if (ctx->sequence > 1) {
   channels |= FD1_CTL_CHACT_SMW;
   channels |= FD1_CTL_CHACT_RD0 | FD1_CTL_CHACT_RD2;
  }

  if (ctx->sequence > 2)
   channels |= FD1_CTL_CHACT_SMR;

  break;
 case 131:
  dprintk(fdp1, "Fixed 3D Mode\n");
  ipcmode |= FD1_IPC_MODE_DIM_FIXED3D;

  if (!(ctx->sequence == 0 || ctx->aborting))
   channels |= FD1_CTL_CHACT_RD0 | FD1_CTL_CHACT_RD2;
  break;
 case 132:
  dprintk(fdp1, "Fixed 2D Mode\n");
  ipcmode |= FD1_IPC_MODE_DIM_FIXED2D;

  break;
 case 129:
  dprintk(fdp1, "Previous Field Mode\n");
  ipcmode |= FD1_IPC_MODE_DIM_PREVFIELD;
  channels |= FD1_CTL_CHACT_RD0;
  break;
 case 130:
  dprintk(fdp1, "Next Field Mode\n");
  ipcmode |= FD1_IPC_MODE_DIM_NEXTFIELD;
  channels |= FD1_CTL_CHACT_RD2;
  break;
 }

 fdp1_write(fdp1, channels, FD1_CTL_CHACT);
 fdp1_write(fdp1, opmode, FD1_CTL_OPMODE);
 fdp1_write(fdp1, ipcmode, FD1_IPC_MODE);
}
