#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct nand_chip *this, u_char *buf, int len)
{
	int i;
	u16 *p = (u16 *) buf;
	len >>= 1;

	for (i = 0; i < len; i++) {
		p[i] = FUNC0(this->legacy.IO_ADDR_R);
		FUNC1(); /* drain writebuffer */
	}
}