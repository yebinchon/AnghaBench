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
typedef  int u8 ;
typedef  int u32 ;
struct realtek_smi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct realtek_smi*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct realtek_smi*,int,int) ; 

__attribute__((used)) static int FUNC2(struct realtek_smi *smi, u8 *data)
{
	u32 t;

	/* Read data */
	FUNC0(smi, 8, &t);
	*data = (t & 0xff);

	/* Send an ACK */
	FUNC1(smi, 0x00, 1);

	return 0;
}