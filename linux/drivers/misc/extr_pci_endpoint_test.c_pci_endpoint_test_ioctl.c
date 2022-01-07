
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_endpoint_test {int mutex; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct file {int private_data; } ;
typedef enum pci_barno { ____Placeholder_pci_barno } pci_barno ;


 int BAR_0 ;
 int EINVAL ;
 int irq_type ;
 int is_am654_pci_dev (struct pci_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_endpoint_test_bar (struct pci_endpoint_test*,int) ;
 int pci_endpoint_test_copy (struct pci_endpoint_test*,unsigned long) ;
 int pci_endpoint_test_legacy_irq (struct pci_endpoint_test*) ;
 int pci_endpoint_test_msi_irq (struct pci_endpoint_test*,unsigned long,int) ;
 int pci_endpoint_test_read (struct pci_endpoint_test*,unsigned long) ;
 int pci_endpoint_test_set_irq (struct pci_endpoint_test*,unsigned long) ;
 int pci_endpoint_test_write (struct pci_endpoint_test*,unsigned long) ;
 struct pci_endpoint_test* to_endpoint_test (int ) ;

__attribute__((used)) static long pci_endpoint_test_ioctl(struct file *file, unsigned int cmd,
        unsigned long arg)
{
 int ret = -EINVAL;
 enum pci_barno bar;
 struct pci_endpoint_test *test = to_endpoint_test(file->private_data);
 struct pci_dev *pdev = test->pdev;

 mutex_lock(&test->mutex);
 switch (cmd) {
 case 136:
  bar = arg;
  if (bar < 0 || bar > 5)
   goto ret;
  if (is_am654_pci_dev(pdev) && bar == BAR_0)
   goto ret;
  ret = pci_endpoint_test_bar(test, bar);
  break;
 case 133:
  ret = pci_endpoint_test_legacy_irq(test);
  break;
 case 132:
 case 131:
  ret = pci_endpoint_test_msi_irq(test, arg, cmd == 131);
  break;
 case 128:
  ret = pci_endpoint_test_write(test, arg);
  break;
 case 130:
  ret = pci_endpoint_test_read(test, arg);
  break;
 case 135:
  ret = pci_endpoint_test_copy(test, arg);
  break;
 case 129:
  ret = pci_endpoint_test_set_irq(test, arg);
  break;
 case 134:
  ret = irq_type;
  break;
 }

ret:
 mutex_unlock(&test->mutex);
 return ret;
}
