#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sja1105_status {int dummy; } ;
struct sja1105_regs {int /*<<< orphan*/  status; } ;
struct sja1105_private {TYPE_1__* info; } ;
struct TYPE_2__ {struct sja1105_regs* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_READ ; 
 int FUNC0 (struct sja1105_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sja1105_status*) ; 

__attribute__((used)) static int FUNC2(struct sja1105_private *priv,
			      struct sja1105_status *status)
{
	const struct sja1105_regs *regs = priv->info->regs;
	u8 packed_buf[4];
	int rc;

	rc = FUNC0(priv, SPI_READ,
					 regs->status,
					 packed_buf, 4);
	if (rc < 0)
		return rc;

	FUNC1(packed_buf, status);

	return 0;
}