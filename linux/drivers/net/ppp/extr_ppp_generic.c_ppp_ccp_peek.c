
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {unsigned char* data; } ;
struct TYPE_4__ {int index; } ;
struct ppp {int xstate; int rstate; int flags; int xc_state; TYPE_3__* xcomp; int rc_state; TYPE_2__* rcomp; int debug; TYPE_1__ file; int mru; } ;
struct TYPE_6__ {int (* comp_reset ) (int ) ;int (* comp_init ) (int ,unsigned char*,int,int ,int ,int ) ;} ;
struct TYPE_5__ {int (* decomp_reset ) (int ) ;int (* decomp_init ) (int ,unsigned char*,int,int ,int ,int ,int ) ;} ;


 int CCP_CODE (unsigned char*) ;


 int CCP_HDRLEN ;
 int CCP_LENGTH (unsigned char*) ;
 int CCP_OPT_LENGTH (unsigned char*) ;
 int CCP_OPT_MINLEN ;



 int SC_CCP_OPEN ;
 int SC_CCP_UP ;
 int SC_COMP_RUN ;
 int SC_DC_ERROR ;
 int SC_DC_FERROR ;
 int SC_DECOMP_RUN ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int stub1 (int ,unsigned char*,int,int ,int ,int ,int ) ;
 int stub2 (int ,unsigned char*,int,int ,int ,int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;

__attribute__((used)) static void
ppp_ccp_peek(struct ppp *ppp, struct sk_buff *skb, int inbound)
{
 unsigned char *dp;
 int len;

 if (!pskb_may_pull(skb, CCP_HDRLEN + 2))
  return;
 dp = skb->data + 2;

 switch (CCP_CODE(dp)) {
 case 131:
  if(inbound)

   ppp->xstate &= ~SC_COMP_RUN;
  else

   ppp->rstate &= ~SC_DECOMP_RUN;

  break;

 case 128:
 case 129:



  ppp->rstate &= ~SC_DECOMP_RUN;
  ppp->xstate &= ~SC_COMP_RUN;
  break;

 case 132:
  if ((ppp->flags & (SC_CCP_OPEN | SC_CCP_UP)) != SC_CCP_OPEN)
   break;
  len = CCP_LENGTH(dp);
  if (!pskb_may_pull(skb, len + 2))
   return;
  dp += CCP_HDRLEN;
  len -= CCP_HDRLEN;
  if (len < CCP_OPT_MINLEN || len < CCP_OPT_LENGTH(dp))
   break;
  if (inbound) {

   if (!ppp->rc_state)
    break;
   if (ppp->rcomp->decomp_init(ppp->rc_state, dp, len,
     ppp->file.index, 0, ppp->mru, ppp->debug)) {
    ppp->rstate |= SC_DECOMP_RUN;
    ppp->rstate &= ~(SC_DC_ERROR | SC_DC_FERROR);
   }
  } else {

   if (!ppp->xc_state)
    break;
   if (ppp->xcomp->comp_init(ppp->xc_state, dp, len,
     ppp->file.index, 0, ppp->debug))
    ppp->xstate |= SC_COMP_RUN;
  }
  break;

 case 130:

  if ((ppp->flags & SC_CCP_UP) == 0)
   break;
  if (inbound) {
   if (ppp->rc_state && (ppp->rstate & SC_DECOMP_RUN)) {
    ppp->rcomp->decomp_reset(ppp->rc_state);
    ppp->rstate &= ~SC_DC_ERROR;
   }
  } else {
   if (ppp->xc_state && (ppp->xstate & SC_COMP_RUN))
    ppp->xcomp->comp_reset(ppp->xc_state);
  }
  break;
 }
}
