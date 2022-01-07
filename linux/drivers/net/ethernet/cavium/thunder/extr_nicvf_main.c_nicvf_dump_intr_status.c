
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int netdev; } ;


 int NIC_VF_INT ;
 int intr ;
 int netif_info (struct nicvf*,int ,int ,char*,int ) ;
 int nicvf_reg_read (struct nicvf*,int ) ;

__attribute__((used)) static void nicvf_dump_intr_status(struct nicvf *nic)
{
 netif_info(nic, intr, nic->netdev, "interrupt status 0x%llx\n",
     nicvf_reg_read(nic, NIC_VF_INT));
}
