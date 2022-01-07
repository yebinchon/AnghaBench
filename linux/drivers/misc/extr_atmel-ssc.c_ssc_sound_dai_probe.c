
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssc_device {TYPE_2__* pdev; } ;
struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int ENOTSUPP ;
 scalar_t__ of_property_read_bool (int ,char*) ;

__attribute__((used)) static inline int ssc_sound_dai_probe(struct ssc_device *ssc)
{
 if (of_property_read_bool(ssc->pdev->dev.of_node, "#sound-dai-cells"))
  return -ENOTSUPP;

 return 0;
}
