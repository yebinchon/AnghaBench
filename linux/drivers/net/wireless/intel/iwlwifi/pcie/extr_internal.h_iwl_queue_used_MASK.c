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
struct iwl_txq {int read_ptr; int write_ptr; } ;

/* Variables and functions */
 int FUNC0 (struct iwl_txq const*,int) ; 

__attribute__((used)) static inline bool FUNC1(const struct iwl_txq *q, int i)
{
	int index = FUNC0(q, i);
	int r = FUNC0(q, q->read_ptr);
	int w = FUNC0(q, q->write_ptr);

	return w >= r ?
		(index >= r && index < w) :
		!(index < r && index >= w);
}