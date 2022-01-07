
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octnic_data_pkt {int reqtype; int datasize; int buf; int cmd; int q_no; } ;
struct octeon_device {int dummy; } ;


 int octeon_send_command (struct octeon_device*,int ,int,int *,int ,int ,int ) ;

int octnet_send_nic_data_pkt(struct octeon_device *oct,
        struct octnic_data_pkt *ndata,
        int xmit_more)
{
 int ring_doorbell = !xmit_more;

 return octeon_send_command(oct, ndata->q_no, ring_doorbell, &ndata->cmd,
       ndata->buf, ndata->datasize,
       ndata->reqtype);
}
