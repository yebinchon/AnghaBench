
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_buff {int dummy; } ;
struct netsec_priv {int ndev; } ;
struct bpf_prog {int dummy; } ;


 int NETSEC_XDP_CONSUMED ;
 int NETSEC_XDP_PASS ;
 int NETSEC_XDP_REDIR ;
 int NETSEC_XDP_TX ;





 int bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (int) ;
 int netsec_xdp_xmit_back (struct netsec_priv*,struct xdp_buff*) ;
 int trace_xdp_exception (int ,struct bpf_prog*,int) ;
 int xdp_do_redirect (int ,struct xdp_buff*,struct bpf_prog*) ;
 int xdp_return_buff (struct xdp_buff*) ;

__attribute__((used)) static u32 netsec_run_xdp(struct netsec_priv *priv, struct bpf_prog *prog,
     struct xdp_buff *xdp)
{
 u32 ret = NETSEC_XDP_PASS;
 int err;
 u32 act;

 act = bpf_prog_run_xdp(prog, xdp);

 switch (act) {
 case 130:
  ret = NETSEC_XDP_PASS;
  break;
 case 128:
  ret = netsec_xdp_xmit_back(priv, xdp);
  if (ret != NETSEC_XDP_TX)
   xdp_return_buff(xdp);
  break;
 case 129:
  err = xdp_do_redirect(priv->ndev, xdp, prog);
  if (!err) {
   ret = NETSEC_XDP_REDIR;
  } else {
   ret = NETSEC_XDP_CONSUMED;
   xdp_return_buff(xdp);
  }
  break;
 default:
  bpf_warn_invalid_xdp_action(act);

 case 132:
  trace_xdp_exception(priv->ndev, prog, act);

 case 131:
  ret = NETSEC_XDP_CONSUMED;
  xdp_return_buff(xdp);
  break;
 }

 return ret;
}
