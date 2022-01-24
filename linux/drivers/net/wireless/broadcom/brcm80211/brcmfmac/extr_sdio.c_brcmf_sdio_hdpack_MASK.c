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
typedef  int u32 ;
typedef  int u16 ;
struct brcmf_sdio_hdrinfo {int len; int lastfrm; int seq_num; int channel; int dat_offset; scalar_t__ tail_pad; } ;
struct brcmf_sdio {scalar_t__ txglom; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int SDPCM_CHANNEL_MASK ; 
 int SDPCM_CHANNEL_SHIFT ; 
 int SDPCM_DOFFSET_MASK ; 
 int SDPCM_DOFFSET_SHIFT ; 
 int SDPCM_HWEXT_LEN ; 
 int SDPCM_HWHDR_LEN ; 
 scalar_t__ SDPCM_TX ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*) ; 

__attribute__((used)) static void FUNC3(struct brcmf_sdio *bus, u8 *header,
			      struct brcmf_sdio_hdrinfo *hd_info)
{
	u32 hdrval;
	u8 hdr_offset;

	FUNC0(header, hd_info->len);
	hdr_offset = SDPCM_HWHDR_LEN;

	if (bus->txglom) {
		hdrval = (hd_info->len - hdr_offset) | (hd_info->lastfrm << 24);
		*((__le32 *)(header + hdr_offset)) = FUNC1(hdrval);
		hdrval = (u16)hd_info->tail_pad << 16;
		*(((__le32 *)(header + hdr_offset)) + 1) = FUNC1(hdrval);
		hdr_offset += SDPCM_HWEXT_LEN;
	}

	hdrval = hd_info->seq_num;
	hdrval |= (hd_info->channel << SDPCM_CHANNEL_SHIFT) &
		  SDPCM_CHANNEL_MASK;
	hdrval |= (hd_info->dat_offset << SDPCM_DOFFSET_SHIFT) &
		  SDPCM_DOFFSET_MASK;
	*((__le32 *)(header + hdr_offset)) = FUNC1(hdrval);
	*(((__le32 *)(header + hdr_offset)) + 1) = 0;
	FUNC2(SDPCM_TX + !!(bus->txglom), header);
}