
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int MR_AI ;
 int MR_IND ;
 int MR_PB ;
 int MR_RST ;
 int W5100_MR ;
 int mdelay (int) ;
 int w5100_write_direct (struct net_device*,int ,int) ;

__attribute__((used)) static int w5100_reset_indirect(struct net_device *ndev)
{
 w5100_write_direct(ndev, W5100_MR, MR_RST);
 mdelay(5);
 w5100_write_direct(ndev, W5100_MR, MR_PB | MR_AI | MR_IND);

 return 0;
}
