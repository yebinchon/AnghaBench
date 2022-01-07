
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_flags; struct dvb_device* private_data; } ;
struct dvb_device {struct ddb_output* priv; } ;
struct ddb_output {TYPE_1__* port; } ;
struct ddb_input {int dummy; } ;
struct TYPE_2__ {struct ddb_input** input; } ;


 int EINVAL ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int ddb_input_stop (struct ddb_input*) ;
 int ddb_output_stop (struct ddb_output*) ;
 int dvb_generic_release (struct inode*,struct file*) ;

__attribute__((used)) static int ts_release(struct inode *inode, struct file *file)
{
 struct dvb_device *dvbdev = file->private_data;
 struct ddb_output *output = ((void*)0);
 struct ddb_input *input = ((void*)0);

 if (dvbdev) {
  output = dvbdev->priv;
  input = output->port->input[0];
 }

 if ((file->f_flags & O_ACCMODE) == O_RDONLY) {
  if (!input)
   return -EINVAL;
  ddb_input_stop(input);
 } else if ((file->f_flags & O_ACCMODE) == O_WRONLY) {
  if (!output)
   return -EINVAL;
  ddb_output_stop(output);
 }
 return dvb_generic_release(inode, file);
}
