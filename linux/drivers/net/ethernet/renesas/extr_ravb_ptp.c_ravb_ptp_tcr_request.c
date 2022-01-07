
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ravb_private {struct net_device* ndev; } ;
struct net_device {int dummy; } ;


 int GCCR ;
 int GCCR_TCR ;
 int GCCR_TCR_NOREQ ;
 int ravb_modify (struct net_device*,int ,int ,int ) ;
 int ravb_wait (struct net_device*,int ,int ,int ) ;

__attribute__((used)) static int ravb_ptp_tcr_request(struct ravb_private *priv, u32 request)
{
 struct net_device *ndev = priv->ndev;
 int error;

 error = ravb_wait(ndev, GCCR, GCCR_TCR, GCCR_TCR_NOREQ);
 if (error)
  return error;

 ravb_modify(ndev, GCCR, request, request);
 return ravb_wait(ndev, GCCR, GCCR_TCR, GCCR_TCR_NOREQ);
}
