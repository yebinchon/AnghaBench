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
struct iavf_adapter {int /*<<< orphan*/ * rss_lut; int /*<<< orphan*/ * rss_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct iavf_adapter *adapter)
{
	FUNC0(adapter->rss_key);
	adapter->rss_key = NULL;

	FUNC0(adapter->rss_lut);
	adapter->rss_lut = NULL;
}