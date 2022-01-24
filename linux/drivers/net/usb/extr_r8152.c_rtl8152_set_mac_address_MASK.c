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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct r8152 {int /*<<< orphan*/  intf; int /*<<< orphan*/  control; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BYTE_EN_SIX_BYTES ; 
 int /*<<< orphan*/  CRWECR_CONFIG ; 
 int /*<<< orphan*/  CRWECR_NORAML ; 
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  PLA_CRWECR ; 
 int /*<<< orphan*/  PLA_IDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev, void *p)
{
	struct r8152 *tp = FUNC4(netdev);
	struct sockaddr *addr = p;
	int ret = -EADDRNOTAVAIL;

	if (!FUNC0(addr->sa_data))
		goto out1;

	ret = FUNC7(tp->intf);
	if (ret < 0)
		goto out1;

	FUNC2(&tp->control);

	FUNC1(netdev->dev_addr, addr->sa_data, netdev->addr_len);

	FUNC5(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_CONFIG);
	FUNC6(tp, PLA_IDR, BYTE_EN_SIX_BYTES, 8, addr->sa_data);
	FUNC5(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_NORAML);

	FUNC3(&tp->control);

	FUNC8(tp->intf);
out1:
	return ret;
}