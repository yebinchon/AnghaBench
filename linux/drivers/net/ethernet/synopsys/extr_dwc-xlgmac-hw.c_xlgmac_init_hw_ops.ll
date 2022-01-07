; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_init_hw_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_init_hw_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_hw_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@xlgmac_hw_init = common dso_local global i32 0, align 4
@xlgmac_hw_exit = common dso_local global i32 0, align 4
@xlgmac_tx_complete = common dso_local global i32 0, align 4
@xlgmac_enable_tx = common dso_local global i32 0, align 4
@xlgmac_disable_tx = common dso_local global i32 0, align 4
@xlgmac_enable_rx = common dso_local global i32 0, align 4
@xlgmac_disable_rx = common dso_local global i32 0, align 4
@xlgmac_dev_xmit = common dso_local global i32 0, align 4
@xlgmac_dev_read = common dso_local global i32 0, align 4
@xlgmac_enable_int = common dso_local global i32 0, align 4
@xlgmac_disable_int = common dso_local global i32 0, align 4
@xlgmac_set_mac_address = common dso_local global i32 0, align 4
@xlgmac_config_rx_mode = common dso_local global i32 0, align 4
@xlgmac_enable_rx_csum = common dso_local global i32 0, align 4
@xlgmac_disable_rx_csum = common dso_local global i32 0, align 4
@xlgmac_set_xlgmii_25000_speed = common dso_local global i32 0, align 4
@xlgmac_set_xlgmii_40000_speed = common dso_local global i32 0, align 4
@xlgmac_set_xlgmii_50000_speed = common dso_local global i32 0, align 4
@xlgmac_set_xlgmii_100000_speed = common dso_local global i32 0, align 4
@xlgmac_tx_desc_init = common dso_local global i32 0, align 4
@xlgmac_rx_desc_init = common dso_local global i32 0, align 4
@xlgmac_tx_desc_reset = common dso_local global i32 0, align 4
@xlgmac_rx_desc_reset = common dso_local global i32 0, align 4
@xlgmac_is_last_desc = common dso_local global i32 0, align 4
@xlgmac_is_context_desc = common dso_local global i32 0, align 4
@xlgmac_tx_start_xmit = common dso_local global i32 0, align 4
@xlgmac_config_tx_flow_control = common dso_local global i32 0, align 4
@xlgmac_config_rx_flow_control = common dso_local global i32 0, align 4
@xlgmac_enable_rx_vlan_stripping = common dso_local global i32 0, align 4
@xlgmac_disable_rx_vlan_stripping = common dso_local global i32 0, align 4
@xlgmac_enable_rx_vlan_filtering = common dso_local global i32 0, align 4
@xlgmac_disable_rx_vlan_filtering = common dso_local global i32 0, align 4
@xlgmac_update_vlan_hash_table = common dso_local global i32 0, align 4
@xlgmac_config_rx_coalesce = common dso_local global i32 0, align 4
@xlgmac_config_tx_coalesce = common dso_local global i32 0, align 4
@xlgmac_usec_to_riwt = common dso_local global i32 0, align 4
@xlgmac_riwt_to_usec = common dso_local global i32 0, align 4
@xlgmac_config_rx_threshold = common dso_local global i32 0, align 4
@xlgmac_config_tx_threshold = common dso_local global i32 0, align 4
@xlgmac_config_rsf_mode = common dso_local global i32 0, align 4
@xlgmac_config_tsf_mode = common dso_local global i32 0, align 4
@xlgmac_config_osp_mode = common dso_local global i32 0, align 4
@xlgmac_config_rx_pbl_val = common dso_local global i32 0, align 4
@xlgmac_get_rx_pbl_val = common dso_local global i32 0, align 4
@xlgmac_config_tx_pbl_val = common dso_local global i32 0, align 4
@xlgmac_get_tx_pbl_val = common dso_local global i32 0, align 4
@xlgmac_config_pblx8 = common dso_local global i32 0, align 4
@xlgmac_tx_mmc_int = common dso_local global i32 0, align 4
@xlgmac_rx_mmc_int = common dso_local global i32 0, align 4
@xlgmac_read_mmc_stats = common dso_local global i32 0, align 4
@xlgmac_enable_rss = common dso_local global i32 0, align 4
@xlgmac_disable_rss = common dso_local global i32 0, align 4
@xlgmac_set_rss_hash_key = common dso_local global i32 0, align 4
@xlgmac_set_rss_lookup_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlgmac_init_hw_ops(%struct.xlgmac_hw_ops* %0) #0 {
  %2 = alloca %struct.xlgmac_hw_ops*, align 8
  store %struct.xlgmac_hw_ops* %0, %struct.xlgmac_hw_ops** %2, align 8
  %3 = load i32, i32* @xlgmac_hw_init, align 4
  %4 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %5 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %4, i32 0, i32 53
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @xlgmac_hw_exit, align 4
  %7 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %8 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %7, i32 0, i32 52
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @xlgmac_tx_complete, align 4
  %10 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %11 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %10, i32 0, i32 51
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @xlgmac_enable_tx, align 4
  %13 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %14 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %13, i32 0, i32 50
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @xlgmac_disable_tx, align 4
  %16 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %17 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %16, i32 0, i32 49
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @xlgmac_enable_rx, align 4
  %19 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %20 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %19, i32 0, i32 48
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @xlgmac_disable_rx, align 4
  %22 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %23 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %22, i32 0, i32 47
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @xlgmac_dev_xmit, align 4
  %25 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %26 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %25, i32 0, i32 46
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @xlgmac_dev_read, align 4
  %28 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %29 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %28, i32 0, i32 45
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @xlgmac_enable_int, align 4
  %31 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %32 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %31, i32 0, i32 44
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @xlgmac_disable_int, align 4
  %34 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %35 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %34, i32 0, i32 43
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @xlgmac_set_mac_address, align 4
  %37 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %38 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %37, i32 0, i32 42
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @xlgmac_config_rx_mode, align 4
  %40 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %41 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %40, i32 0, i32 41
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @xlgmac_enable_rx_csum, align 4
  %43 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %44 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %43, i32 0, i32 40
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @xlgmac_disable_rx_csum, align 4
  %46 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %47 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %46, i32 0, i32 39
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @xlgmac_set_xlgmii_25000_speed, align 4
  %49 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %50 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %49, i32 0, i32 38
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @xlgmac_set_xlgmii_40000_speed, align 4
  %52 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %53 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %52, i32 0, i32 37
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @xlgmac_set_xlgmii_50000_speed, align 4
  %55 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %56 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %55, i32 0, i32 36
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @xlgmac_set_xlgmii_100000_speed, align 4
  %58 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %59 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %58, i32 0, i32 35
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @xlgmac_tx_desc_init, align 4
  %61 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %62 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %61, i32 0, i32 34
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @xlgmac_rx_desc_init, align 4
  %64 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %65 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %64, i32 0, i32 33
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @xlgmac_tx_desc_reset, align 4
  %67 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %68 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %67, i32 0, i32 32
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @xlgmac_rx_desc_reset, align 4
  %70 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %71 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %70, i32 0, i32 31
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @xlgmac_is_last_desc, align 4
  %73 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %74 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %73, i32 0, i32 30
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @xlgmac_is_context_desc, align 4
  %76 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %77 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %76, i32 0, i32 29
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @xlgmac_tx_start_xmit, align 4
  %79 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %80 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %79, i32 0, i32 28
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @xlgmac_config_tx_flow_control, align 4
  %82 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %83 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %82, i32 0, i32 27
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @xlgmac_config_rx_flow_control, align 4
  %85 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %86 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %85, i32 0, i32 26
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @xlgmac_enable_rx_vlan_stripping, align 4
  %88 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %89 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %88, i32 0, i32 25
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @xlgmac_disable_rx_vlan_stripping, align 4
  %91 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %92 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %91, i32 0, i32 24
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @xlgmac_enable_rx_vlan_filtering, align 4
  %94 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %95 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %94, i32 0, i32 23
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @xlgmac_disable_rx_vlan_filtering, align 4
  %97 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %98 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %97, i32 0, i32 22
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @xlgmac_update_vlan_hash_table, align 4
  %100 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %101 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %100, i32 0, i32 21
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @xlgmac_config_rx_coalesce, align 4
  %103 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %104 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %103, i32 0, i32 20
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @xlgmac_config_tx_coalesce, align 4
  %106 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %107 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %106, i32 0, i32 19
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @xlgmac_usec_to_riwt, align 4
  %109 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %110 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %109, i32 0, i32 18
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @xlgmac_riwt_to_usec, align 4
  %112 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %113 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %112, i32 0, i32 17
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @xlgmac_config_rx_threshold, align 4
  %115 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %116 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %115, i32 0, i32 16
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @xlgmac_config_tx_threshold, align 4
  %118 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %119 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %118, i32 0, i32 15
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @xlgmac_config_rsf_mode, align 4
  %121 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %122 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %121, i32 0, i32 14
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @xlgmac_config_tsf_mode, align 4
  %124 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %125 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %124, i32 0, i32 13
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @xlgmac_config_osp_mode, align 4
  %127 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %128 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %127, i32 0, i32 12
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @xlgmac_config_rx_pbl_val, align 4
  %130 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %131 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %130, i32 0, i32 11
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @xlgmac_get_rx_pbl_val, align 4
  %133 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %134 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %133, i32 0, i32 10
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @xlgmac_config_tx_pbl_val, align 4
  %136 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %137 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %136, i32 0, i32 9
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @xlgmac_get_tx_pbl_val, align 4
  %139 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %140 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %139, i32 0, i32 8
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @xlgmac_config_pblx8, align 4
  %142 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %143 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @xlgmac_tx_mmc_int, align 4
  %145 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %146 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @xlgmac_rx_mmc_int, align 4
  %148 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %149 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @xlgmac_read_mmc_stats, align 4
  %151 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %152 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @xlgmac_enable_rss, align 4
  %154 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %155 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @xlgmac_disable_rss, align 4
  %157 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %158 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @xlgmac_set_rss_hash_key, align 4
  %160 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %161 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @xlgmac_set_rss_lookup_table, align 4
  %163 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %2, align 8
  %164 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
