
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_pub {TYPE_1__* proto; } ;
struct brcmf_msgbuf {int flow; } ;
typedef enum proto_addr_mode { ____Placeholder_proto_addr_mode } proto_addr_mode ;
struct TYPE_2__ {scalar_t__ pd; } ;


 int brcmf_flowring_configure_addr_mode (int ,int,int) ;

__attribute__((used)) static void
brcmf_msgbuf_configure_addr_mode(struct brcmf_pub *drvr, int ifidx,
     enum proto_addr_mode addr_mode)
{
 struct brcmf_msgbuf *msgbuf = (struct brcmf_msgbuf *)drvr->proto->pd;

 brcmf_flowring_configure_addr_mode(msgbuf->flow, ifidx, addr_mode);
}
