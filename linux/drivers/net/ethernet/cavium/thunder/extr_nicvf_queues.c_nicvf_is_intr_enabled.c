
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nicvf {int netdev; } ;


 int NIC_VF_ENA_W1S ;
 int netdev_dbg (int ,char*) ;
 int nicvf_int_type_to_mask (int,int) ;
 int nicvf_reg_read (struct nicvf*,int ) ;

int nicvf_is_intr_enabled(struct nicvf *nic, int int_type, int q_idx)
{
 u64 mask = nicvf_int_type_to_mask(int_type, q_idx);

 if (!mask) {
  netdev_dbg(nic->netdev,
      "Failed to check interrupt enable: unknown type\n");
  return 0;
 }

 return mask & nicvf_reg_read(nic, NIC_VF_ENA_W1S);
}
