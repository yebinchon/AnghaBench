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
struct vlan_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __wsum FUNC1(__wsum hw_checksum,
					 struct vlan_hdr *vlanh)
{
	return FUNC0(hw_checksum, *(__wsum *)vlanh);
}