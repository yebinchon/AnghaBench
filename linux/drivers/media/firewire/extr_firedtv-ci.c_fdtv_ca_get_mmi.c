
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int dummy; } ;
struct ca_msg {int length; int msg; } ;


 int avc_ca_get_mmi (struct firedtv*,int ,int *) ;

__attribute__((used)) static int fdtv_ca_get_mmi(struct firedtv *fdtv, void *arg)
{
 struct ca_msg *reply = arg;

 return avc_ca_get_mmi(fdtv, reply->msg, &reply->length);
}
