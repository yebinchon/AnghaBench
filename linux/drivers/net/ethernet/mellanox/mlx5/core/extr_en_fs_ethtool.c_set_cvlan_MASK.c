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
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cvlan_tag ; 
 int /*<<< orphan*/  first_vid ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *headers_c, void *headers_v, __be16 vlan_tci)
{
	FUNC0(headers_c, cvlan_tag, 1);
	FUNC0(headers_v, cvlan_tag, 1);
	FUNC0(headers_c, first_vid, 0xfff);
	FUNC0(headers_v, first_vid, FUNC1(vlan_tci));
}