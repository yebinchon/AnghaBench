
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_msg_hdr {int internal; scalar_t__ dma_ring; scalar_t__ msg_complete; scalar_t__ reserved; scalar_t__ length; int me_addr; int host_addr; } ;
struct mei_cl_cb {int internal; int cl; } ;


 int mei_cl_host_addr (int ) ;
 int mei_cl_me_id (int ) ;

__attribute__((used)) static void mei_msg_hdr_init(struct mei_msg_hdr *mei_hdr, struct mei_cl_cb *cb)
{
 mei_hdr->host_addr = mei_cl_host_addr(cb->cl);
 mei_hdr->me_addr = mei_cl_me_id(cb->cl);
 mei_hdr->length = 0;
 mei_hdr->reserved = 0;
 mei_hdr->msg_complete = 0;
 mei_hdr->dma_ring = 0;
 mei_hdr->internal = cb->internal;
}
