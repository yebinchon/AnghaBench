; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_init_rx_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_init_rx_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.aq_nic_cfg_s* }
%struct.aq_nic_cfg_s = type { i64 }

@HW_ATL_B0_MAC_MAX = common dso_local global i32 0, align 4
@RPF2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @hw_atl_b0_hw_init_rx_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_init_rx_path(%struct.aq_hw_s* %0) #0 {
  %2 = alloca %struct.aq_hw_s*, align 8
  %3 = alloca %struct.aq_nic_cfg_s*, align 8
  %4 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %2, align 8
  %5 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %6 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %5, i32 0, i32 0
  %7 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  store %struct.aq_nic_cfg_s* %7, %struct.aq_nic_cfg_s** %3, align 8
  %8 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %9 = call i32 @hw_atl_rpb_rpf_rx_traf_class_mode_set(%struct.aq_hw_s* %8, i32 1)
  %10 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %11 = call i32 @hw_atl_rpb_rx_flow_ctl_mode_set(%struct.aq_hw_s* %10, i32 1)
  %12 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %13 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %14 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 -1288490189, i32 0
  %19 = call i32 @hw_atl_reg_rx_flr_rss_control1set(%struct.aq_hw_s* %12, i32 %18)
  %20 = load i32, i32* @HW_ATL_B0_MAC_MAX, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %25, %1
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @hw_atl_rpfl2_uc_flr_en_set(%struct.aq_hw_s* %26, i32 %30, i32 %31)
  %33 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @hw_atl_rpfl2unicast_flr_act_set(%struct.aq_hw_s* %33, i32 1, i32 %34)
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %38 = call i32 @hw_atl_reg_rx_flr_mcst_flr_msk_set(%struct.aq_hw_s* %37, i32 0)
  %39 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %40 = call i32 @hw_atl_reg_rx_flr_mcst_flr_set(%struct.aq_hw_s* %39, i32 69631, i32 0)
  %41 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %42 = call i32 @hw_atl_rpf_vlan_outer_etht_set(%struct.aq_hw_s* %41, i32 34984)
  %43 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %44 = call i32 @hw_atl_rpf_vlan_inner_etht_set(%struct.aq_hw_s* %43, i32 33024)
  %45 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %46 = call i32 @hw_atl_rpf_vlan_prom_mode_en_set(%struct.aq_hw_s* %45, i32 1)
  %47 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %48 = call i32 @hw_atl_rpf_vlan_accept_untagged_packets_set(%struct.aq_hw_s* %47, i32 1)
  %49 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %50 = call i32 @hw_atl_rpf_vlan_untagged_act_set(%struct.aq_hw_s* %49, i32 1)
  %51 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %52 = call i32 @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(%struct.aq_hw_s* %51, i32 1)
  %53 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %54 = load i32, i32* @RPF2, align 4
  %55 = call i64 @IS_CHIP_FEATURE(i32 %54)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 983040, i32 0
  %59 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %53, i32 20544, i32 %58)
  %60 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %61 = call i32 @hw_atl_rpfl2broadcast_flr_act_set(%struct.aq_hw_s* %60, i32 1)
  %62 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %63 = call i32 @hw_atl_rpfl2broadcast_count_threshold_set(%struct.aq_hw_s* %62, i32 65535)
  %64 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %65 = call i32 @hw_atl_rdm_rx_dca_en_set(%struct.aq_hw_s* %64, i32 0)
  %66 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %67 = call i32 @hw_atl_rdm_rx_dca_mode_set(%struct.aq_hw_s* %66, i32 0)
  %68 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %69 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %68)
  ret i32 %69
}

declare dso_local i32 @hw_atl_rpb_rpf_rx_traf_class_mode_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpb_rx_flow_ctl_mode_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_reg_rx_flr_rss_control1set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpfl2_uc_flr_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpfl2unicast_flr_act_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_reg_rx_flr_mcst_flr_msk_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_reg_rx_flr_mcst_flr_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_vlan_outer_etht_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpf_vlan_inner_etht_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpf_vlan_prom_mode_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpf_vlan_accept_untagged_packets_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpf_vlan_untagged_act_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i64 @IS_CHIP_FEATURE(i32) #1

declare dso_local i32 @hw_atl_rpfl2broadcast_flr_act_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpfl2broadcast_count_threshold_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_dca_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_dca_mode_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
