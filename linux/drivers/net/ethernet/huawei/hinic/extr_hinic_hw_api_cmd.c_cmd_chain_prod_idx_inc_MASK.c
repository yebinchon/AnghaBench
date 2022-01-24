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
struct hinic_api_cmd_chain {scalar_t__ prod_idx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hinic_api_cmd_chain*,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(struct hinic_api_cmd_chain *chain)
{
	chain->prod_idx = FUNC0(chain, chain->prod_idx + 1);
}