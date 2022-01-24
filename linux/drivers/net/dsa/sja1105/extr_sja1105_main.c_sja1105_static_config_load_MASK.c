#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sja1105_private {TYPE_1__* info; int /*<<< orphan*/  static_config; } ;
struct sja1105_dt_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device_id; int /*<<< orphan*/  static_ops; } ;

/* Variables and functions */
 int FUNC0 (struct sja1105_private*,int) ; 
 int FUNC1 (struct sja1105_private*) ; 
 int FUNC2 (struct sja1105_private*) ; 
 int FUNC3 (struct sja1105_private*) ; 
 int FUNC4 (struct sja1105_private*) ; 
 int FUNC5 (struct sja1105_private*) ; 
 int FUNC6 (struct sja1105_private*) ; 
 int FUNC7 (struct sja1105_private*,struct sja1105_dt_port*) ; 
 int FUNC8 (struct sja1105_private*) ; 
 int FUNC9 (struct sja1105_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sja1105_private*) ; 

__attribute__((used)) static int FUNC13(struct sja1105_private *priv,
				      struct sja1105_dt_port *ports)
{
	int rc;

	FUNC10(&priv->static_config);
	rc = FUNC11(&priv->static_config,
					priv->info->static_ops,
					priv->info->device_id);
	if (rc)
		return rc;

	/* Build static configuration */
	rc = FUNC6(priv);
	if (rc < 0)
		return rc;
	rc = FUNC7(priv, ports);
	if (rc < 0)
		return rc;
	rc = FUNC8(priv);
	if (rc < 0)
		return rc;
	rc = FUNC9(priv);
	if (rc < 0)
		return rc;
	rc = FUNC4(priv);
	if (rc < 0)
		return rc;
	rc = FUNC2(priv);
	if (rc < 0)
		return rc;
	rc = FUNC3(priv);
	if (rc < 0)
		return rc;
	rc = FUNC5(priv);
	if (rc < 0)
		return rc;
	rc = FUNC1(priv);
	if (rc < 0)
		return rc;
	rc = FUNC0(priv, false);
	if (rc < 0)
		return rc;

	/* Send initial configuration to hardware via SPI */
	return FUNC12(priv);
}