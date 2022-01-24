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
struct ath_mci_profile_info {int /*<<< orphan*/  list; } ;
struct ath_mci_profile {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_mci_profile*,struct ath_mci_profile_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_mci_profile_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ath_common *common,
				struct ath_mci_profile *mci,
				struct ath_mci_profile_info *entry)
{
	if (!entry)
		return;

	FUNC0(mci, entry);
	FUNC2(&entry->list);
	FUNC1(entry);
}