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
typedef  int u64 ;
struct octeon_device {scalar_t__ chip; } ;
struct octeon_cn6xxx {int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_CTL ; 
 int FUNC2 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct octeon_device *oct)
{
	u64 pktctl;

	struct octeon_cn6xxx *cn6xxx = (struct octeon_cn6xxx *)oct->chip;

	pktctl = FUNC2(oct, CN6XXX_SLI_PKT_CTL);

	/* 66XX SPECIFIC */
	if (FUNC1(cn6xxx->conf) <= 4)
		/* Disable RING_EN if only upto 4 rings are used. */
		pktctl &= ~(1 << 4);
	else
		pktctl |= (1 << 4);

	if (FUNC0(cn6xxx->conf))
		pktctl |= 0xF;
	else
		/* Disable per-port backpressure. */
		pktctl &= ~0xF;
	FUNC3(oct, CN6XXX_SLI_PKT_CTL, pktctl);
}