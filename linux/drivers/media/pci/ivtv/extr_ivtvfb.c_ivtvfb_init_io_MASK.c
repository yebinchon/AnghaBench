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
struct osd_info {int video_rbase; int video_buffer_size; int video_pbase; int video_vbase; int fb_start_aligned_physaddr; int fb_end_aligned_physaddr; int /*<<< orphan*/  wc_cookie; } ;
struct ivtv {int base_addr; int dec_mem; int /*<<< orphan*/  serialize_lock; struct osd_info* osd_info; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int IVTV_DECODER_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (struct ivtv*) ; 
 scalar_t__ FUNC4 (struct ivtv*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ivtv *itv)
{
	struct osd_info *oi = itv->osd_info;
	/* Find the largest power of two that maps the whole buffer */
	int size_shift = 31;

	FUNC6(&itv->serialize_lock);
	if (FUNC3(itv)) {
		FUNC7(&itv->serialize_lock);
		FUNC0("Failed to initialize ivtv\n");
		return -ENXIO;
	}
	FUNC7(&itv->serialize_lock);

	if (FUNC4(itv, &oi->video_rbase,
					&oi->video_buffer_size) < 0) {
		FUNC0("Firmware failed to respond\n");
		return -EIO;
	}

	/* The osd buffer size depends on the number of video buffers allocated
	   on the PVR350 itself. For now we'll hardcode the smallest osd buffer
	   size to prevent any overlap. */
	oi->video_buffer_size = 1704960;

	oi->video_pbase = itv->base_addr + IVTV_DECODER_OFFSET + oi->video_rbase;
	oi->video_vbase = itv->dec_mem + oi->video_rbase;

	if (!oi->video_vbase) {
		FUNC0("abort, video memory 0x%x @ 0x%lx isn't mapped!\n",
		     oi->video_buffer_size, oi->video_pbase);
		return -EIO;
	}

	FUNC1("Framebuffer at 0x%lx, mapped to 0x%p, size %dk\n",
			oi->video_pbase, oi->video_vbase,
			oi->video_buffer_size / 1024);

	while (!(oi->video_buffer_size & (1 << size_shift)))
		size_shift--;
	size_shift++;
	oi->fb_start_aligned_physaddr = oi->video_pbase & ~((1 << size_shift) - 1);
	oi->fb_end_aligned_physaddr = oi->video_pbase + oi->video_buffer_size;
	oi->fb_end_aligned_physaddr += (1 << size_shift) - 1;
	oi->fb_end_aligned_physaddr &= ~((1 << size_shift) - 1);
	oi->wc_cookie = FUNC2(oi->fb_start_aligned_physaddr,
					 oi->fb_end_aligned_physaddr -
					 oi->fb_start_aligned_physaddr);
	/* Blank the entire osd. */
	FUNC5(oi->video_vbase, 0, oi->video_buffer_size);

	return 0;
}