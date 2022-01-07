
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_endpt {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct scif_endpt* private_data; } ;


 int scif_close (struct scif_endpt*) ;

__attribute__((used)) static int scif_fdclose(struct inode *inode, struct file *f)
{
 struct scif_endpt *priv = f->private_data;

 return scif_close(priv);
}
