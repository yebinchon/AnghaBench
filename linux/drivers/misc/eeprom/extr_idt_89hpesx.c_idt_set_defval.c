
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt_89hpesx_dev {int eero; scalar_t__ eeaddr; scalar_t__ inieecmd; scalar_t__ eesize; } ;



__attribute__((used)) static void idt_set_defval(struct idt_89hpesx_dev *pdev)
{

 pdev->eesize = 0;
 pdev->eero = 1;
 pdev->inieecmd = 0;
 pdev->eeaddr = 0;
}
