
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {int demux; } ;


 int altera_pid_feed_control (int ,int,struct dvb_demux_feed*,int ) ;

__attribute__((used)) static int altera_ci_stop_feed(struct dvb_demux_feed *feed, int num)
{
 altera_pid_feed_control(feed->demux, num, feed, 0);

 return 0;
}
