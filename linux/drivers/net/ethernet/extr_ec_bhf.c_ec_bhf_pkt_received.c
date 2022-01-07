
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv; } ;
struct rx_desc {TYPE_1__ header; } ;


 int RXHDR_NEXT_RECV_FLAG ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ec_bhf_pkt_received(struct rx_desc *desc)
{
 return le32_to_cpu(desc->header.recv) & RXHDR_NEXT_RECV_FLAG;
}
