
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
typedef enum mv88e6xxx_policy_mapping { ____Placeholder_mv88e6xxx_policy_mapping } mv88e6xxx_policy_mapping ;
typedef enum mv88e6xxx_policy_action { ____Placeholder_mv88e6xxx_policy_action } mv88e6xxx_policy_action ;


 int EOPNOTSUPP ;
 int MV88E6XXX_PORT_POLICY_CTL ;
 int MV88E6XXX_PORT_POLICY_CTL_DA_MASK ;
 int MV88E6XXX_PORT_POLICY_CTL_DISCARD ;
 int MV88E6XXX_PORT_POLICY_CTL_ETYPE_MASK ;
 int MV88E6XXX_PORT_POLICY_CTL_MIRROR ;
 int MV88E6XXX_PORT_POLICY_CTL_NORMAL ;
 int MV88E6XXX_PORT_POLICY_CTL_OPT82_MASK ;
 int MV88E6XXX_PORT_POLICY_CTL_PPPOE_MASK ;
 int MV88E6XXX_PORT_POLICY_CTL_SA_MASK ;
 int MV88E6XXX_PORT_POLICY_CTL_TRAP ;
 int MV88E6XXX_PORT_POLICY_CTL_UDP_MASK ;
 int MV88E6XXX_PORT_POLICY_CTL_VBAS_MASK ;
 int MV88E6XXX_PORT_POLICY_CTL_VTU_MASK ;
 int __bf_shf (int) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

int mv88e6352_port_set_policy(struct mv88e6xxx_chip *chip, int port,
         enum mv88e6xxx_policy_mapping mapping,
         enum mv88e6xxx_policy_action action)
{
 u16 reg, mask, val;
 int shift;
 int err;

 switch (mapping) {
 case 135:
  shift = __bf_shf(MV88E6XXX_PORT_POLICY_CTL_DA_MASK);
  mask = MV88E6XXX_PORT_POLICY_CTL_DA_MASK;
  break;
 case 131:
  shift = __bf_shf(MV88E6XXX_PORT_POLICY_CTL_SA_MASK);
  mask = MV88E6XXX_PORT_POLICY_CTL_SA_MASK;
  break;
 case 128:
  shift = __bf_shf(MV88E6XXX_PORT_POLICY_CTL_VTU_MASK);
  mask = MV88E6XXX_PORT_POLICY_CTL_VTU_MASK;
  break;
 case 134:
  shift = __bf_shf(MV88E6XXX_PORT_POLICY_CTL_ETYPE_MASK);
  mask = MV88E6XXX_PORT_POLICY_CTL_ETYPE_MASK;
  break;
 case 132:
  shift = __bf_shf(MV88E6XXX_PORT_POLICY_CTL_PPPOE_MASK);
  mask = MV88E6XXX_PORT_POLICY_CTL_PPPOE_MASK;
  break;
 case 129:
  shift = __bf_shf(MV88E6XXX_PORT_POLICY_CTL_VBAS_MASK);
  mask = MV88E6XXX_PORT_POLICY_CTL_VBAS_MASK;
  break;
 case 133:
  shift = __bf_shf(MV88E6XXX_PORT_POLICY_CTL_OPT82_MASK);
  mask = MV88E6XXX_PORT_POLICY_CTL_OPT82_MASK;
  break;
 case 130:
  shift = __bf_shf(MV88E6XXX_PORT_POLICY_CTL_UDP_MASK);
  mask = MV88E6XXX_PORT_POLICY_CTL_UDP_MASK;
  break;
 default:
  return -EOPNOTSUPP;
 }

 switch (action) {
 case 137:
  val = MV88E6XXX_PORT_POLICY_CTL_NORMAL;
  break;
 case 138:
  val = MV88E6XXX_PORT_POLICY_CTL_MIRROR;
  break;
 case 136:
  val = MV88E6XXX_PORT_POLICY_CTL_TRAP;
  break;
 case 139:
  val = MV88E6XXX_PORT_POLICY_CTL_DISCARD;
  break;
 default:
  return -EOPNOTSUPP;
 }

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_POLICY_CTL, &reg);
 if (err)
  return err;

 reg &= ~mask;
 reg |= (val << shift) & mask;

 return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_POLICY_CTL, reg);
}
