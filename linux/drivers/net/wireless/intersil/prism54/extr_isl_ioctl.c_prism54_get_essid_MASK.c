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
union oid_res_t {struct obj_ssid* ptr; } ;
typedef  int /*<<< orphan*/  u8 ;
struct obj_ssid {char* octets; scalar_t__ length; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; size_t length; } ;
typedef  int /*<<< orphan*/  islpci_private ;

/* Variables and functions */
 int /*<<< orphan*/  DOT11_OID_SSID ; 
 scalar_t__ IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct obj_ssid*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,union oid_res_t*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *ndev, struct iw_request_info *info,
		  struct iw_point *dwrq, char *extra)
{
	islpci_private *priv = FUNC4(ndev);
	struct obj_ssid *essid;
	union oid_res_t r;
	int rvalue;

	rvalue = FUNC2(priv, DOT11_OID_SSID, 0, NULL, &r);
	essid = r.ptr;

	if (essid->length) {
		dwrq->flags = 1;	/* set ESSID to ON for Wireless Extensions */
		/* if it is too big, trunk it */
		dwrq->length = FUNC3((u8)IW_ESSID_MAX_SIZE, essid->length);
	} else {
		dwrq->flags = 0;
		dwrq->length = 0;
	}
	essid->octets[dwrq->length] = '\0';
	FUNC1(extra, essid->octets, dwrq->length);
	FUNC0(essid);

	return rvalue;
}