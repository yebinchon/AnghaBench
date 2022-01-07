
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mei_cl_device {struct mei_cl* cl; } ;
struct mei_cl {int dummy; } ;
typedef int ssize_t ;


 int MEI_CL_IO_RX_NONBLOCK ;
 int __mei_cl_recv (struct mei_cl*,int *,size_t,int ,int ) ;

ssize_t mei_cldev_recv_nonblock(struct mei_cl_device *cldev, u8 *buf,
    size_t length)
{
 struct mei_cl *cl = cldev->cl;

 return __mei_cl_recv(cl, buf, length, MEI_CL_IO_RX_NONBLOCK, 0);
}
