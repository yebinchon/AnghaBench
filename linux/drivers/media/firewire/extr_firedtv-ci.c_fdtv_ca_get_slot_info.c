
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv_tuner_status {int dummy; } ;
struct firedtv {int dummy; } ;
struct ca_slot_info {scalar_t__ num; int flags; int type; } ;


 int CA_CI ;
 int EACCES ;
 int avc_tuner_status (struct firedtv*,struct firedtv_tuner_status*) ;
 int fdtv_get_ca_flags (struct firedtv_tuner_status*) ;

__attribute__((used)) static int fdtv_ca_get_slot_info(struct firedtv *fdtv, void *arg)
{
 struct firedtv_tuner_status stat;
 struct ca_slot_info *slot = arg;
 int err;

 err = avc_tuner_status(fdtv, &stat);
 if (err)
  return err;

 if (slot->num != 0)
  return -EACCES;

 slot->type = CA_CI;
 slot->flags = fdtv_get_ca_flags(&stat);
 return 0;
}
