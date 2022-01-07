
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct ddb_output* priv; } ;
struct ddb_output {TYPE_2__* dma; TYPE_3__* port; } ;
struct ddb_input {TYPE_1__* dma; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_6__ {struct ddb_input** input; } ;
struct TYPE_5__ {int wq; } ;
struct TYPE_4__ {int wq; } ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int ddb_input_avail (struct ddb_input*) ;
 int ddb_output_free (struct ddb_output*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t ts_poll(struct file *file, poll_table *wait)
{
 struct dvb_device *dvbdev = file->private_data;
 struct ddb_output *output = dvbdev->priv;
 struct ddb_input *input = output->port->input[0];

 __poll_t mask = 0;

 poll_wait(file, &input->dma->wq, wait);
 poll_wait(file, &output->dma->wq, wait);
 if (ddb_input_avail(input) >= 188)
  mask |= EPOLLIN | EPOLLRDNORM;
 if (ddb_output_free(output) >= 188)
  mask |= EPOLLOUT | EPOLLWRNORM;
 return mask;
}
