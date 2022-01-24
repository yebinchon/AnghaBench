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
struct tifm_sd {int clk_div; int clk_freq; struct tifm_dev* dev; } ;
struct tifm_dev {scalar_t__ addr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ SOCK_MMCSD_BUFFER_CONFIG ; 
 scalar_t__ SOCK_MMCSD_COMMAND ; 
 scalar_t__ SOCK_MMCSD_COMMAND_TO ; 
 scalar_t__ SOCK_MMCSD_CONFIG ; 
 scalar_t__ SOCK_MMCSD_INT_ENABLE ; 
 scalar_t__ SOCK_MMCSD_NUM_BLOCKS ; 
 scalar_t__ SOCK_MMCSD_STATUS ; 
 scalar_t__ SOCK_MMCSD_SYSTEM_CONTROL ; 
 scalar_t__ SOCK_MMCSD_SYSTEM_STATUS ; 
 unsigned int TIFM_MMCSD_BRS ; 
 unsigned int TIFM_MMCSD_CERR ; 
 unsigned int TIFM_MMCSD_EOC ; 
 unsigned int TIFM_MMCSD_ERRMASK ; 
 unsigned int TIFM_MMCSD_INAB ; 
 unsigned int TIFM_MMCSD_POWER ; 
 unsigned int TIFM_MMCSD_RESET ; 
 unsigned int TIFM_MMCSD_RXDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct tifm_sd *host)
{
	int rc;
	unsigned int host_status = 0;
	struct tifm_dev *sock = host->dev;

	FUNC4(0, sock->addr + SOCK_MMCSD_INT_ENABLE);
	host->clk_div = 61;
	host->clk_freq = 20000000;
	FUNC4(TIFM_MMCSD_RESET, sock->addr + SOCK_MMCSD_SYSTEM_CONTROL);
	FUNC4(host->clk_div | TIFM_MMCSD_POWER,
	       sock->addr + SOCK_MMCSD_CONFIG);

	/* wait up to 0.51 sec for reset */
	for (rc = 32; rc <= 256; rc <<= 1) {
		if (1 & FUNC3(sock->addr + SOCK_MMCSD_SYSTEM_STATUS)) {
			rc = 0;
			break;
		}
		FUNC1(rc);
	}

	if (rc) {
		FUNC2("%s : controller failed to reset\n",
		       FUNC0(&sock->dev));
		return -ENODEV;
	}

	FUNC4(0, sock->addr + SOCK_MMCSD_NUM_BLOCKS);
	FUNC4(host->clk_div | TIFM_MMCSD_POWER,
	       sock->addr + SOCK_MMCSD_CONFIG);
	FUNC4(TIFM_MMCSD_RXDE, sock->addr + SOCK_MMCSD_BUFFER_CONFIG);

	// command timeout fixed to 64 clocks for now
	FUNC4(64, sock->addr + SOCK_MMCSD_COMMAND_TO);
	FUNC4(TIFM_MMCSD_INAB, sock->addr + SOCK_MMCSD_COMMAND);

	for (rc = 16; rc <= 64; rc <<= 1) {
		host_status = FUNC3(sock->addr + SOCK_MMCSD_STATUS);
		FUNC4(host_status, sock->addr + SOCK_MMCSD_STATUS);
		if (!(host_status & TIFM_MMCSD_ERRMASK)
		    && (host_status & TIFM_MMCSD_EOC)) {
			rc = 0;
			break;
		}
		FUNC1(rc);
	}

	if (rc) {
		FUNC2("%s : card not ready - probe failed on initialization\n",
		       FUNC0(&sock->dev));
		return -ENODEV;
	}

	FUNC4(TIFM_MMCSD_CERR | TIFM_MMCSD_BRS | TIFM_MMCSD_EOC
	       | TIFM_MMCSD_ERRMASK,
	       sock->addr + SOCK_MMCSD_INT_ENABLE);

	return 0;
}