
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta2x11_mfd {int list; struct sta2x11_instance* instance; int * lock; } ;
struct sta2x11_instance {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef int gfp_t ;


 int ARRAY_SIZE (int *) ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 struct sta2x11_mfd* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_init (int *) ;
 struct sta2x11_instance* sta2x11_get_instance (struct pci_dev*) ;
 struct sta2x11_mfd* sta2x11_mfd_find (struct pci_dev*) ;
 int sta2x11_mfd_list ;

__attribute__((used)) static int sta2x11_mfd_add(struct pci_dev *pdev, gfp_t flags)
{
 int i;
 struct sta2x11_mfd *mfd = sta2x11_mfd_find(pdev);
 struct sta2x11_instance *instance;

 if (mfd)
  return -EBUSY;
 instance = sta2x11_get_instance(pdev);
 if (!instance)
  return -EINVAL;
 mfd = kzalloc(sizeof(*mfd), flags);
 if (!mfd)
  return -ENOMEM;
 INIT_LIST_HEAD(&mfd->list);
 for (i = 0; i < ARRAY_SIZE(mfd->lock); i++)
  spin_lock_init(&mfd->lock[i]);
 mfd->instance = instance;
 list_add(&mfd->list, &sta2x11_mfd_list);
 return 0;
}
