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
struct xdp_frame {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct cpsw_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ CPSW_MIN_PACKET_SIZE ; 
 int EINVAL ; 
 int XDP_XMIT_FLAGS_MASK ; 
 scalar_t__ FUNC0 (struct cpsw_priv*,struct xdp_frame*,int /*<<< orphan*/ *) ; 
 struct cpsw_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xdp_frame*) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev, int n,
			     struct xdp_frame **frames, u32 flags)
{
	struct cpsw_priv *priv = FUNC1(ndev);
	struct xdp_frame *xdpf;
	int i, drops = 0;

	if (FUNC2(flags & ~XDP_XMIT_FLAGS_MASK))
		return -EINVAL;

	for (i = 0; i < n; i++) {
		xdpf = frames[i];
		if (xdpf->len < CPSW_MIN_PACKET_SIZE) {
			FUNC3(xdpf);
			drops++;
			continue;
		}

		if (FUNC0(priv, xdpf, NULL))
			drops++;
	}

	return n - drops;
}