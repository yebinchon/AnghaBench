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
typedef  int /*<<< orphan*/  u16 ;
struct docg3 {int dummy; } ;

/* Variables and functions */
 int DOC_IOSPACE_DATA ; 
 int /*<<< orphan*/  DOC_READADDRESS ; 
 int DOC_READADDR_ONE_BYTE ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct docg3*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct docg3 *docg3, void *buf, int len,
			       int first)
{
	int i, cdr, len4;
	u16 data16, *dst16;
	u8 data8, *dst8;

	FUNC0("doc_read_data_area(buf=%p, len=%d)\n", buf, len);
	cdr = len & 0x1;
	len4 = len - cdr;

	if (first)
		FUNC4(docg3, DOC_IOSPACE_DATA, DOC_READADDRESS);
	dst16 = buf;
	for (i = 0; i < len4; i += 2) {
		data16 = FUNC3(docg3, DOC_IOSPACE_DATA);
		if (dst16) {
			*dst16 = data16;
			dst16++;
		}
	}

	if (cdr) {
		FUNC4(docg3, DOC_IOSPACE_DATA | DOC_READADDR_ONE_BYTE,
			   DOC_READADDRESS);
		FUNC1(docg3, 1);
		dst8 = (u8 *)dst16;
		for (i = 0; i < cdr; i++) {
			data8 = FUNC2(docg3, DOC_IOSPACE_DATA);
			if (dst8) {
				*dst8 = data8;
				dst8++;
			}
		}
	}
}