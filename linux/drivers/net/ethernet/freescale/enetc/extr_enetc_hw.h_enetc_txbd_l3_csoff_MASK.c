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
typedef  int u16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENETC_TXBD_L3_START_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline __le16 FUNC2(int start, int hdr_sz, u16 l3_flags)
{
	return FUNC1(l3_flags | FUNC0(hdr_sz) |
			   (start & ENETC_TXBD_L3_START_MASK));
}