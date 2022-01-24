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
typedef  int /*<<< orphan*/  u64 ;
struct timespec64 {int dummy; } ;
struct sja1105_private {int /*<<< orphan*/  ptp_lock; int /*<<< orphan*/  tstamp_tc; } ;
struct ptp_clock_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct timespec64 FUNC2 (int /*<<< orphan*/ ) ; 
 struct sja1105_private* FUNC3 (struct ptp_clock_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ptp_clock_info *ptp,
			       struct timespec64 *ts)
{
	struct sja1105_private *priv = FUNC3(ptp);
	u64 ns;

	FUNC0(&priv->ptp_lock);
	ns = FUNC4(&priv->tstamp_tc);
	FUNC1(&priv->ptp_lock);

	*ts = FUNC2(ns);

	return 0;
}