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
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  in_length ;

/* Variables and functions */
 size_t CHAR_BITS ; 
 size_t DATA_BLOB_LENGTH ; 
 size_t MATCH_DATA_LENGTH ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (scalar_t__*,size_t,size_t*,size_t*) ; 

u32 FUNC2(u8 *in, u32 in_length, u8 *out, u32 out_length, s32 version)
{
	u32 i, j, data_length = 0L;
	u32 offset, length;
	u32 match_data_length = MATCH_DATA_LENGTH;
	u32 bits_avail = CHAR_BITS;
	u32 in_index = 0L;

	if (version > 0)
		--match_data_length;

	for (i = 0; i < out_length; ++i)
		out[i] = 0;

	/* Read number of bytes in data. */
	for (i = 0; i < sizeof(in_length); ++i) {
		data_length = data_length | (
			FUNC1(in,
					CHAR_BITS,
					&bits_avail,
					&in_index) << (i * CHAR_BITS));
	}

	if (data_length > out_length) {
		data_length = 0L;
		return data_length;
	}

	i = 0;
	while (i < data_length) {
		/* A 0 bit indicates literal data. */
		if (FUNC1(in, 1, &bits_avail,
						&in_index) == 0) {
			for (j = 0; j < DATA_BLOB_LENGTH; ++j) {
				if (i < data_length) {
					out[i] = (u8)FUNC1(in,
							CHAR_BITS,
							&bits_avail,
							&in_index);
					i++;
				}
			}
		} else {
			/* A 1 bit indicates offset/length to follow. */
			offset = FUNC1(in, FUNC0((s16)
					(i > match_data_length ?
						match_data_length : i)),
					&bits_avail,
					&in_index);
			length = FUNC1(in, CHAR_BITS,
					&bits_avail,
					&in_index);
			for (j = 0; j < length; ++j) {
				if (i < data_length) {
					out[i] = out[i - offset];
					i++;
				}
			}
		}
	}

	return data_length;
}