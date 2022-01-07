
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {int dummy; } ;


 int altera_ci_stop_feed (struct dvb_demux_feed*,int) ;

__attribute__((used)) static int altera_ci_stop_feed_1(struct dvb_demux_feed *feed)
{
 return altera_ci_stop_feed(feed, 1);
}
