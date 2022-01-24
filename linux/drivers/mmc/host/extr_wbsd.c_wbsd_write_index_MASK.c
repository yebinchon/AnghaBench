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
struct wbsd_host {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ WBSD_DATAR ; 
 scalar_t__ WBSD_IDXR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(struct wbsd_host *host, u8 index, u8 value)
{
	FUNC0(index, host->base + WBSD_IDXR);
	FUNC0(value, host->base + WBSD_DATAR);
}