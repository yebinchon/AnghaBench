
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int isochannel; int subunit; } ;
struct dvb_frontend {struct firedtv* sec_priv; } ;


 int cmp_break_pp_connection (struct firedtv*,int ,int) ;
 int fdtv_stop_iso (struct firedtv*) ;

__attribute__((used)) static int fdtv_sleep(struct dvb_frontend *fe)
{
 struct firedtv *fdtv = fe->sec_priv;

 fdtv_stop_iso(fdtv);
 cmp_break_pp_connection(fdtv, fdtv->subunit, fdtv->isochannel);
 fdtv->isochannel = -1;
 return 0;
}
