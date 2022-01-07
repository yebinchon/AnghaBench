
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dev; } ;


 int VPIF_CAPTURE_MAX_DEVICES ;
 int kfree (int ) ;
 TYPE_1__ vpif_obj ;

__attribute__((used)) static inline void free_vpif_objs(void)
{
 int i;

 for (i = 0; i < VPIF_CAPTURE_MAX_DEVICES; i++)
  kfree(vpif_obj.dev[i]);
}
