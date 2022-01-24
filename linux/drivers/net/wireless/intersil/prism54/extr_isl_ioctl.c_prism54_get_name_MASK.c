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
union oid_res_t {int u; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef  int /*<<< orphan*/  islpci_private ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
#define  INL_PHYCAP_2400MHZ 130 
#define  INL_PHYCAP_5000MHZ 129 
#define  INL_PHYCAP_FAA 128 
 int /*<<< orphan*/  OID_INL_PHYCAPABILITIES ; 
 scalar_t__ PRV_STATE_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,union oid_res_t*) ; 
 int /*<<< orphan*/ * FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct net_device *ndev, struct iw_request_info *info,
		 char *cwrq, char *extra)
{
	islpci_private *priv = FUNC2(ndev);
	char *capabilities;
	union oid_res_t r;
	int rvalue;

	if (FUNC0(priv) < PRV_STATE_INIT) {
		FUNC3(cwrq, "NOT READY!", IFNAMSIZ);
		return 0;
	}
	rvalue = FUNC1(priv, OID_INL_PHYCAPABILITIES, 0, NULL, &r);

	switch (r.u) {
	case INL_PHYCAP_5000MHZ:
		capabilities = "IEEE 802.11a/b/g";
		break;
	case INL_PHYCAP_FAA:
		capabilities = "IEEE 802.11b/g - FAA Support";
		break;
	case INL_PHYCAP_2400MHZ:
	default:
		capabilities = "IEEE 802.11b/g";	/* Default */
		break;
	}
	FUNC3(cwrq, capabilities, IFNAMSIZ);
	return rvalue;
}