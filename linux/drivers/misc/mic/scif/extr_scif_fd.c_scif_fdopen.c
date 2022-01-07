
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_endpt {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct scif_endpt* private_data; } ;


 int ENOMEM ;
 struct scif_endpt* scif_open () ;

__attribute__((used)) static int scif_fdopen(struct inode *inode, struct file *f)
{
 struct scif_endpt *priv = scif_open();

 if (!priv)
  return -ENOMEM;
 f->private_data = priv;
 return 0;
}
