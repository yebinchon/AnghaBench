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
struct sd {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (struct sd*,int,int) ; 

__attribute__((used)) static int FUNC1(struct sd *sd, s32 val)
{
	/* Val goes from 0 -> 15 */
	return FUNC0(sd, 0x143a, val | 0xf0);
}