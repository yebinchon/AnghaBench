
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idt_89hpesx_dev {int csr_dir; struct i2c_client* client; } ;
struct i2c_client {int name; TYPE_1__* adapter; int addr; } ;
struct TYPE_2__ {int nr; } ;


 int CSRNAME_LEN ;
 int csr_dbgdir ;
 int csr_dbgfs_ops ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (int ,int,int ,struct idt_89hpesx_dev*,int *) ;
 int snprintf (char*,int,char*,int,int ) ;

__attribute__((used)) static void idt_create_dbgfs_files(struct idt_89hpesx_dev *pdev)
{
 struct i2c_client *cli = pdev->client;
 char fname[CSRNAME_LEN];


 snprintf(fname, CSRNAME_LEN, "%d-%04hx", cli->adapter->nr, cli->addr);
 pdev->csr_dir = debugfs_create_dir(fname, csr_dbgdir);


 debugfs_create_file(cli->name, 0600, pdev->csr_dir, pdev,
       &csr_dbgfs_ops);
}
