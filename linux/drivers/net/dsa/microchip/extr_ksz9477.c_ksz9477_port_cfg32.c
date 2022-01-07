
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ksz_device {int * regmap; } ;


 int PORT_CTRL_ADDR (int,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void ksz9477_port_cfg32(struct ksz_device *dev, int port, int offset,
          u32 bits, bool set)
{
 regmap_update_bits(dev->regmap[2], PORT_CTRL_ADDR(port, offset),
      bits, set ? bits : 0);
}
