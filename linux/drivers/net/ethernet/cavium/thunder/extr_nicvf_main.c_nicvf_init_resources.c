
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int netdev; } ;


 int netdev_err (int ,char*) ;
 int nicvf_config_data_transfer (struct nicvf*,int) ;
 int nicvf_qset_config (struct nicvf*,int) ;

__attribute__((used)) static int nicvf_init_resources(struct nicvf *nic)
{
 int err;


 nicvf_qset_config(nic, 1);


 err = nicvf_config_data_transfer(nic, 1);
 if (err) {
  netdev_err(nic->netdev,
      "Failed to alloc/config VF's QSet resources\n");
  return err;
 }

 return 0;
}
