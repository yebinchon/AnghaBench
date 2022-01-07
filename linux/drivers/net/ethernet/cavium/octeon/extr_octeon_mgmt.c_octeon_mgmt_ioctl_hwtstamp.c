
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptp_en; int ext_clk_in; int ext_clk_en; } ;
union cvmx_mio_ptp_clock_cfg {int u64; TYPE_1__ s; } ;
struct TYPE_4__ {int ptp_mode; } ;
union cvmx_agl_gmx_rxx_frm_ctl {int u64; TYPE_2__ s; } ;
typedef int u64 ;
struct octeon_mgmt {int has_rx_tstamp; scalar_t__ agl; } ;
struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
typedef int config ;


 scalar_t__ AGL_GMX_RX_FRM_CTL ;
 scalar_t__ CVMX_MIO_PTP_CLOCK_CFG ;
 scalar_t__ CVMX_MIO_PTP_CLOCK_COMP ;
 int EFAULT ;
 int EINVAL ;
 int ERANGE ;
 int NSEC_PER_SEC ;
 int OCTEON_CN6XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 void* cvmx_read_csr (scalar_t__) ;
 int cvmx_write_csr (scalar_t__,int) ;
 int netdev_info (struct net_device*,char*,int,...) ;
 struct octeon_mgmt* netdev_priv (struct net_device*) ;
 int octeon_get_io_clock_rate () ;

__attribute__((used)) static int octeon_mgmt_ioctl_hwtstamp(struct net_device *netdev,
          struct ifreq *rq, int cmd)
{
 struct octeon_mgmt *p = netdev_priv(netdev);
 struct hwtstamp_config config;
 union cvmx_mio_ptp_clock_cfg ptp;
 union cvmx_agl_gmx_rxx_frm_ctl rxx_frm_ctl;
 bool have_hw_timestamps = 0;

 if (copy_from_user(&config, rq->ifr_data, sizeof(config)))
  return -EFAULT;

 if (config.flags)
  return -EINVAL;


 if (OCTEON_IS_MODEL(OCTEON_CN6XXX)) {

  ptp.u64 = cvmx_read_csr(CVMX_MIO_PTP_CLOCK_CFG);
  if (!ptp.s.ext_clk_en) {




   u64 clock_comp = (NSEC_PER_SEC << 32) / octeon_get_io_clock_rate();
   if (!ptp.s.ptp_en)
    cvmx_write_csr(CVMX_MIO_PTP_CLOCK_COMP, clock_comp);
   netdev_info(netdev,
        "PTP Clock using sclk reference @ %lldHz\n",
        (NSEC_PER_SEC << 32) / clock_comp);
  } else {

   u64 clock_comp = cvmx_read_csr(CVMX_MIO_PTP_CLOCK_COMP);
   netdev_info(netdev,
        "PTP Clock using GPIO%d @ %lld Hz\n",
        ptp.s.ext_clk_in, (NSEC_PER_SEC << 32) / clock_comp);
  }


  if (!ptp.s.ptp_en) {
   ptp.s.ptp_en = 1;
   cvmx_write_csr(CVMX_MIO_PTP_CLOCK_CFG, ptp.u64);
  }
  have_hw_timestamps = 1;
 }

 if (!have_hw_timestamps)
  return -EINVAL;

 switch (config.tx_type) {
 case 129:
 case 128:
  break;
 default:
  return -ERANGE;
 }

 switch (config.rx_filter) {
 case 144:
  p->has_rx_tstamp = 0;
  rxx_frm_ctl.u64 = cvmx_read_csr(p->agl + AGL_GMX_RX_FRM_CTL);
  rxx_frm_ctl.s.ptp_mode = 0;
  cvmx_write_csr(p->agl + AGL_GMX_RX_FRM_CTL, rxx_frm_ctl.u64);
  break;
 case 145:
 case 130:
 case 141:
 case 140:
 case 142:
 case 133:
 case 132:
 case 134:
 case 136:
 case 135:
 case 137:
 case 138:
 case 131:
 case 139:
 case 143:
  p->has_rx_tstamp = have_hw_timestamps;
  config.rx_filter = 145;
  if (p->has_rx_tstamp) {
   rxx_frm_ctl.u64 = cvmx_read_csr(p->agl + AGL_GMX_RX_FRM_CTL);
   rxx_frm_ctl.s.ptp_mode = 1;
   cvmx_write_csr(p->agl + AGL_GMX_RX_FRM_CTL, rxx_frm_ctl.u64);
  }
  break;
 default:
  return -ERANGE;
 }

 if (copy_to_user(rq->ifr_data, &config, sizeof(config)))
  return -EFAULT;

 return 0;
}
