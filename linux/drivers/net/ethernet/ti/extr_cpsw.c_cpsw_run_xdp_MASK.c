#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct xdp_frame {int dummy; } ;
struct xdp_buff {int dummy; } ;
struct page {int dummy; } ;
struct net_device {int dummy; } ;
struct cpsw_priv {int /*<<< orphan*/  xdp_prog; struct net_device* ndev; struct cpsw_common* cpsw; } ;
struct cpsw_common {int /*<<< orphan*/ * page_pool; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int CPSW_XDP_CONSUMED ; 
 int CPSW_XDP_PASS ; 
 struct bpf_prog* FUNC0 (int /*<<< orphan*/ ) ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int FUNC1 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct xdp_frame* FUNC3 (struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpsw_priv*,struct xdp_frame*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,struct xdp_buff*,struct bpf_prog*) ; 

__attribute__((used)) static int FUNC12(struct cpsw_priv *priv, int ch, struct xdp_buff *xdp,
			struct page *page)
{
	struct cpsw_common *cpsw = priv->cpsw;
	struct net_device *ndev = priv->ndev;
	int ret = CPSW_XDP_CONSUMED;
	struct xdp_frame *xdpf;
	struct bpf_prog *prog;
	u32 act;

	FUNC6();

	prog = FUNC0(priv->xdp_prog);
	if (!prog) {
		ret = CPSW_XDP_PASS;
		goto out;
	}

	act = FUNC1(prog, xdp);
	switch (act) {
	case XDP_PASS:
		ret = CPSW_XDP_PASS;
		break;
	case XDP_TX:
		xdpf = FUNC3(xdp);
		if (FUNC9(!xdpf))
			goto drop;

		FUNC4(priv, xdpf, page);
		break;
	case XDP_REDIRECT:
		if (FUNC11(ndev, xdp, prog))
			goto drop;

		/*  Have to flush here, per packet, instead of doing it in bulk
		 *  at the end of the napi handler. The RX devices on this
		 *  particular hardware is sharing a common queue, so the
		 *  incoming device might change per packet.
		 */
		FUNC10();
		break;
	default:
		FUNC2(act);
		/* fall through */
	case XDP_ABORTED:
		FUNC8(ndev, prog, act);
		/* fall through -- handle aborts by dropping packet */
	case XDP_DROP:
		goto drop;
	}
out:
	FUNC7();
	return ret;
drop:
	FUNC7();
	FUNC5(cpsw->page_pool[ch], page);
	return ret;
}