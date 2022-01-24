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
typedef  int /*<<< orphan*/  tmp ;
struct usbnet {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  RNDIS_OID_802_11_BSSID_LIST_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct usbnet *usbdev)
{
	__le32 tmp;

	/* Note: RNDIS_OID_802_11_BSSID_LIST_SCAN clears internal BSS list. */
	tmp = FUNC0(1);
	return FUNC1(usbdev, RNDIS_OID_802_11_BSSID_LIST_SCAN, &tmp,
							sizeof(tmp));
}