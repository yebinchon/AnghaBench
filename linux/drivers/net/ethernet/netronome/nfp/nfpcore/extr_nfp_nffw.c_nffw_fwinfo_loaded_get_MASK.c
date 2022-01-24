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
typedef  int u32 ;
struct nffw_fwinfo {int /*<<< orphan*/  loaded__mu_da__mip_off_hi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC1(const struct nffw_fwinfo *fi)
{
	return (FUNC0(fi->loaded__mu_da__mip_off_hi) >> 31) & 1;
}