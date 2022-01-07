
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int need_two; int pt; struct saa7134_dev* dev; int timeout; int queue; } ;
struct TYPE_3__ {int nr_bufs; int nr_packets; } ;
struct saa7134_dev {TYPE_2__ ts_q; int pci; scalar_t__ ts_started; TYPE_1__ ts; } ;


 int INIT_LIST_HEAD (int *) ;
 int VIDEO_MAX_FRAME ;
 int saa7134_buffer_timeout ;
 int saa7134_pgtable_alloc (int ,int *) ;
 int saa7134_ts_init_hw (struct saa7134_dev*) ;
 int timer_setup (int *,int ,int ) ;
 int ts_nr_packets ;
 int tsbufs ;

int saa7134_ts_init1(struct saa7134_dev *dev)
{

 if (tsbufs < 2)
  tsbufs = 2;
 if (tsbufs > VIDEO_MAX_FRAME)
  tsbufs = VIDEO_MAX_FRAME;
 if (ts_nr_packets < 4)
  ts_nr_packets = 4;
 if (ts_nr_packets > 312)
  ts_nr_packets = 312;
 dev->ts.nr_bufs = tsbufs;
 dev->ts.nr_packets = ts_nr_packets;

 INIT_LIST_HEAD(&dev->ts_q.queue);
 timer_setup(&dev->ts_q.timeout, saa7134_buffer_timeout, 0);
 dev->ts_q.dev = dev;
 dev->ts_q.need_two = 1;
 dev->ts_started = 0;
 saa7134_pgtable_alloc(dev->pci, &dev->ts_q.pt);


 saa7134_ts_init_hw(dev);

 return 0;
}
