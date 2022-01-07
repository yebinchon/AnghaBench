
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_1__* info; int ds; } ;
struct TYPE_2__ {scalar_t__ tag_protocol; } ;


 scalar_t__ DSA_TAG_PROTO_DSA ;
 scalar_t__ DSA_TAG_PROTO_EDSA ;
 int EINVAL ;
 scalar_t__ dsa_is_dsa_port (int ,int) ;
 scalar_t__ dsa_is_user_port (int ,int) ;
 int mv88e6xxx_set_port_mode_dsa (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_set_port_mode_edsa (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_set_port_mode_normal (struct mv88e6xxx_chip*,int) ;

__attribute__((used)) static int mv88e6xxx_setup_port_mode(struct mv88e6xxx_chip *chip, int port)
{
 if (dsa_is_dsa_port(chip->ds, port))
  return mv88e6xxx_set_port_mode_dsa(chip, port);

 if (dsa_is_user_port(chip->ds, port))
  return mv88e6xxx_set_port_mode_normal(chip, port);


 if (chip->info->tag_protocol == DSA_TAG_PROTO_DSA)
  return mv88e6xxx_set_port_mode_dsa(chip, port);

 if (chip->info->tag_protocol == DSA_TAG_PROTO_EDSA)
  return mv88e6xxx_set_port_mode_edsa(chip, port);

 return -EINVAL;
}
