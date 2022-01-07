
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u32 ;
struct lan9303 {int dev; } ;
struct dsa_switch {struct lan9303* priv; } ;
struct TYPE_3__ {int offset; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int dev_warn (int ,char*,int,int ) ;
 TYPE_1__* lan9303_mib ;
 int lan9303_read_switch_port (struct lan9303*,int,int ,int *) ;

__attribute__((used)) static void lan9303_get_ethtool_stats(struct dsa_switch *ds, int port,
          uint64_t *data)
{
 struct lan9303 *chip = ds->priv;
 unsigned int u;

 for (u = 0; u < ARRAY_SIZE(lan9303_mib); u++) {
  u32 reg;
  int ret;

  ret = lan9303_read_switch_port(
   chip, port, lan9303_mib[u].offset, &reg);

  if (ret)
   dev_warn(chip->dev, "Reading status port %d reg %u failed\n",
     port, lan9303_mib[u].offset);
  data[u] = reg;
 }
}
