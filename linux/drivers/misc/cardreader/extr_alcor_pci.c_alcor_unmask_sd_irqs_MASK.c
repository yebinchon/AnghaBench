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
struct alcor_pci_priv {int dummy; } ;

/* Variables and functions */
 int AU6601_INT_CARD_INSERT ; 
 int AU6601_INT_CARD_REMOVE ; 
 int AU6601_INT_CMD_MASK ; 
 int AU6601_INT_DATA_MASK ; 
 int AU6601_INT_OVER_CURRENT_ERR ; 
 int /*<<< orphan*/  AU6601_REG_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct alcor_pci_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct alcor_pci_priv *priv)
{
	FUNC0(priv, AU6601_INT_CMD_MASK | AU6601_INT_DATA_MASK |
		  AU6601_INT_CARD_INSERT | AU6601_INT_CARD_REMOVE |
		  AU6601_INT_OVER_CURRENT_ERR,
		  AU6601_REG_INT_ENABLE);
}