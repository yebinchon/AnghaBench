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
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_NVM_DEFAULT_CHUNK_SIZE ; 
 int FUNC0 (struct iwl_mvm*,int,int,int,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct iwl_mvm *mvm, u16 section,
				 const u8 *data, u16 length)
{
	int offset = 0;

	/* copy data in chunks of 2k (and remainder if any) */

	while (offset < length) {
		int chunk_size, ret;

		chunk_size = FUNC1(IWL_NVM_DEFAULT_CHUNK_SIZE,
				 length - offset);

		ret = FUNC0(mvm, section, offset,
					  chunk_size, data + offset);
		if (ret < 0)
			return ret;

		offset += chunk_size;
	}

	return 0;
}