
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt_89hpesx_dev {int csr_dir; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void idt_remove_dbgfs_files(struct idt_89hpesx_dev *pdev)
{

 debugfs_remove_recursive(pdev->csr_dir);
}
