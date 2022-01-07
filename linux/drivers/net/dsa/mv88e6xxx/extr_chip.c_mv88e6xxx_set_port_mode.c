
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
typedef enum mv88e6xxx_frame_mode { ____Placeholder_mv88e6xxx_frame_mode } mv88e6xxx_frame_mode ;
typedef enum mv88e6xxx_egress_mode { ____Placeholder_mv88e6xxx_egress_mode } mv88e6xxx_egress_mode ;
struct TYPE_4__ {int (* port_set_frame_mode ) (struct mv88e6xxx_chip*,int,int) ;int (* port_set_ether_type ) (struct mv88e6xxx_chip*,int,int ) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int EOPNOTSUPP ;
 int mv88e6xxx_port_set_egress_mode (struct mv88e6xxx_chip*,int,int) ;
 int stub1 (struct mv88e6xxx_chip*,int,int) ;
 int stub2 (struct mv88e6xxx_chip*,int,int ) ;

__attribute__((used)) static int mv88e6xxx_set_port_mode(struct mv88e6xxx_chip *chip, int port,
       enum mv88e6xxx_frame_mode frame,
       enum mv88e6xxx_egress_mode egress, u16 etype)
{
 int err;

 if (!chip->info->ops->port_set_frame_mode)
  return -EOPNOTSUPP;

 err = mv88e6xxx_port_set_egress_mode(chip, port, egress);
 if (err)
  return err;

 err = chip->info->ops->port_set_frame_mode(chip, port, frame);
 if (err)
  return err;

 if (chip->info->ops->port_set_ether_type)
  return chip->info->ops->port_set_ether_type(chip, port, etype);

 return 0;
}
