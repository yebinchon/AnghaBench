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
struct l2_fhdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_RX_ALIGN ; 
 scalar_t__ NET_SKB_PAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct l2_fhdr *FUNC1(u8 *data)
{
	return (struct l2_fhdr *)(FUNC0(data, BNX2_RX_ALIGN) + NET_SKB_PAD);
}