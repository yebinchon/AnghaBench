
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct request_context {int dummy; } ;
struct hermes_response {int dummy; } ;
struct hermes {struct ezusb_priv* priv; } ;
struct ezusb_priv {int dev; } ;
typedef int data ;
typedef int __le16 ;


 int ENOMEM ;
 int EZUSB_FRAME_CONTROL ;
 int EZUSB_RID_ACK ;
 int EZUSB_RID_DOCMD ;
 int cpu_to_le16 (int ) ;
 int ezusb_access_ltv (struct ezusb_priv*,struct request_context*,int,int **,int ,int *,int ,int *) ;
 struct request_context* ezusb_alloc_ctx (struct ezusb_priv*,int ,int ) ;
 int netdev_dbg (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int ezusb_doicmd_wait(struct hermes *hw, u16 cmd, u16 parm0, u16 parm1,
        u16 parm2, struct hermes_response *resp)
{
 struct ezusb_priv *upriv = hw->priv;
 struct request_context *ctx;

 __le16 data[4] = {
  cpu_to_le16(cmd),
  cpu_to_le16(parm0),
  cpu_to_le16(parm1),
  cpu_to_le16(parm2),
 };
 netdev_dbg(upriv->dev,
     "0x%04X, parm0 0x%04X, parm1 0x%04X, parm2 0x%04X\n", cmd,
     parm0, parm1, parm2);
 ctx = ezusb_alloc_ctx(upriv, EZUSB_RID_DOCMD, EZUSB_RID_ACK);
 if (!ctx)
  return -ENOMEM;

 return ezusb_access_ltv(upriv, ctx, sizeof(data), &data,
    EZUSB_FRAME_CONTROL, ((void*)0), 0, ((void*)0));
}
