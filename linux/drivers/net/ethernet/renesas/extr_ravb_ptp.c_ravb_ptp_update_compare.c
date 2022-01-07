
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int current_addend; } ;
struct ravb_private {TYPE_1__ ptp; struct net_device* ndev; } ;
struct net_device {int dummy; } ;


 int EBUSY ;
 int GCCR ;
 scalar_t__ GCCR_LPTC ;
 int GPTC ;
 scalar_t__ ravb_read (struct net_device*,int ) ;
 int ravb_write (struct net_device*,scalar_t__,int ) ;

__attribute__((used)) static int ravb_ptp_update_compare(struct ravb_private *priv, u32 ns)
{
 struct net_device *ndev = priv->ndev;





 u32 gti_ns_plus_1 = (priv->ptp.current_addend >> 20) + 1;
 u32 gccr;

 if (ns < gti_ns_plus_1)
  ns = gti_ns_plus_1;
 else if (ns > 0 - gti_ns_plus_1)
  ns = 0 - gti_ns_plus_1;

 gccr = ravb_read(ndev, GCCR);
 if (gccr & GCCR_LPTC)
  return -EBUSY;
 ravb_write(ndev, ns, GPTC);
 ravb_write(ndev, gccr | GCCR_LPTC, GCCR);

 return 0;
}
