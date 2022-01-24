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
struct go7007 {scalar_t__ ipb; } ;
typedef  scalar_t__ __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  BFRAME_BIDIR ; 
 int /*<<< orphan*/  BFRAME_EMPTY ; 
 int /*<<< orphan*/  BFRAME_POST ; 
 int /*<<< orphan*/  BFRAME_PRE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PFRAME ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct go7007*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct go7007*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct go7007 *go,
					__le16 *code, int space, int *framelen)
{
	u8 *buf;
	u16 mem = 0x3e00;
	unsigned int addr = 0x19;
	int i, off = 0, chunk;

	buf = FUNC2(5120, GFP_KERNEL);
	if (buf == NULL)
		return -ENOMEM;

	framelen[0] = FUNC5(go, buf, 0, PFRAME);
	i = 368;
	framelen[1] = FUNC5(go, buf + i, 0, BFRAME_PRE);
	i += 1632;
	framelen[2] = FUNC5(go, buf + i, 0, BFRAME_POST);
	i += 1432;
	framelen[3] = FUNC5(go, buf + i, 0, BFRAME_BIDIR);
	i += 1632;
	FUNC5(go, buf + i, 0, BFRAME_EMPTY);
	i += 16;
	FUNC6(go, buf + i, 0);
	i += 40;
	for (i = 0; i < 5120; i += chunk * 2) {
		if (space - off < 32) {
			off = -1;
			goto done;
		}

		code[off + 1] = FUNC0(0x8000 | mem);

		chunk = 28;
		if (mem + chunk > 0x4000)
			chunk = 0x4000 - mem;
		if (i + 2 * chunk > 5120)
			chunk = (5120 - i) / 2;

		if (chunk < 28) {
			code[off] = FUNC0(0x4000 | chunk);
			code[off + 31] = FUNC0(addr);
			if (mem + chunk == 0x4000) {
				mem = 0x3e00;
				++addr;
			}
		} else {
			code[off] = FUNC0(0x1000 | 28);
			code[off + 31] = 0;
			mem += 28;
		}

		FUNC3(&code[off + 2], buf + i, chunk * 2);
		off += 32;
	}
	mem = 0x3e00;
	addr = go->ipb ? 0x14f9 : 0x0af9;
	FUNC4(buf, 0, 5120);
	framelen[4] = FUNC5(go, buf, 1, PFRAME);
	i = 368;
	framelen[5] = FUNC5(go, buf + i, 1, BFRAME_PRE);
	i += 1632;
	framelen[6] = FUNC5(go, buf + i, 1, BFRAME_POST);
	i += 1432;
	framelen[7] = FUNC5(go, buf + i, 1, BFRAME_BIDIR);
	i += 1632;
	FUNC5(go, buf + i, 1, BFRAME_EMPTY);
	i += 16;
	for (i = 0; i < 5120; i += chunk * 2) {
		if (space - off < 32) {
			off = -1;
			goto done;
		}

		code[off + 1] = FUNC0(0x8000 | mem);

		chunk = 28;
		if (mem + chunk > 0x4000)
			chunk = 0x4000 - mem;
		if (i + 2 * chunk > 5120)
			chunk = (5120 - i) / 2;

		if (chunk < 28) {
			code[off] = FUNC0(0x4000 | chunk);
			code[off + 31] = FUNC0(addr);
			if (mem + chunk == 0x4000) {
				mem = 0x3e00;
				++addr;
			}
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