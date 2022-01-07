
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_context {int dummy; } ;


 int class_ptr ;
 int pvr2_dvb_create (struct pvr2_context*) ;
 int pvr2_sysfs_create (struct pvr2_context*,int ) ;
 int pvr2_v4l2_create (struct pvr2_context*) ;

__attribute__((used)) static void pvr_setup_attach(struct pvr2_context *pvr)
{

 pvr2_v4l2_create(pvr);







}
