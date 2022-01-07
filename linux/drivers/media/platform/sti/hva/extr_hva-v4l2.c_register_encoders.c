
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hva_dev {scalar_t__ nb_of_encoders; TYPE_1__** encoders; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__**) ;
 scalar_t__ HVA_MAX_ENCODERS ;
 int HVA_PREFIX ;
 int dev_dbg (struct device*,char*,int ,int ,scalar_t__) ;
 int dev_info (struct device*,char*,int ,int ) ;
 TYPE_1__** hva_encoders ;
 struct device* hva_to_dev (struct hva_dev*) ;

__attribute__((used)) static void register_encoders(struct hva_dev *hva)
{
 struct device *dev = hva_to_dev(hva);
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(hva_encoders); i++) {
  if (hva->nb_of_encoders >= HVA_MAX_ENCODERS) {
   dev_dbg(dev,
    "%s failed to register %s encoder (%d maximum reached)\n",
    HVA_PREFIX, hva_encoders[i]->name,
    HVA_MAX_ENCODERS);
   return;
  }

  hva->encoders[hva->nb_of_encoders++] = hva_encoders[i];
  dev_info(dev, "%s %s encoder registered\n", HVA_PREFIX,
    hva_encoders[i]->name);
 }
}
