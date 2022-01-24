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
struct netdev_bpf {int command; } ;
struct net_device {int dummy; } ;
struct cpsw_priv {int /*<<< orphan*/  xdpi; } ;

/* Variables and functions */
 int EINVAL ; 
#define  XDP_QUERY_PROG 129 
#define  XDP_SETUP_PROG 128 
 int FUNC0 (struct cpsw_priv*,struct netdev_bpf*) ; 
 struct cpsw_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct netdev_bpf*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, struct netdev_bpf *bpf)
{
	struct cpsw_priv *priv = FUNC1(ndev);

	switch (bpf->command) {
	case XDP_SETUP_PROG:
		return FUNC0(priv, bpf);

	case XDP_QUERY_PROG:
		return FUNC2(&priv->xdpi, bpf);

	default:
		return -EINVAL;
	}
}