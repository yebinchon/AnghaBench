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
typedef  int /*<<< orphan*/  u32 ;
struct brcmf_if {int dummy; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  data_le ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct brcmf_if*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

s32
FUNC3(struct brcmf_if *ifp, char *name, u32 *data)
{
	__le32 data_le = FUNC1(*data);
	s32 err;

	err = FUNC0(ifp, name, &data_le,
					sizeof(data_le));
	if (err == 0)
		*data = FUNC2(data_le);
	return err;
}