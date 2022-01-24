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
typedef  int /*<<< orphan*/  uint ;
struct brcmf_pub {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct brcmf_pub*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC1(struct brcmf_pub *drvr, int ifidx,
				 uint cmd, void *buf, uint len, int *fwerr)
{
	return FUNC0(drvr, ifidx, cmd, buf, len, fwerr);
}