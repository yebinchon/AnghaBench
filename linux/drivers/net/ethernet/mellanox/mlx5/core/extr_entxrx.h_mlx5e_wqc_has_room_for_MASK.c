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
typedef  scalar_t__ u16 ;
struct mlx5_wq_cyc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_wq_cyc*,scalar_t__) ; 

__attribute__((used)) static inline bool
FUNC1(struct mlx5_wq_cyc *wq, u16 cc, u16 pc, u16 n)
{
	return (FUNC0(wq, cc - pc) >= n) || (cc == pc);
}