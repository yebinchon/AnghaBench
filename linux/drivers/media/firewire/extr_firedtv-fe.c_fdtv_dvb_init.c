
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct firedtv {int device; int isochannel; int subunit; TYPE_1__ adapter; } ;
struct dvb_frontend {struct firedtv* sec_priv; } ;


 int cmp_establish_pp_connection (struct firedtv*,int ,int ) ;
 int dev_err (int ,char*) ;
 int fdtv_start_iso (struct firedtv*) ;

__attribute__((used)) static int fdtv_dvb_init(struct dvb_frontend *fe)
{
 struct firedtv *fdtv = fe->sec_priv;
 int err;


 fdtv->isochannel = fdtv->adapter.num;

 err = cmp_establish_pp_connection(fdtv, fdtv->subunit,
       fdtv->isochannel);
 if (err) {
  dev_err(fdtv->device,
   "could not establish point to point connection\n");
  return err;
 }

 return fdtv_start_iso(fdtv);
}
