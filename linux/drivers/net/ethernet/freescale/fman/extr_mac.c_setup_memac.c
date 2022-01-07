
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_device {TYPE_1__* priv; int adjust_link; int stop; int start; int set_multi; int set_tstamp; int set_allmulti; int set_exception; int set_rx_pause; int set_tx_pause; int remove_hash_mac_addr; int add_hash_mac_addr; int change_addr; int set_promisc; int init; } ;
struct TYPE_2__ {int disable; int enable; } ;


 int adjust_link_memac ;
 int memac_accept_rx_pause_frames ;
 int memac_add_hash_mac_address ;
 int memac_del_hash_mac_address ;
 int memac_disable ;
 int memac_enable ;
 int memac_initialization ;
 int memac_modify_mac_address ;
 int memac_set_allmulti ;
 int memac_set_exception ;
 int memac_set_promiscuous ;
 int memac_set_tstamp ;
 int memac_set_tx_pause_frames ;
 int set_multi ;
 int start ;
 int stop ;

__attribute__((used)) static void setup_memac(struct mac_device *mac_dev)
{
 mac_dev->init = memac_initialization;
 mac_dev->set_promisc = memac_set_promiscuous;
 mac_dev->change_addr = memac_modify_mac_address;
 mac_dev->add_hash_mac_addr = memac_add_hash_mac_address;
 mac_dev->remove_hash_mac_addr = memac_del_hash_mac_address;
 mac_dev->set_tx_pause = memac_set_tx_pause_frames;
 mac_dev->set_rx_pause = memac_accept_rx_pause_frames;
 mac_dev->set_exception = memac_set_exception;
 mac_dev->set_allmulti = memac_set_allmulti;
 mac_dev->set_tstamp = memac_set_tstamp;
 mac_dev->set_multi = set_multi;
 mac_dev->start = start;
 mac_dev->stop = stop;
 mac_dev->adjust_link = adjust_link_memac;
 mac_dev->priv->enable = memac_enable;
 mac_dev->priv->disable = memac_disable;
}
