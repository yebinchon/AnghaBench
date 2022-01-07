
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nicvf {int netdev; } ;


 int NIC_VF_ENA_W1C ;
 int netdev_dbg (int ,char*) ;
 int nicvf_int_type_to_mask (int,int) ;
 int nicvf_reg_write (struct nicvf*,int ,int ) ;

void nicvf_disable_intr(struct nicvf *nic, int int_type, int q_idx)
{
 u64 mask = nicvf_int_type_to_mask(int_type, q_idx);

 if (!mask) {
  netdev_dbg(nic->netdev,
      "Failed to disable interrupt: unknown type\n");
  return;
 }

 nicvf_reg_write(nic, NIC_VF_ENA_W1C, mask);
}
