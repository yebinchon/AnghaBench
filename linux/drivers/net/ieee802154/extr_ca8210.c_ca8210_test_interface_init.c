
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ca8210_test {int up_fifo; int readq; int ca8210_dfs_spi_int; } ;
struct ca8210_priv {TYPE_2__* spi; struct ca8210_test test; } ;
typedef int node_name ;
struct TYPE_4__ {int chip_select; TYPE_1__* master; } ;
struct TYPE_3__ {int bus_num; } ;


 int CA8210_TEST_INT_FIFO_SIZE ;
 int GFP_KERNEL ;
 int debugfs_create_file (char*,int,int *,struct ca8210_priv*,int *) ;
 int debugfs_create_symlink (char*,int *,char*) ;
 int init_waitqueue_head (int *) ;
 int kfifo_alloc (int *,int ,int ) ;
 int snprintf (char*,int,char*,int,int) ;
 int test_int_fops ;

__attribute__((used)) static int ca8210_test_interface_init(struct ca8210_priv *priv)
{
 struct ca8210_test *test = &priv->test;
 char node_name[32];

 snprintf(
  node_name,
  sizeof(node_name),
  "ca8210@%d_%d",
  priv->spi->master->bus_num,
  priv->spi->chip_select
 );

 test->ca8210_dfs_spi_int = debugfs_create_file(
  node_name,
  0600,
  ((void*)0),
  priv,
  &test_int_fops
 );

 debugfs_create_symlink("ca8210", ((void*)0), node_name);
 init_waitqueue_head(&test->readq);
 return kfifo_alloc(
  &test->up_fifo,
  CA8210_TEST_INT_FIFO_SIZE,
  GFP_KERNEL
 );
}
