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
struct dst_state {int dummy; } ;
struct ca_msg {int /*<<< orphan*/ * msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_CA_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_state*,struct ca_msg*,struct ca_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  verbose ; 
 int /*<<< orphan*/  FUNC6 (struct dst_state*,struct ca_msg*,int,int) ; 

__attribute__((used)) static int FUNC7(struct dst_state *state, struct ca_msg *p_ca_message, struct ca_msg *hw_buffer, u8 reply, u8 query)
{
	u32 length = 0;
	u8 tag_length = 8;

	length = FUNC0(&p_ca_message->msg[3]);
	FUNC2(verbose, DST_CA_DEBUG, 1, " CA Message length=[%d]", length);
	FUNC1(&p_ca_message->msg[4], length, 0); /*	length is excluding tag & length	*/

	FUNC4(hw_buffer->msg, '\0', length);
	FUNC3(state, p_ca_message, hw_buffer, length);
	FUNC5(hw_buffer->msg, hw_buffer->msg[0]);

	FUNC1(hw_buffer->msg, (length + tag_length), 0); /*	tags too	*/
	FUNC6(state, hw_buffer, (length + tag_length), reply);

	return 0;
}