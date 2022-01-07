
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int regs; } ;
struct cafe_camera {TYPE_2__ mcam; TYPE_1__* pdev; } ;
struct TYPE_3__ {int irq; } ;


 int cafe_smbus_shutdown (struct cafe_camera*) ;
 int free_irq (int ,struct cafe_camera*) ;
 int mccic_shutdown (TYPE_2__*) ;
 int pci_iounmap (TYPE_1__*,int ) ;

__attribute__((used)) static void cafe_shutdown(struct cafe_camera *cam)
{
 mccic_shutdown(&cam->mcam);
 cafe_smbus_shutdown(cam);
 free_irq(cam->pdev->irq, cam);
 pci_iounmap(cam->pdev, cam->mcam.regs);
}
