
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct ravb_private {struct net_device* ndev; } ;
struct net_device {int dummy; } ;


 int EBUSY ;
 int GCCR ;
 int GCCR_LTO ;
 int GCCR_TCR_RESET ;
 int GTO0 ;
 int GTO1 ;
 int GTO2 ;
 int ravb_ptp_tcr_request (struct ravb_private*,int ) ;
 int ravb_read (struct net_device*,int ) ;
 int ravb_write (struct net_device*,int,int ) ;

__attribute__((used)) static int ravb_ptp_time_write(struct ravb_private *priv,
    const struct timespec64 *ts)
{
 struct net_device *ndev = priv->ndev;
 int error;
 u32 gccr;

 error = ravb_ptp_tcr_request(priv, GCCR_TCR_RESET);
 if (error)
  return error;

 gccr = ravb_read(ndev, GCCR);
 if (gccr & GCCR_LTO)
  return -EBUSY;
 ravb_write(ndev, ts->tv_nsec, GTO0);
 ravb_write(ndev, ts->tv_sec, GTO1);
 ravb_write(ndev, (ts->tv_sec >> 32) & 0xffff, GTO2);
 ravb_write(ndev, gccr | GCCR_LTO, GCCR);

 return 0;
}
