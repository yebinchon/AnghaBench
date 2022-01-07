
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int dummy; } ;
struct dtv_frontend_properties {int dummy; } ;
struct dvb_frontend {struct firedtv* sec_priv; struct dtv_frontend_properties dtv_property_cache; } ;


 int avc_tuner_dsd (struct firedtv*,struct dtv_frontend_properties*) ;

__attribute__((used)) static int fdtv_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct firedtv *fdtv = fe->sec_priv;

 return avc_tuner_dsd(fdtv, p);
}
