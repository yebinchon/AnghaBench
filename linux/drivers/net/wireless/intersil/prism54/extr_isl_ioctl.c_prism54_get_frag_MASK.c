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
union oid_res_t {int /*<<< orphan*/  u; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  islpci_private ;

/* Variables and functions */
 int /*<<< orphan*/  DOT11_OID_FRAGTHRESH ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,union oid_res_t*) ; 
 int /*<<< orphan*/ * FUNC1 (struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *ndev, struct iw_request_info *info,
		 struct iw_param *vwrq, char *extra)
{
	islpci_private *priv = FUNC1(ndev);
	union oid_res_t r;
	int rvalue;

	rvalue = FUNC0(priv, DOT11_OID_FRAGTHRESH, 0, NULL, &r);
	vwrq->value = r.u;

	return rvalue;
}