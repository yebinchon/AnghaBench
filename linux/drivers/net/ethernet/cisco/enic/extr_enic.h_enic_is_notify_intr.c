
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int vdev; } ;





 int enic_legacy_notify_intr () ;
 int enic_msix_notify_intr (struct enic*) ;
 int vnic_dev_get_intr_mode (int ) ;

__attribute__((used)) static inline bool enic_is_notify_intr(struct enic *enic, int intr)
{
 switch (vnic_dev_get_intr_mode(enic->vdev)) {
 case 130:
  return intr == enic_legacy_notify_intr();
 case 128:
  return intr == enic_msix_notify_intr(enic);
 case 129:
 default:
  return 0;
 }
}
