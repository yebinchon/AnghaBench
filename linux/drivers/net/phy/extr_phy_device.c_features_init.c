
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int linkmode_set_bit_array (int ,int ,int ) ;
 int phy_10_100_features_array ;
 int phy_10gbit_features ;
 int phy_10gbit_features_array ;
 int phy_10gbit_fec_features ;
 int phy_10gbit_fec_features_array ;
 int phy_10gbit_full_features ;
 int phy_10gbit_full_features_array ;
 int phy_all_ports_features_array ;
 int phy_basic_features ;
 int phy_basic_ports_array ;
 int phy_basic_t1_features ;
 int phy_basic_t1_features_array ;
 int phy_fibre_port_array ;
 int phy_gbit_all_ports_features ;
 int phy_gbit_features ;
 int phy_gbit_features_array ;
 int phy_gbit_fibre_features ;

__attribute__((used)) static void features_init(void)
{

 linkmode_set_bit_array(phy_basic_ports_array,
          ARRAY_SIZE(phy_basic_ports_array),
          phy_basic_features);
 linkmode_set_bit_array(phy_10_100_features_array,
          ARRAY_SIZE(phy_10_100_features_array),
          phy_basic_features);


 linkmode_set_bit_array(phy_basic_t1_features_array,
          ARRAY_SIZE(phy_basic_t1_features_array),
          phy_basic_t1_features);


 linkmode_set_bit_array(phy_basic_ports_array,
          ARRAY_SIZE(phy_basic_ports_array),
          phy_gbit_features);
 linkmode_set_bit_array(phy_10_100_features_array,
          ARRAY_SIZE(phy_10_100_features_array),
          phy_gbit_features);
 linkmode_set_bit_array(phy_gbit_features_array,
          ARRAY_SIZE(phy_gbit_features_array),
          phy_gbit_features);


 linkmode_set_bit_array(phy_basic_ports_array,
          ARRAY_SIZE(phy_basic_ports_array),
          phy_gbit_fibre_features);
 linkmode_set_bit_array(phy_10_100_features_array,
          ARRAY_SIZE(phy_10_100_features_array),
          phy_gbit_fibre_features);
 linkmode_set_bit_array(phy_gbit_features_array,
          ARRAY_SIZE(phy_gbit_features_array),
          phy_gbit_fibre_features);
 linkmode_set_bit_array(phy_fibre_port_array,
          ARRAY_SIZE(phy_fibre_port_array),
          phy_gbit_fibre_features);


 linkmode_set_bit_array(phy_all_ports_features_array,
          ARRAY_SIZE(phy_all_ports_features_array),
          phy_gbit_all_ports_features);
 linkmode_set_bit_array(phy_10_100_features_array,
          ARRAY_SIZE(phy_10_100_features_array),
          phy_gbit_all_ports_features);
 linkmode_set_bit_array(phy_gbit_features_array,
          ARRAY_SIZE(phy_gbit_features_array),
          phy_gbit_all_ports_features);


 linkmode_set_bit_array(phy_all_ports_features_array,
          ARRAY_SIZE(phy_all_ports_features_array),
          phy_10gbit_features);
 linkmode_set_bit_array(phy_10_100_features_array,
          ARRAY_SIZE(phy_10_100_features_array),
          phy_10gbit_features);
 linkmode_set_bit_array(phy_gbit_features_array,
          ARRAY_SIZE(phy_gbit_features_array),
          phy_10gbit_features);
 linkmode_set_bit_array(phy_10gbit_features_array,
          ARRAY_SIZE(phy_10gbit_features_array),
          phy_10gbit_features);


 linkmode_set_bit_array(phy_all_ports_features_array,
          ARRAY_SIZE(phy_all_ports_features_array),
          phy_10gbit_full_features);
 linkmode_set_bit_array(phy_10gbit_full_features_array,
          ARRAY_SIZE(phy_10gbit_full_features_array),
          phy_10gbit_full_features);

 linkmode_set_bit_array(phy_10gbit_fec_features_array,
          ARRAY_SIZE(phy_10gbit_fec_features_array),
          phy_10gbit_fec_features);
}
