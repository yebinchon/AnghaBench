
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_nand_controller {int dummy; } ;
struct nand_sdr_timings {int dummy; } ;
struct nand_data_interface {int dummy; } ;
struct nand_chip {int controller; } ;


 scalar_t__ IS_ERR (struct nand_sdr_timings const*) ;
 int NAND_DATA_IFACE_CHECK_ONLY ;
 int PTR_ERR (struct nand_sdr_timings const*) ;
 struct nand_sdr_timings* nand_get_sdr_timings (struct nand_data_interface const*) ;
 int tegra_nand_setup_timing (struct tegra_nand_controller*,struct nand_sdr_timings const*) ;
 struct tegra_nand_controller* to_tegra_ctrl (int ) ;

__attribute__((used)) static int tegra_nand_setup_data_interface(struct nand_chip *chip, int csline,
     const struct nand_data_interface *conf)
{
 struct tegra_nand_controller *ctrl = to_tegra_ctrl(chip->controller);
 const struct nand_sdr_timings *timings;

 timings = nand_get_sdr_timings(conf);
 if (IS_ERR(timings))
  return PTR_ERR(timings);

 if (csline == NAND_DATA_IFACE_CHECK_ONLY)
  return 0;

 tegra_nand_setup_timing(ctrl, timings);

 return 0;
}
