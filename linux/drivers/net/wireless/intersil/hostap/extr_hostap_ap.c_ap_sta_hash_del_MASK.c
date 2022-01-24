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
struct sta_info {int /*<<< orphan*/  addr; struct sta_info* hnext; } ;
struct ap_data {struct sta_info** sta_hash; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ap_data *ap, struct sta_info *sta)
{
	struct sta_info *s;

	s = ap->sta_hash[FUNC0(sta->addr)];
	if (s == NULL) return;
	if (FUNC1(s->addr, sta->addr)) {
		ap->sta_hash[FUNC0(sta->addr)] = s->hnext;
		return;
	}

	while (s->hnext != NULL && !FUNC1(s->hnext->addr, sta->addr))
		s = s->hnext;
	if (s->hnext != NULL)
		s->hnext = s->hnext->hnext;
	else
		FUNC2("AP: could not remove STA %pM from hash table\n",
		       sta->addr);
}