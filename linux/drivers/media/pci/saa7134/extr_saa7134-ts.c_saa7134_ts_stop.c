
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dev {size_t board; scalar_t__ ts_started; } ;
struct TYPE_2__ {int ts_type; } ;




 int SAA7134_TS_PARALLEL ;
 int SAA7134_TS_SERIAL0 ;
 TYPE_1__* saa7134_boards ;
 int saa_writeb (int ,int) ;
 int ts_dbg (char*) ;

int saa7134_ts_stop(struct saa7134_dev *dev)
{
 ts_dbg("TS stop\n");

 if (!dev->ts_started)
  return 0;


 switch (saa7134_boards[dev->board].ts_type) {
 case 129:
  saa_writeb(SAA7134_TS_PARALLEL, 0x6c);
  dev->ts_started = 0;
  break;
 case 128:
  saa_writeb(SAA7134_TS_SERIAL0, 0x40);
  dev->ts_started = 0;
  break;
 }
 return 0;
}
