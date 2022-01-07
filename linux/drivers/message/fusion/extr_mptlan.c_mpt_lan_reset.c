
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mpt_lan_priv {int mpt_dev; int pnum; } ;
struct TYPE_2__ {scalar_t__ Reserved2; scalar_t__ MsgFlags; int PortNumber; scalar_t__ Reserved; scalar_t__ ChainOffset; int Function; } ;
typedef int MPT_FRAME_HDR ;
typedef TYPE_1__ LANResetRequest_t ;


 int LanCtx ;
 int MPI_FUNCTION_LAN_RESET ;
 int * mpt_get_msg_frame (int ,int ) ;
 int mpt_put_msg_frame (int ,int ,int *) ;
 struct mpt_lan_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
mpt_lan_reset(struct net_device *dev)
{
 MPT_FRAME_HDR *mf;
 LANResetRequest_t *pResetReq;
 struct mpt_lan_priv *priv = netdev_priv(dev);

 mf = mpt_get_msg_frame(LanCtx, priv->mpt_dev);

 if (mf == ((void*)0)) {



  return -1;
 }

 pResetReq = (LANResetRequest_t *) mf;

 pResetReq->Function = MPI_FUNCTION_LAN_RESET;
 pResetReq->ChainOffset = 0;
 pResetReq->Reserved = 0;
 pResetReq->PortNumber = priv->pnum;
 pResetReq->MsgFlags = 0;
 pResetReq->Reserved2 = 0;

 mpt_put_msg_frame(LanCtx, priv->mpt_dev, mf);

 return 0;
}
