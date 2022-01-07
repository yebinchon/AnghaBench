
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int v4l2_dev; } ;


 int core ;
 int log_status ;
 int v4l2_device_call_all (int *,int ,int ,int ) ;
 TYPE_1__ vpif_obj ;

__attribute__((used)) static int vpif_log_status(struct file *filep, void *priv)
{

 v4l2_device_call_all(&vpif_obj.v4l2_dev, 0, core, log_status);

 return 0;
}
