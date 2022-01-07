
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int device; } ;
struct firedtv {scalar_t__ isochannel; int subunit; } ;


 int cmp_establish_pp_connection (struct firedtv*,int ,scalar_t__) ;
 struct firedtv* dev_get_drvdata (int *) ;

__attribute__((used)) static void node_update(struct fw_unit *unit)
{
 struct firedtv *fdtv = dev_get_drvdata(&unit->device);

 if (fdtv->isochannel >= 0)
  cmp_establish_pp_connection(fdtv, fdtv->subunit,
         fdtv->isochannel);
}
