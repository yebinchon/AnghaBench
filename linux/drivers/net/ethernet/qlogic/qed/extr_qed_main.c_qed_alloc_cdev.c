
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int dummy; } ;
struct pci_dev {int dummy; } ;


 int GFP_KERNEL ;
 struct qed_dev* kzalloc (int,int ) ;
 int qed_init_struct (struct qed_dev*) ;

__attribute__((used)) static struct qed_dev *qed_alloc_cdev(struct pci_dev *pdev)
{
 struct qed_dev *cdev;

 cdev = kzalloc(sizeof(*cdev), GFP_KERNEL);
 if (!cdev)
  return cdev;

 qed_init_struct(cdev);

 return cdev;
}
