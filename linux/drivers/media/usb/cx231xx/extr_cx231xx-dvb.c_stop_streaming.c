
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct cx231xx* priv; } ;
struct cx231xx_dvb {TYPE_1__ adapter; } ;
struct cx231xx {scalar_t__ USE_ISO; } ;


 int CX231XX_SUSPEND ;
 int cx231xx_set_mode (struct cx231xx*,int ) ;
 int cx231xx_uninit_bulk (struct cx231xx*) ;
 int cx231xx_uninit_isoc (struct cx231xx*) ;

__attribute__((used)) static int stop_streaming(struct cx231xx_dvb *dvb)
{
 struct cx231xx *dev = dvb->adapter.priv;

 if (dev->USE_ISO)
  cx231xx_uninit_isoc(dev);
 else
  cx231xx_uninit_bulk(dev);

 cx231xx_set_mode(dev, CX231XX_SUSPEND);

 return 0;
}
