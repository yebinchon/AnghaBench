
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_device {int * regmap; } ;


 int PORT_CTRL_ADDR (int,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void ksz_port_cfg(struct ksz_device *dev, int port, int offset, u8 bits,
    bool set)
{
 regmap_update_bits(dev->regmap[0], PORT_CTRL_ADDR(port, offset),
      bits, set ? bits : 0);
}
