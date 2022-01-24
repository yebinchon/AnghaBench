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
struct mmc_davinci_host {scalar_t__ buffer_bytes_left; scalar_t__ bytes_left; int /*<<< orphan*/  sg; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mmc_davinci_host *host)
{
	host->buffer_bytes_left = FUNC0(host->sg);
	host->buffer = FUNC1(host->sg);
	if (host->buffer_bytes_left > host->bytes_left)
		host->buffer_bytes_left = host->bytes_left;
}