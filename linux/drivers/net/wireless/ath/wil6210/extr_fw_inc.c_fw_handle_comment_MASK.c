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
typedef  int u32 ;
struct wil_fw_record_comment_hdr {int /*<<< orphan*/  magic; } ;
struct wil6210_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
#define  WIL_BRD_FILE_MAGIC 130 
#define  WIL_FW_CAPABILITIES_MAGIC 129 
#define  WIL_FW_CONCURRENCY_MAGIC 128 
 int FUNC0 (struct wil6210_priv*,void const*,size_t) ; 
 int FUNC1 (struct wil6210_priv*,void const*,size_t) ; 
 int FUNC2 (struct wil6210_priv*,void const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int,void const*,size_t,int) ; 

__attribute__((used)) static int
FUNC6(struct wil6210_priv *wil, const void *data,
		  size_t size)
{
	const struct wil_fw_record_comment_hdr *hdr = data;
	u32 magic;
	int rc = 0;

	if (size < sizeof(*hdr))
		return 0;

	magic = FUNC3(hdr->magic);

	switch (magic) {
	case WIL_FW_CAPABILITIES_MAGIC:
		FUNC4(wil, "magic is WIL_FW_CAPABILITIES_MAGIC\n");
		rc = FUNC1(wil, data, size);
		break;
	case WIL_BRD_FILE_MAGIC:
		FUNC4(wil, "magic is WIL_BRD_FILE_MAGIC\n");
		rc = FUNC0(wil, data, size);
		break;
	case WIL_FW_CONCURRENCY_MAGIC:
		FUNC4(wil, "magic is WIL_FW_CONCURRENCY_MAGIC\n");
		rc = FUNC2(wil, data, size);
		break;
	default:
		FUNC5("", DUMP_PREFIX_OFFSET, 16, 1,
				data, size, true);
	}

	return rc;
}