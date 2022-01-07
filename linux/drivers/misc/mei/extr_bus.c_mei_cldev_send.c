
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mei_cl_device {struct mei_cl* cl; } ;
struct mei_cl {int dummy; } ;
typedef int ssize_t ;


 int MEI_CL_IO_TX_BLOCKING ;
 int __mei_cl_send (struct mei_cl*,int *,size_t,int ) ;

ssize_t mei_cldev_send(struct mei_cl_device *cldev, u8 *buf, size_t length)
{
 struct mei_cl *cl = cldev->cl;

 return __mei_cl_send(cl, buf, length, MEI_CL_IO_TX_BLOCKING);
}
