
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int netdev; int vdev; } ;


 int enic_dev_wait (int ,int ,int ,int ) ;
 int netdev_err (int ,char*,int) ;
 int vnic_dev_hang_reset ;
 int vnic_dev_hang_reset_done ;

__attribute__((used)) static int enic_dev_hang_reset(struct enic *enic)
{
 int err;

 err = enic_dev_wait(enic->vdev, vnic_dev_hang_reset,
  vnic_dev_hang_reset_done, 0);
 if (err)
  netdev_err(enic->netdev, "vNIC hang reset failed, err %d\n",
   err);

 return err;
}
