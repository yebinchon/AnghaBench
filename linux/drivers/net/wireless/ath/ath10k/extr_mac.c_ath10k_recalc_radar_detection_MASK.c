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
struct ath10k {scalar_t__ num_started_vdevs; int /*<<< orphan*/  hw; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ath10k *ar)
{
	int ret;

	FUNC5(&ar->conf_mutex);

	FUNC2(ar);

	if (!FUNC0(ar))
		return;

	if (ar->num_started_vdevs > 0)
		return;

	ret = FUNC1(ar);
	if (ret) {
		/*
		 * Not possible to start CAC on current channel so starting
		 * radiation is not allowed, make this channel DFS_UNAVAILABLE
		 * by indicating that radar was detected.
		 */
		FUNC3(ar, "failed to start CAC: %d\n", ret);
		FUNC4(ar->hw);
	}
}