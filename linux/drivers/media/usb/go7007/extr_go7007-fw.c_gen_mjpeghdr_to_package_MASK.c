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
typedef  int u16 ;
struct go7007 {int dummy; } ;
typedef  scalar_t__ __le16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct go7007*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct go7007 *go, __le16 *code, int space)
{
	u8 *buf;
	u16 mem = 0x3e00;
	unsigned int addr = 0x19;
	int size = 0, i, off = 0, chunk;

	buf = FUNC2(4096, GFP_KERNEL);
	if (buf == NULL)
		return -ENOMEM;

	for (i = 1; i < 32; ++i) {
		FUNC5(go, buf + size, i);
		size += 80;
	}
	chunk = FUNC5(go, buf + size, 1);
	FUNC4(buf + size, buf + size + 80, chunk - 80);
	size += chunk - 80;

	for (i = 0; i < size; i += chunk * 2) {
		if (space - off < 32) {
			off = -1;
			goto done;
		}

		code[off + 1] = FUNC0(0x8000 | mem);

		chunk = 28;
		if (mem + chunk > 0x4000)
			chunk = 0x4000 - mem;
		if (i + 2 * chunk > size)
			chunk = (size - i) / 2;

		if (chunk < 28) {
			code[off] = FUNC0(0x4000 | chunk);
			code[off + 31] = FUNC0(addr++);
			mem = 0x3e00;
		} else {
			code[off] = FUNC0(0x1000 | 28);
			code[off + 31] = 0;
			mem += 28;
		}

		FUNC3(&code[off + 2], buf + i, chunk * 2);
		off += 32;
	}
done:
	FUNC1(buf);
	return off;
}