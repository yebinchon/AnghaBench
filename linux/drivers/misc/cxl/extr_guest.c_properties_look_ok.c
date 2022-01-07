
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int status; } ;


 int EINVAL ;
 int pr_err (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int properties_look_ok(struct cxl *adapter)
{



 if (strlen(adapter->guest->status) &&
     strcmp(adapter->guest->status, "okay")) {
  pr_err("ABORTING:Bad operational status of the device\n");
  return -EINVAL;
 }

 return 0;
}
