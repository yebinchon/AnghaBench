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
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {struct sta_info* hnext; int /*<<< orphan*/  addr; } ;
struct ap_data {struct sta_info** sta_hash; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sta_info* FUNC2(struct ap_data *ap, u8 *sta)
{
	struct sta_info *s;

	s = ap->sta_hash[FUNC0(sta)];
	while (s != NULL && !FUNC1(s->addr, sta))
		s = s->hnext;
	return s;
}