
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker {struct ofdpa* wpriv; } ;
struct ofdpa_port {int dummy; } ;
struct ofdpa {scalar_t__ fib_aborted; } ;
struct fib_nh {int fib_nh_flags; int fib_nh_dev; } ;
struct fib_entry_notifier_info {int tb_id; int fi; int dst_len; int dst; } ;


 int RTNH_F_OFFLOAD ;
 struct fib_nh* fib_info_nh (int ,int ) ;
 int htonl (int ) ;
 struct ofdpa_port* ofdpa_port_dev_lower_find (int ,struct rocker*) ;
 int ofdpa_port_fib_ipv4 (struct ofdpa_port*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ofdpa_fib4_add(struct rocker *rocker,
     const struct fib_entry_notifier_info *fen_info)
{
 struct ofdpa *ofdpa = rocker->wpriv;
 struct ofdpa_port *ofdpa_port;
 struct fib_nh *nh;
 int err;

 if (ofdpa->fib_aborted)
  return 0;
 nh = fib_info_nh(fen_info->fi, 0);
 ofdpa_port = ofdpa_port_dev_lower_find(nh->fib_nh_dev, rocker);
 if (!ofdpa_port)
  return 0;
 err = ofdpa_port_fib_ipv4(ofdpa_port, htonl(fen_info->dst),
      fen_info->dst_len, fen_info->fi,
      fen_info->tb_id, 0);
 if (err)
  return err;
 nh->fib_nh_flags |= RTNH_F_OFFLOAD;
 return 0;
}
