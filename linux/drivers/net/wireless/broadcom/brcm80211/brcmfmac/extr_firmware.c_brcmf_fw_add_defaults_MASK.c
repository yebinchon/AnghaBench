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
struct nvram_parser {char* nvram; size_t nvram_len; scalar_t__ boardrev_found; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_FW_DEFAULT_BOARDREV ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nvram_parser *nvp)
{
	if (nvp->boardrev_found)
		return;

	FUNC0(&nvp->nvram[nvp->nvram_len], &BRCMF_FW_DEFAULT_BOARDREV,
	       FUNC1(BRCMF_FW_DEFAULT_BOARDREV));
	nvp->nvram_len += FUNC1(BRCMF_FW_DEFAULT_BOARDREV);
	nvp->nvram[nvp->nvram_len] = '\0';
	nvp->nvram_len++;
}