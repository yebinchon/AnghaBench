
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
typedef enum dsa_tag_protocol { ____Placeholder_dsa_tag_protocol } dsa_tag_protocol ;
struct TYPE_2__ {int tag_protocol; } ;



__attribute__((used)) static enum dsa_tag_protocol mv88e6xxx_get_tag_protocol(struct dsa_switch *ds,
       int port)
{
 struct mv88e6xxx_chip *chip = ds->priv;

 return chip->info->tag_protocol;
}
