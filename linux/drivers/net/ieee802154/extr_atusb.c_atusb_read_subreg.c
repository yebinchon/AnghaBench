
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atusb {int dummy; } ;


 int atusb_read_reg (struct atusb*,unsigned int) ;

__attribute__((used)) static int atusb_read_subreg(struct atusb *lp,
        unsigned int addr, unsigned int mask,
        unsigned int shift)
{
 int rc;

 rc = atusb_read_reg(lp, addr);
 rc = (rc & mask) >> shift;

 return rc;
}
