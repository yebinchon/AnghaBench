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
struct work_struct {int dummy; } ;
struct timespec64 {int dummy; } ;
struct sja1105_private {int /*<<< orphan*/  refresh_work; int /*<<< orphan*/  ptp_caps; } ;
struct delayed_work {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SJA1105_REFRESH_INTERVAL ; 
 struct sja1105_private* FUNC0 (struct delayed_work*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct timespec64*) ; 
 struct delayed_work* FUNC3 (struct work_struct*) ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	struct delayed_work *dw = FUNC3(work);
	struct sja1105_private *priv = FUNC0(dw);
	struct timespec64 ts;

	FUNC2(&priv->ptp_caps, &ts);

	FUNC1(&priv->refresh_work, SJA1105_REFRESH_INTERVAL);
}