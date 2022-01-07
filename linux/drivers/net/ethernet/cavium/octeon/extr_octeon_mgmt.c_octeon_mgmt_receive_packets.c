
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ircnt; } ;
union cvmx_mixx_ircnt {void* u64; TYPE_1__ s; } ;
struct octeon_mgmt {int netdev; scalar_t__ mix; } ;


 scalar_t__ MIX_IRCNT ;
 void* cvmx_read_csr (scalar_t__) ;
 int octeon_mgmt_receive_one (struct octeon_mgmt*) ;
 int octeon_mgmt_rx_fill_ring (int ) ;

__attribute__((used)) static int octeon_mgmt_receive_packets(struct octeon_mgmt *p, int budget)
{
 unsigned int work_done = 0;
 union cvmx_mixx_ircnt mix_ircnt;
 int rc;

 mix_ircnt.u64 = cvmx_read_csr(p->mix + MIX_IRCNT);
 while (work_done < budget && mix_ircnt.s.ircnt) {

  rc = octeon_mgmt_receive_one(p);
  if (!rc)
   work_done++;


  mix_ircnt.u64 = cvmx_read_csr(p->mix + MIX_IRCNT);
 }

 octeon_mgmt_rx_fill_ring(p->netdev);

 return work_done;
}
