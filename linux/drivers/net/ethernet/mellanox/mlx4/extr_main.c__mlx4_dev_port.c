
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_port_cap {int trans_code; int wavelength; int vendor_oui; int trans_type; int default_sense; int suggested_type; int supported_port_types; int def_mac; int max_tc_eth; int eth_mtu; int max_port_width; int max_pkeys; int max_gids; int ib_mtu; int max_vl; } ;
struct TYPE_4__ {int * trans_code; int * wavelength; int * vendor_oui; int * trans_type; int * default_sense; int * suggested_type; int * supported_type; int * def_mac; int max_tc_eth; int * eth_mtu_cap; int * port_width_cap; int * pkey_table_len; int * gid_table_len; int * ib_mtu_cap; int * vl_cap; } ;
struct TYPE_3__ {int * pkey_phys_table_len; int * gid_phys_table_len; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__ phys_caps; } ;



__attribute__((used)) static int _mlx4_dev_port(struct mlx4_dev *dev, int port,
     struct mlx4_port_cap *port_cap)
{
 dev->caps.vl_cap[port] = port_cap->max_vl;
 dev->caps.ib_mtu_cap[port] = port_cap->ib_mtu;
 dev->phys_caps.gid_phys_table_len[port] = port_cap->max_gids;
 dev->phys_caps.pkey_phys_table_len[port] = port_cap->max_pkeys;



 dev->caps.gid_table_len[port] = port_cap->max_gids;
 dev->caps.pkey_table_len[port] = port_cap->max_pkeys;
 dev->caps.port_width_cap[port] = port_cap->max_port_width;
 dev->caps.eth_mtu_cap[port] = port_cap->eth_mtu;
 dev->caps.max_tc_eth = port_cap->max_tc_eth;
 dev->caps.def_mac[port] = port_cap->def_mac;
 dev->caps.supported_type[port] = port_cap->supported_port_types;
 dev->caps.suggested_type[port] = port_cap->suggested_type;
 dev->caps.default_sense[port] = port_cap->default_sense;
 dev->caps.trans_type[port] = port_cap->trans_type;
 dev->caps.vendor_oui[port] = port_cap->vendor_oui;
 dev->caps.wavelength[port] = port_cap->wavelength;
 dev->caps.trans_code[port] = port_cap->trans_code;

 return 0;
}
