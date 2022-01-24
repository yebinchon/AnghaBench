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
struct devlink {int dummy; } ;
struct bnxt_dl {struct bnxt* bp; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct devlink*) ; 

__attribute__((used)) static inline struct bnxt *FUNC1(struct devlink *dl)
{
	return ((struct bnxt_dl *)FUNC0(dl))->bp;
}