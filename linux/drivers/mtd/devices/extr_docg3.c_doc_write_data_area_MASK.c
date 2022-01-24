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
struct docg3 {int dummy; } ;

/* Variables and functions */
 int DOC_IOSPACE_DATA ; 
 int DOC_READADDRESS ; 
 int DOC_READADDR_ONE_BYTE ; 
 int /*<<< orphan*/  FUNC0 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*,int,int) ; 

__attribute__((used)) static void FUNC3(struct docg3 *docg3, const void *buf, int len)
{
	int i, cdr, len4;
	u16 *src16;
	u8 *src8;

	FUNC0("doc_write_data_area(buf=%p, len=%d)\n", buf, len);
	cdr = len & 0x3;
	len4 = len - cdr;

	FUNC2(docg3, DOC_IOSPACE_DATA, DOC_READADDRESS);
	src16 = (u16 *)buf;
	for (i = 0; i < len4; i += 2) {
		FUNC2(docg3, *src16, DOC_IOSPACE_DATA);
		src16++;
	}

	src8 = (u8 *)src16;
	for (i = 0; i < cdr; i++) {
		FUNC2(docg3, DOC_IOSPACE_DATA | DOC_READADDR_ONE_BYTE,
			   DOC_READADDRESS);
		FUNC1(docg3, *src8, DOC_IOSPACE_DATA);
		src8++;
	}
}