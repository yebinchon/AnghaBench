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
typedef  scalar_t__ u32 ;
struct tun_flow_entry {scalar_t__ rps_rxhash; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(struct tun_flow_entry *e, u32 hash)
{
	if (FUNC0(e->rps_rxhash != hash))
		e->rps_rxhash = hash;
}