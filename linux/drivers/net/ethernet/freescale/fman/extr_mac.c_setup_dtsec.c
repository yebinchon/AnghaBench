
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_device {TYPE_1__* priv; int adjust_link; int stop; int start; int set_multi; int set_tstamp; int set_allmulti; int set_exception; int set_rx_pause; int set_tx_pause; int remove_hash_mac_addr; int add_hash_mac_addr; int change_addr; int set_promisc; int init; } ;
struct TYPE_2__ {int disable; int enable; } ;


 int adjust_link_dtsec ;
 int dtsec_accept_rx_pause_frames ;
 int dtsec_add_hash_mac_address ;
 int dtsec_del_hash_mac_address ;
 int dtsec_disable ;
 int dtsec_enable ;
 int dtsec_initialization ;
 int dtsec_modify_mac_address ;
 int dtsec_set_allmulti ;
 int dtsec_set_exception ;
 int dtsec_set_promiscuous ;
 int dtsec_set_tstamp ;
 int dtsec_set_tx_pause_frames ;
 int set_multi ;
 int start ;
 int stop ;

__attribute__((used)) static void setup_dtsec(struct mac_device *mac_dev)
{
 mac_dev->init = dtsec_initialization;
 mac_dev->set_promisc = dtsec_set_promiscuous;
 mac_dev->change_addr = dtsec_modify_mac_address;
 mac_dev->add_hash_mac_addr = dtsec_add_hash_mac_address;
 mac_dev->remove_hash_mac_addr = dtsec_del_hash_mac_address;
 mac_dev->set_tx_pause = dtsec_set_tx_pause_frames;
 mac_dev->set_rx_pause = dtsec_accept_rx_pause_frames;
 mac_dev->set_exception = dtsec_set_exception;
 mac_dev->set_allmulti = dtsec_set_allmulti;
 mac_dev->set_tstamp = dtsec_set_tstamp;
 mac_dev->set_multi = set_multi;
 mac_dev->start = start;
 mac_dev->stop = stop;
 mac_dev->adjust_link = adjust_link_dtsec;
 mac_dev->priv->enable = dtsec_enable;
 mac_dev->priv->disable = dtsec_disable;
}
