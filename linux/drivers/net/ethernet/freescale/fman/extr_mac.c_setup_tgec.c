
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_device {TYPE_1__* priv; int adjust_link; int stop; int start; int set_multi; int set_tstamp; int set_allmulti; int set_exception; int set_rx_pause; int set_tx_pause; int remove_hash_mac_addr; int add_hash_mac_addr; int change_addr; int set_promisc; int init; } ;
struct TYPE_2__ {int disable; int enable; } ;


 int adjust_link_void ;
 int set_multi ;
 int start ;
 int stop ;
 int tgec_accept_rx_pause_frames ;
 int tgec_add_hash_mac_address ;
 int tgec_del_hash_mac_address ;
 int tgec_disable ;
 int tgec_enable ;
 int tgec_initialization ;
 int tgec_modify_mac_address ;
 int tgec_set_allmulti ;
 int tgec_set_exception ;
 int tgec_set_promiscuous ;
 int tgec_set_tstamp ;
 int tgec_set_tx_pause_frames ;

__attribute__((used)) static void setup_tgec(struct mac_device *mac_dev)
{
 mac_dev->init = tgec_initialization;
 mac_dev->set_promisc = tgec_set_promiscuous;
 mac_dev->change_addr = tgec_modify_mac_address;
 mac_dev->add_hash_mac_addr = tgec_add_hash_mac_address;
 mac_dev->remove_hash_mac_addr = tgec_del_hash_mac_address;
 mac_dev->set_tx_pause = tgec_set_tx_pause_frames;
 mac_dev->set_rx_pause = tgec_accept_rx_pause_frames;
 mac_dev->set_exception = tgec_set_exception;
 mac_dev->set_allmulti = tgec_set_allmulti;
 mac_dev->set_tstamp = tgec_set_tstamp;
 mac_dev->set_multi = set_multi;
 mac_dev->start = start;
 mac_dev->stop = stop;
 mac_dev->adjust_link = adjust_link_void;
 mac_dev->priv->enable = tgec_enable;
 mac_dev->priv->disable = tgec_disable;
}
