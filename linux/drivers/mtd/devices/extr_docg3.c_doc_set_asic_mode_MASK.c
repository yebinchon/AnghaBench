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
struct docg3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOC_ASICMODE ; 
 int /*<<< orphan*/  DOC_ASICMODECONFIRM ; 
 int /*<<< orphan*/  DOC_ASICMODE_MDWREN ; 
 int /*<<< orphan*/  DOC_IOSPACE_IPL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct docg3 *docg3, u8 mode)
{
	int i;

	for (i = 0; i < 12; i++)
		FUNC2(docg3, DOC_IOSPACE_IPL);

	mode |= DOC_ASICMODE_MDWREN;
	FUNC0("doc_set_asic_mode(%02x)\n", mode);
	FUNC3(docg3, mode, DOC_ASICMODE);
	FUNC3(docg3, ~mode, DOC_ASICMODECONFIRM);
	FUNC1(docg3, 1);
}