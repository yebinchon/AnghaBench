
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct delta_dev {scalar_t__ nb_of_decoders; int dev; TYPE_1__** decoders; } ;
struct TYPE_3__ {int name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__**) ;
 scalar_t__ DELTA_MAX_DECODERS ;
 int DELTA_PREFIX ;
 TYPE_1__** delta_decoders ;
 int dev_dbg (int ,char*,int ,int ,scalar_t__) ;
 int dev_info (int ,char*,int ,int ) ;

__attribute__((used)) static void register_decoders(struct delta_dev *delta)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(delta_decoders); i++) {
  if (delta->nb_of_decoders >= DELTA_MAX_DECODERS) {
   dev_dbg(delta->dev,
    "%s failed to register %s decoder (%d maximum reached)\n",
    DELTA_PREFIX, delta_decoders[i]->name,
    DELTA_MAX_DECODERS);
   return;
  }

  delta->decoders[delta->nb_of_decoders++] = delta_decoders[i];
  dev_info(delta->dev, "%s %s decoder registered\n",
    DELTA_PREFIX, delta_decoders[i]->name);
 }
}
