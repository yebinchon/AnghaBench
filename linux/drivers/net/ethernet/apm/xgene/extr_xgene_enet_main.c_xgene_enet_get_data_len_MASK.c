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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BUFDATALEN ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SIZE_16K ; 
 int SIZE_2K ; 
 int SIZE_4K ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static u16 FUNC4(u64 bufdatalen)
{
	u16 hw_len, mask;

	hw_len = FUNC2(BUFDATALEN, bufdatalen);

	if (FUNC3(hw_len == 0x7800)) {
		return 0;
	} else if (!(hw_len & FUNC0(14))) {
		mask = FUNC1(13, 0);
		return (hw_len & mask) ? (hw_len & mask) : SIZE_16K;
	} else if (!(hw_len & FUNC1(13, 12))) {
		mask = FUNC1(11, 0);
		return (hw_len & mask) ? (hw_len & mask) : SIZE_4K;
	} else {
		mask = FUNC1(11, 0);
		return (hw_len & mask) ? (hw_len & mask) : SIZE_2K;
	}
}