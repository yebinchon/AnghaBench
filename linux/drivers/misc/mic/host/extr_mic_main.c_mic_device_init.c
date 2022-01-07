
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int revision; } ;
struct TYPE_2__ {scalar_t__ next_avail_src; } ;
struct mic_device {TYPE_1__ irq_info; int mic_mutex; int stepping; int family; struct pci_dev* pdev; } ;


 int mic_get_family (struct pci_dev*) ;
 int mic_ops_init (struct mic_device*) ;
 int mutex_init (int *) ;

__attribute__((used)) static void
mic_device_init(struct mic_device *mdev, struct pci_dev *pdev)
{
 mdev->pdev = pdev;
 mdev->family = mic_get_family(pdev);
 mdev->stepping = pdev->revision;
 mic_ops_init(mdev);
 mutex_init(&mdev->mic_mutex);
 mdev->irq_info.next_avail_src = 0;
}
