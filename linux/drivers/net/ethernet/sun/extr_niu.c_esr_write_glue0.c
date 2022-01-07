
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct niu {int port; } ;


 int ESR_GLUE_CTRL0_H (unsigned long) ;
 int ESR_GLUE_CTRL0_L (unsigned long) ;
 int NIU_ESR_DEV_ADDR ;
 int mdio_write (struct niu*,int ,int ,int ,int) ;

__attribute__((used)) static int esr_write_glue0(struct niu *np, unsigned long chan, u32 val)
{
 int err;

 err = mdio_write(np, np->port, NIU_ESR_DEV_ADDR,
   ESR_GLUE_CTRL0_L(chan), val & 0xffff);
 if (!err)
  err = mdio_write(np, np->port, NIU_ESR_DEV_ADDR,
     ESR_GLUE_CTRL0_H(chan), (val >> 16));
 return err;
}
