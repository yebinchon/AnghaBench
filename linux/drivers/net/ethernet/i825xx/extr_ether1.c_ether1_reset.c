
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int BUS_16 ;
 int CTRL_ACK ;
 int CTRL_RST ;
 int REG_CONTROL ;
 int writeb (int,int ) ;

__attribute__((used)) static int
ether1_reset (struct net_device *dev)
{
 writeb(CTRL_RST|CTRL_ACK, REG_CONTROL);
 return BUS_16;
}
