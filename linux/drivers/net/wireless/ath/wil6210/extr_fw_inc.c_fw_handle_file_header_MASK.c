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
struct wil_fw_record_file_header {scalar_t__ comment; int /*<<< orphan*/  data_len; int /*<<< orphan*/  version; } ;
struct wil6210_priv {int /*<<< orphan*/  fw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EINVAL ; 
 int /*<<< orphan*/  WIL_FW_VERSION_PREFIX ; 
 scalar_t__ WIL_FW_VERSION_PREFIX_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC6(struct wil6210_priv *wil, const void *data,
				 size_t size)
{
	const struct wil_fw_record_file_header *d = data;

	if (size != sizeof(*d)) {
		FUNC4(wil, "file header length incorrect: %zu\n", size);
		return -EINVAL;
	}

	FUNC3(wil, "new file, ver. %d, %i bytes\n",
		   d->version, d->data_len);
	FUNC5("", DUMP_PREFIX_OFFSET, 16, 1, d->comment,
			sizeof(d->comment), true);

	if (!FUNC0(d->comment, WIL_FW_VERSION_PREFIX,
		    WIL_FW_VERSION_PREFIX_LEN))
		FUNC1(wil->fw_version,
		       d->comment + WIL_FW_VERSION_PREFIX_LEN,
		       FUNC2(sizeof(d->comment) - WIL_FW_VERSION_PREFIX_LEN,
			   sizeof(wil->fw_version) - 1));

	return 0;
}