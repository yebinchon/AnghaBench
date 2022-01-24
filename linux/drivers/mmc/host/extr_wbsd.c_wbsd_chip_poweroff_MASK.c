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
struct wbsd_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_SD ; 
 int /*<<< orphan*/  WBSD_CONF_DEVICE ; 
 int /*<<< orphan*/  WBSD_CONF_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct wbsd_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct wbsd_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct wbsd_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wbsd_host *host)
{
	FUNC1(host);

	FUNC2(host, WBSD_CONF_DEVICE, DEVICE_SD);
	FUNC2(host, WBSD_CONF_ENABLE, 0);

	FUNC0(host);
}