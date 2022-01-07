
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; int tv_sec; } ;
struct ravb_private {struct net_device* ndev; } ;
struct net_device {int dummy; } ;
typedef int s64 ;


 int GCCR_TCR_CAPTURE ;
 int GCT0 ;
 int GCT1 ;
 int GCT2 ;
 int ravb_ptp_tcr_request (struct ravb_private*,int ) ;
 int ravb_read (struct net_device*,int ) ;

__attribute__((used)) static int ravb_ptp_time_read(struct ravb_private *priv, struct timespec64 *ts)
{
 struct net_device *ndev = priv->ndev;
 int error;

 error = ravb_ptp_tcr_request(priv, GCCR_TCR_CAPTURE);
 if (error)
  return error;

 ts->tv_nsec = ravb_read(ndev, GCT0);
 ts->tv_sec = ravb_read(ndev, GCT1) |
  ((s64)ravb_read(ndev, GCT2) << 32);

 return 0;
}
