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
struct sja1105_private {int /*<<< orphan*/  ptp_lock; int /*<<< orphan*/  tstamp_cc; int /*<<< orphan*/  tstamp_tc; } ;
struct ptp_clock_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sja1105_private* FUNC2 (struct ptp_clock_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct timespec64 const*) ; 

__attribute__((used)) static int FUNC5(struct ptp_clock_info *ptp,
			       const struct timespec64 *ts)
{
	struct sja1105_private *priv = FUNC2(ptp);
	u64 ns = FUNC4(ts);

	FUNC0(&priv->ptp_lock);
	FUNC3(&priv->tstamp_tc, &priv->tstamp_cc, ns);
	FUNC1(&priv->ptp_lock);

	return 0;
}