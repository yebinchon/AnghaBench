
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct channel_obj {int dummy; } ;
struct TYPE_2__ {int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VPIF_DISPLAY_MAX_DEVICES ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;
 TYPE_1__ vpif_obj ;

__attribute__((used)) static int initialize_vpif(void)
{
 int free_channel_objects_index;
 int err, i, j;


 for (i = 0; i < VPIF_DISPLAY_MAX_DEVICES; i++) {
  vpif_obj.dev[i] =
      kzalloc(sizeof(struct channel_obj), GFP_KERNEL);

  if (!vpif_obj.dev[i]) {
   free_channel_objects_index = i;
   err = -ENOMEM;
   goto vpif_init_free_channel_objects;
  }
 }

 return 0;

vpif_init_free_channel_objects:
 for (j = 0; j < free_channel_objects_index; j++)
  kfree(vpif_obj.dev[j]);
 return err;
}
