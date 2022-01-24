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
typedef  size_t u16 ;
struct scatterlist {int dummy; } ;
struct msb_data {size_t* lba_to_pba_table; int read_only; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EIO ; 
 int MEMSTICK_OVERWRITE_UDST ; 
 size_t MS_BLOCK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct msb_data*,size_t) ; 
 size_t FUNC2 (struct msb_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct msb_data*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct msb_data*,size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct msb_data*,size_t,size_t,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(struct msb_data *msb, u16 lba,
	struct scatterlist *sg, int offset)
{
	u16 pba, new_pba;
	int error, try;

	pba = msb->lba_to_pba_table[lba];
	FUNC0("start of a block update at lba  %d, pba %d", lba, pba);

	if (pba != MS_BLOCK_INVALID) {
		FUNC0("setting the update flag on the block");
		FUNC5(msb, pba, 0,
				0xFF & ~MEMSTICK_OVERWRITE_UDST);
	}

	for (try = 0; try < 3; try++) {
		new_pba = FUNC2(msb,
			FUNC3(lba));

		if (new_pba == MS_BLOCK_INVALID) {
			error = -EIO;
			goto out;
		}

		FUNC0("block update: writing updated block to the pba %d",
								new_pba);
		error = FUNC6(msb, new_pba, lba, sg, offset);
		if (error == -EBADMSG) {
			FUNC4(msb, new_pba);
			continue;
		}

		if (error)
			goto out;

		FUNC0("block update: erasing the old block");
		FUNC1(msb, pba);
		msb->lba_to_pba_table[lba] = new_pba;
		return 0;
	}
out:
	if (error) {
		FUNC7("block update error after %d tries,  switching to r/o mode", try);
		msb->read_only = true;
	}
	return error;
}