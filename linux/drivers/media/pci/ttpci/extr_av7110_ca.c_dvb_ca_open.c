
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct av7110* priv; } ;
struct av7110 {int ci_wbuffer; int ci_rbuffer; } ;


 int ci_ll_flush (int *,int *) ;
 int dprintk (int,char*,struct av7110*) ;
 int dvb_generic_open (struct inode*,struct file*) ;

__attribute__((used)) static int dvb_ca_open(struct inode *inode, struct file *file)
{
 struct dvb_device *dvbdev = file->private_data;
 struct av7110 *av7110 = dvbdev->priv;
 int err = dvb_generic_open(inode, file);

 dprintk(8, "av7110:%p\n",av7110);

 if (err < 0)
  return err;
 ci_ll_flush(&av7110->ci_rbuffer, &av7110->ci_wbuffer);
 return 0;
}
