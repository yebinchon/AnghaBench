
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct ca8210_priv* i_private; } ;
struct file {struct ca8210_priv* private_data; } ;
struct ca8210_priv {int dummy; } ;



__attribute__((used)) static int ca8210_test_int_open(struct inode *inodp, struct file *filp)
{
 struct ca8210_priv *priv = inodp->i_private;

 filp->private_data = priv;
 return 0;
}
