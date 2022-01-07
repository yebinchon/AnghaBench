
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct media_entity {int function; int flags; int name; } ;
struct cx231xx {int media_dev; TYPE_1__* input_pad; int tuner_type; struct media_entity* input_ent; } ;
struct TYPE_4__ {size_t type; } ;
struct TYPE_3__ {int flags; } ;







 TYPE_2__* INPUT (int) ;
 int MAX_CX231XX_INPUT ;
 int MEDIA_ENT_FL_CONNECTOR ;
 int MEDIA_ENT_F_CONN_COMPOSITE ;
 int MEDIA_ENT_F_CONN_RF ;
 int MEDIA_ENT_F_CONN_SVIDEO ;
 int MEDIA_PAD_FL_SOURCE ;
 int TUNER_ABSENT ;
 int * iname ;
 int media_device_register_entity (int ,struct media_entity*) ;
 int media_entity_pads_init (struct media_entity*,int,TYPE_1__*) ;
 int pr_err (char*,int) ;

void cx231xx_v4l2_create_entities(struct cx231xx *dev)
{
}
