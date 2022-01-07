
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;


 int TCPOLEN_TIMESTAMP ;
 int cxgb4_best_aligned_mtu (unsigned short const*,unsigned short,unsigned short,int,unsigned int*) ;
 int round_up (int ,int) ;

__attribute__((used)) static inline void
cxgb_best_mtu(const unsigned short *mtus, unsigned short mtu,
       unsigned int *idx, int use_ts, int ipv6)
{
 unsigned short hdr_size = (ipv6 ?
       sizeof(struct ipv6hdr) :
       sizeof(struct iphdr)) +
      sizeof(struct tcphdr) +
      (use_ts ?
       round_up(TCPOLEN_TIMESTAMP, 4) : 0);
 unsigned short data_size = mtu - hdr_size;

 cxgb4_best_aligned_mtu(mtus, hdr_size, data_size, 8, idx);
}
