
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct media_entity {int function; int flags; int name; } ;
struct TYPE_9__ {void* flags; } ;
struct TYPE_7__ {struct media_entity entity; } ;
struct TYPE_6__ {struct media_entity entity; } ;
struct em28xx_v4l2 {TYPE_4__ vbi_pad; TYPE_2__ vbi_dev; TYPE_4__ video_pad; TYPE_1__ vdev; } ;
struct em28xx {TYPE_3__* intf; int media_dev; TYPE_4__* input_pad; int tuner_type; struct media_entity* input_ent; scalar_t__ is_webcam; struct em28xx_v4l2* v4l2; } ;
struct TYPE_10__ {size_t type; } ;
struct TYPE_8__ {int dev; } ;




 TYPE_5__* INPUT (int) ;
 int MAX_EM28XX_INPUT ;
 int MEDIA_ENT_FL_CONNECTOR ;
 int MEDIA_ENT_F_CONN_COMPOSITE ;
 int MEDIA_ENT_F_CONN_RF ;
 int MEDIA_ENT_F_CONN_SVIDEO ;
 void* MEDIA_PAD_FL_SINK ;
 void* MEDIA_PAD_FL_SOURCE ;
 int TUNER_ABSENT ;
 int dev_err (int *,char*,...) ;
 scalar_t__ em28xx_vbi_supported (struct em28xx*) ;
 int * iname ;
 int media_device_register_entity (int ,struct media_entity*) ;
 int media_entity_pads_init (struct media_entity*,int,TYPE_4__*) ;

__attribute__((used)) static void em28xx_v4l2_create_entities(struct em28xx *dev)
{
}
