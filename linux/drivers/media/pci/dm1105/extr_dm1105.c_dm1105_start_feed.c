
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {int dummy; } ;
struct dm1105_dev {int full_ts_users; } ;


 int dm1105_enable_irqs (struct dm1105_dev*) ;
 struct dm1105_dev* feed_to_dm1105_dev (struct dvb_demux_feed*) ;

__attribute__((used)) static int dm1105_start_feed(struct dvb_demux_feed *f)
{
 struct dm1105_dev *dev = feed_to_dm1105_dev(f);

 if (dev->full_ts_users++ == 0)
  dm1105_enable_irqs(dev);

 return 0;
}
