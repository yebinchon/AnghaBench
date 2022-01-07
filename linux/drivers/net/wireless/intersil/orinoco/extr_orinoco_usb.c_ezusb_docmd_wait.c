
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
 int netdev_dbg (int ,char*,int ,int ) ;

__attribute__((used)) static int ezusb_docmd_wait(struct hermes *hw, u16 cmd, u16 parm0,
       struct hermes_response *resp)
{
 struct ezusb_priv *upriv = hw->priv;
 struct request_context *ctx;

 __le16 data[4] = {
  cpu_to_le16(cmd),
  cpu_to_le16(parm0),
  0,
  0,
 };
 netdev_dbg(upriv->dev, "0x%04X, parm0 0x%04X\n", cmd, parm0);
 ctx = ezusb_alloc_ctx(upriv, EZUSB_RID_DOCMD, EZUSB_RID_ACK);
 if (!ctx)
  return -ENOMEM;

 return ezusb_access_ltv(upriv, ctx, sizeof(data), &data,
    EZUSB_FRAME_CONTROL, ((void*)0), 0, ((void*)0));
}
