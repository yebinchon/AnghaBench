
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt_89hpesx_dev {int client; } ;


 int i2c_set_clientdata (int ,int *) ;

__attribute__((used)) static void idt_free_pdev(struct idt_89hpesx_dev *pdev)
{

 i2c_set_clientdata(pdev->client, ((void*)0));
}
