
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int CCC ;
 int CCC_OPC ;
 int CCC_OPC_CONFIG ;
 int CSR ;
 int CSR_OPS ;
 int CSR_OPS_CONFIG ;
 int netdev_err (struct net_device*,char*) ;
 int ravb_modify (struct net_device*,int ,int ,int ) ;
 int ravb_wait (struct net_device*,int ,int ,int ) ;

__attribute__((used)) static int ravb_config(struct net_device *ndev)
{
 int error;


 ravb_modify(ndev, CCC, CCC_OPC, CCC_OPC_CONFIG);

 error = ravb_wait(ndev, CSR, CSR_OPS, CSR_OPS_CONFIG);
 if (error)
  netdev_err(ndev, "failed to switch device to config mode\n");

 return error;
}
