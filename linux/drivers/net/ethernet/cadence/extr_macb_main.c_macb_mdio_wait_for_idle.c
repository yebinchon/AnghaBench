
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macb {int dummy; } ;


 int IDLE ;
 int MACB_BIT (int ) ;
 int MACB_MDIO_TIMEOUT ;
 int MACB_READ_NSR ;
 int readx_poll_timeout (int ,struct macb*,int,int,int,int ) ;

__attribute__((used)) static int macb_mdio_wait_for_idle(struct macb *bp)
{
 u32 val;

 return readx_poll_timeout(MACB_READ_NSR, bp, val, val & MACB_BIT(IDLE),
      1, MACB_MDIO_TIMEOUT);
}
