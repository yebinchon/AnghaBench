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
struct enic {int /*<<< orphan*/  rss_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENIC_RSS_LEN ; 
 int FUNC0 (struct enic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct enic *enic)
{
	FUNC1(enic->rss_key, ENIC_RSS_LEN);

	return FUNC0(enic);
}