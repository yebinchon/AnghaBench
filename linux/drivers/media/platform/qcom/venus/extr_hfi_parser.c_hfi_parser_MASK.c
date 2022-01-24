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
struct venus_inst {int dummy; } ;
struct venus_core {int dummy; } ;

/* Variables and functions */
 int HFI_ERR_NONE ; 
 int HFI_ERR_SYS_INSUFFICIENT_RESOURCES ; 
#define  HFI_PROPERTY_PARAM_BUFFER_ALLOC_MODE_SUPPORTED 134 
#define  HFI_PROPERTY_PARAM_CAPABILITY_SUPPORTED 133 
#define  HFI_PROPERTY_PARAM_CODEC_MASK_SUPPORTED 132 
#define  HFI_PROPERTY_PARAM_CODEC_SUPPORTED 131 
#define  HFI_PROPERTY_PARAM_MAX_SESSIONS_SUPPORTED 130 
#define  HFI_PROPERTY_PARAM_PROFILE_LEVEL_SUPPORTED 129 
#define  HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SUPPORTED 128 
 int /*<<< orphan*/  FUNC0 (struct venus_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct venus_core*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct venus_core*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct venus_core*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct venus_core*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct venus_core*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct venus_core*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct venus_inst*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct venus_inst*,int*,int*) ; 

u32 FUNC10(struct venus_core *core, struct venus_inst *inst, void *buf,
	       u32 size)
{
	unsigned int words_count = size >> 2;
	u32 *word = buf, *data, codecs = 0, domain = 0;

	if (size % 4)
		return HFI_ERR_SYS_INSUFFICIENT_RESOURCES;

	FUNC9(inst, &codecs, &domain);

	while (words_count) {
		data = word + 1;

		switch (*word) {
		case HFI_PROPERTY_PARAM_CODEC_SUPPORTED:
			FUNC3(core, data);
			FUNC0(core);
			break;
		case HFI_PROPERTY_PARAM_MAX_SESSIONS_SUPPORTED:
			FUNC5(core, data);
			break;
		case HFI_PROPERTY_PARAM_CODEC_MASK_SUPPORTED:
			FUNC4(&codecs, &domain, data);
			break;
		case HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SUPPORTED:
			FUNC7(core, codecs, domain, data);
			break;
		case HFI_PROPERTY_PARAM_CAPABILITY_SUPPORTED:
			FUNC2(core, codecs, domain, data);
			break;
		case HFI_PROPERTY_PARAM_PROFILE_LEVEL_SUPPORTED:
			FUNC6(core, codecs, domain, data);
			break;
		case HFI_PROPERTY_PARAM_BUFFER_ALLOC_MODE_SUPPORTED:
			FUNC1(core, codecs, domain, data);
			break;
		default:
			break;
		}

		word++;
		words_count--;
	}

	FUNC8(inst, codecs, domain);

	return HFI_ERR_NONE;
}