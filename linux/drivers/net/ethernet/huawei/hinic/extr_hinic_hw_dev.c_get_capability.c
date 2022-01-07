
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_cap {int num_qps; int max_qps; } ;
struct hinic_hwdev {int hwif; struct hinic_cap nic_cap; } ;
struct hinic_dev_cap {scalar_t__ intr_type; int max_sqs; int max_rqs; } ;


 int EFAULT ;
 int EINVAL ;
 int HINIC_HWIF_NUM_AEQS (int ) ;
 int HINIC_HWIF_NUM_CEQS (int ) ;
 int HINIC_HWIF_NUM_IRQS (int ) ;
 int HINIC_IS_PF (int ) ;
 int HINIC_IS_PPF (int ) ;
 int HINIC_Q_CTXT_MAX ;
 scalar_t__ INTR_MSIX_TYPE ;

__attribute__((used)) static int get_capability(struct hinic_hwdev *hwdev,
     struct hinic_dev_cap *dev_cap)
{
 struct hinic_cap *nic_cap = &hwdev->nic_cap;
 int num_aeqs, num_ceqs, num_irqs;

 if (!HINIC_IS_PF(hwdev->hwif) && !HINIC_IS_PPF(hwdev->hwif))
  return -EINVAL;

 if (dev_cap->intr_type != INTR_MSIX_TYPE)
  return -EFAULT;

 num_aeqs = HINIC_HWIF_NUM_AEQS(hwdev->hwif);
 num_ceqs = HINIC_HWIF_NUM_CEQS(hwdev->hwif);
 num_irqs = HINIC_HWIF_NUM_IRQS(hwdev->hwif);


 nic_cap->num_qps = (num_irqs - (num_aeqs + num_ceqs)) / 2;

 if (nic_cap->num_qps > HINIC_Q_CTXT_MAX)
  nic_cap->num_qps = HINIC_Q_CTXT_MAX;

 nic_cap->max_qps = dev_cap->max_sqs + 1;
 if (nic_cap->max_qps != (dev_cap->max_rqs + 1))
  return -EFAULT;

 if (nic_cap->num_qps > nic_cap->max_qps)
  nic_cap->num_qps = nic_cap->max_qps;

 return 0;
}
