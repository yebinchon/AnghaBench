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
struct xdp_buff {int dummy; } ;
struct netsec_priv {int /*<<< orphan*/  ndev; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int NETSEC_XDP_CONSUMED ; 
 int NETSEC_XDP_PASS ; 
 int NETSEC_XDP_REDIR ; 
 int NETSEC_XDP_TX ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int FUNC0 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct netsec_priv*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bpf_prog*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct xdp_buff*,struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC5 (struct xdp_buff*) ; 

__attribute__((used)) static u32 FUNC6(struct netsec_priv *priv, struct bpf_prog *prog,
			  struct xdp_buff *xdp)
{
	u32 ret = NETSEC_XDP_PASS;
	int err;
	u32 act;

	act = FUNC0(prog, xdp);

	switch (act) {
	case XDP_PASS:
		ret = NETSEC_XDP_PASS;
		break;
	case XDP_TX:
		ret = FUNC2(priv, xdp);
		if (ret != NETSEC_XDP_TX)
			FUNC5(xdp);
		break;
	case XDP_REDIRECT:
		err = FUNC4(priv->ndev, xdp, prog);
		if (!err) {
			ret = NETSEC_XDP_REDIR;
		} else {
			ret = NETSEC_XDP_CONSUMED;
			FUNC5(xdp);
		}
		break;
	default:
		FUNC1(act);
		/* fall through */
	case XDP_ABORTED:
		FUNC3(priv->ndev, prog, act);
		/* fall through -- handle aborts by dropping packet */
	case XDP_DROP:
		ret = NETSEC_XDP_CONSUMED;
		FUNC5(xdp);
		break;
	}

	return ret;
}