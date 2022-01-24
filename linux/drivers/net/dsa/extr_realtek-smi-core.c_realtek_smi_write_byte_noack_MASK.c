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
struct realtek_smi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct realtek_smi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct realtek_smi *smi, u8 data)
{
	FUNC0(smi, data, 8);
	return 0;
}