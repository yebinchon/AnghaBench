
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_frame {int dummy; } ;
struct xdp_buff {int dummy; } ;
struct page {int dummy; } ;
struct net_device {int dummy; } ;
struct cpsw_priv {int xdp_prog; struct net_device* ndev; struct cpsw_common* cpsw; } ;
struct cpsw_common {int * page_pool; } ;
struct bpf_prog {int dummy; } ;


 int CPSW_XDP_CONSUMED ;
 int CPSW_XDP_PASS ;
 struct bpf_prog* READ_ONCE (int ) ;





 int bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (int) ;
 struct xdp_frame* convert_to_xdp_frame (struct xdp_buff*) ;
 int cpsw_xdp_tx_frame (struct cpsw_priv*,struct xdp_frame*,struct page*) ;
 int page_pool_recycle_direct (int ,struct page*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_xdp_exception (struct net_device*,struct bpf_prog*,int) ;
 int unlikely (int) ;
 int xdp_do_flush_map () ;
 int xdp_do_redirect (struct net_device*,struct xdp_buff*,struct bpf_prog*) ;

__attribute__((used)) static int cpsw_run_xdp(struct cpsw_priv *priv, int ch, struct xdp_buff *xdp,
   struct page *page)
{
 struct cpsw_common *cpsw = priv->cpsw;
 struct net_device *ndev = priv->ndev;
 int ret = CPSW_XDP_CONSUMED;
 struct xdp_frame *xdpf;
 struct bpf_prog *prog;
 u32 act;

 rcu_read_lock();

 prog = READ_ONCE(priv->xdp_prog);
 if (!prog) {
  ret = CPSW_XDP_PASS;
  goto out;
 }

 act = bpf_prog_run_xdp(prog, xdp);
 switch (act) {
 case 130:
  ret = CPSW_XDP_PASS;
  break;
 case 128:
  xdpf = convert_to_xdp_frame(xdp);
  if (unlikely(!xdpf))
   goto drop;

  cpsw_xdp_tx_frame(priv, xdpf, page);
  break;
 case 129:
  if (xdp_do_redirect(ndev, xdp, prog))
   goto drop;






  xdp_do_flush_map();
  break;
 default:
  bpf_warn_invalid_xdp_action(act);

 case 132:
  trace_xdp_exception(ndev, prog, act);

 case 131:
  goto drop;
 }
out:
 rcu_read_unlock();
 return ret;
drop:
 rcu_read_unlock();
 page_pool_recycle_direct(cpsw->page_pool[ch], page);
 return ret;
}
