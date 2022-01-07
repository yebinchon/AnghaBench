
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int entity; TYPE_1__* v4l2_dev; } ;
struct tvp5150 {struct media_pad* input_pad; struct media_entity* input_ent; } ;
struct media_pad {int flags; } ;
struct media_entity {int name; } ;
struct TYPE_2__ {int mdev; } ;


 int MEDIA_PAD_FL_SOURCE ;
 int TVP5150_INPUT_NUM ;
 int TVP5150_PAD_IF_INPUT ;
 int media_create_pad_link (struct media_entity*,int ,int *,int ,int ) ;
 int media_device_register_entity (int ,struct media_entity*) ;
 int media_device_unregister_entity (struct media_entity*) ;
 int media_entity_pads_init (struct media_entity*,int,struct media_pad*) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_registered(struct v4l2_subdev *sd)
{
 return 0;
}
