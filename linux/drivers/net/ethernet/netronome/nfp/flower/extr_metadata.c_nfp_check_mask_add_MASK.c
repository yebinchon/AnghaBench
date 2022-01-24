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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfp_app {int dummy; } ;

/* Variables and functions */
 int NFP_FL_META_FLAG_MANAGE_MASK ; 
 int FUNC0 (struct nfp_app*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfp_app*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(struct nfp_app *app, char *mask_data, u32 mask_len,
		   u8 *meta_flags, u8 *mask_id)
{
	int id;

	id = FUNC1(app, mask_data, mask_len);
	if (id < 0) {
		id = FUNC0(app, mask_data, mask_len);
		if (id < 0)
			return false;
		*meta_flags |= NFP_FL_META_FLAG_MANAGE_MASK;
	}
	*mask_id = id;

	return true;
}