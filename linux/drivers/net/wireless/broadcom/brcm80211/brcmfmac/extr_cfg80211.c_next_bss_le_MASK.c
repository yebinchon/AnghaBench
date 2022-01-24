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
struct brcmf_scan_results {struct brcmf_bss_info_le* bss_info_le; } ;
struct brcmf_bss_info_le {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct brcmf_bss_info_le *
FUNC1(struct brcmf_scan_results *list, struct brcmf_bss_info_le *bss)
{
	if (bss == NULL)
		return list->bss_info_le;
	return (struct brcmf_bss_info_le *)((unsigned long)bss +
					    FUNC0(bss->length));
}