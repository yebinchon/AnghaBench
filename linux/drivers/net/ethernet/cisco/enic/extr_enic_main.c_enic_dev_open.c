
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enic {int vdev; } ;


 int CMD_OPENF_IG_DESCCACHE ;
 int dev_err (int ,char*,int) ;
 int enic_dev_wait (int ,int ,int ,int ) ;
 int enic_get_dev (struct enic*) ;
 int vnic_dev_open ;
 int vnic_dev_open_done ;

__attribute__((used)) static int enic_dev_open(struct enic *enic)
{
 int err;
 u32 flags = CMD_OPENF_IG_DESCCACHE;

 err = enic_dev_wait(enic->vdev, vnic_dev_open,
  vnic_dev_open_done, flags);
 if (err)
  dev_err(enic_get_dev(enic), "vNIC device open failed, err %d\n",
   err);

 return err;
}
