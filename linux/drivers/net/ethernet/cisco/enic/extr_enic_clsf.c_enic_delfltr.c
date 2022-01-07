
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct enic {int devcmd_lock; int vdev; } ;


 int CLSF_DEL ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_classifier (int ,int ,int *,int *) ;

int enic_delfltr(struct enic *enic, u16 filter_id)
{
 int ret;

 spin_lock_bh(&enic->devcmd_lock);
 ret = vnic_dev_classifier(enic->vdev, CLSF_DEL, &filter_id, ((void*)0));
 spin_unlock_bh(&enic->devcmd_lock);

 return ret;
}
