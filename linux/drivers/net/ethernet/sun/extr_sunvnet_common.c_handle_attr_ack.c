
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_net_attr_info {int dummy; } ;
struct vio_driver_state {int dummy; } ;


 int HS ;
 int viodbg (int ,char*) ;

__attribute__((used)) static int handle_attr_ack(struct vio_driver_state *vio,
      struct vio_net_attr_info *pkt)
{
 viodbg(HS, "GOT NET ATTR ACK\n");

 return 0;
}
