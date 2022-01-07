
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pluto {scalar_t__ users; scalar_t__ full_ts_users; } ;
struct dvb_demux_feed {int pid; scalar_t__ index; } ;


 scalar_t__ NHWFILTERS ;
 int PID0_AFIL ;
 int PID0_NOFIL ;
 int PIDn_ENP ;
 int PIDn_PID ;
 int REG_PIDn (scalar_t__) ;
 struct pluto* feed_to_pluto (struct dvb_demux_feed*) ;
 int pluto_rw (struct pluto*,int ,int,int) ;

__attribute__((used)) static int pluto_stop_feed(struct dvb_demux_feed *f)
{
 struct pluto *pluto = feed_to_pluto(f);


 if (--pluto->users == 0)
  pluto_rw(pluto, REG_PIDn(0), PID0_AFIL, PID0_AFIL);

 if ((f->pid < 0x2000) && (f->index < NHWFILTERS))
  pluto_rw(pluto, REG_PIDn(f->index), PIDn_ENP | PIDn_PID, 0x1fff);
 else if (--pluto->full_ts_users == 0)
  pluto_rw(pluto, REG_PIDn(0), PID0_NOFIL, 0);

 return 0;
}
