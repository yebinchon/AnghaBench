; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_offload_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_offload_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_nic_cfg_s = type { i32, i64 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@HW_ATL_B0_LRO_RXD_MAX = common dso_local global i32 0, align 4
@HW_ATL_B0_RINGS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_nic_cfg_s*)* @hw_atl_b0_hw_offload_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_offload_set(%struct.aq_hw_s* %0, %struct.aq_nic_cfg_s* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.aq_nic_cfg_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.aq_nic_cfg_s* %1, %struct.aq_nic_cfg_s** %4, align 8
  %7 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %8 = call i32 @hw_atl_tpo_ipv4header_crc_offload_en_set(%struct.aq_hw_s* %7, i32 1)
  %9 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %10 = call i32 @hw_atl_tpo_tcp_udp_crc_offload_en_set(%struct.aq_hw_s* %9, i32 1)
  %11 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %12 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %4, align 8
  %13 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @hw_atl_rpo_ipv4header_crc_offload_en_set(%struct.aq_hw_s* %11, i32 %20)
  %22 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %23 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %4, align 8
  %24 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @hw_atl_rpo_tcp_udp_crc_offload_en_set(%struct.aq_hw_s* %22, i32 %31)
  %33 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %34 = call i32 @hw_atl_tdm_large_send_offload_en_set(%struct.aq_hw_s* %33, i32 -1)
  %35 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %36 = call i32 @hw_atl_rpo_outer_vlan_tag_mode_set(%struct.aq_hw_s* %35, i32 1)
  %37 = load i32, i32* @HW_ATL_B0_LRO_RXD_MAX, align 4
  %38 = icmp ult i32 8, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %51

40:                                               ; preds = %2
  %41 = load i32, i32* @HW_ATL_B0_LRO_RXD_MAX, align 4
  %42 = icmp ult i32 4, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @HW_ATL_B0_LRO_RXD_MAX, align 4
  %46 = icmp ult i32 2, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  br label %49

49:                                               ; preds = %44, %43
  %50 = phi i32 [ 2, %43 ], [ %48, %44 ]
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi i32 [ 3, %39 ], [ %50, %49 ]
  store i32 %52, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %62, %51
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @HW_ATL_B0_RINGS_MAX, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @hw_atl_rpo_lro_max_num_of_descriptors_set(%struct.aq_hw_s* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %53

65:                                               ; preds = %53
  %66 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %67 = call i32 @hw_atl_rpo_lro_time_base_divider_set(%struct.aq_hw_s* %66, i32 1562)
  %68 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %69 = call i32 @hw_atl_rpo_lro_inactive_interval_set(%struct.aq_hw_s* %68, i32 0)
  %70 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %71 = call i32 @hw_atl_rpo_lro_max_coalescing_interval_set(%struct.aq_hw_s* %70, i32 50)
  %72 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %73 = call i32 @hw_atl_rpo_lro_qsessions_lim_set(%struct.aq_hw_s* %72, i32 1)
  %74 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %75 = call i32 @hw_atl_rpo_lro_total_desc_lim_set(%struct.aq_hw_s* %74, i32 2)
  %76 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %77 = call i32 @hw_atl_rpo_lro_patch_optimization_en_set(%struct.aq_hw_s* %76, i32 1)
  %78 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %79 = call i32 @hw_atl_rpo_lro_min_pay_of_first_pkt_set(%struct.aq_hw_s* %78, i32 10)
  %80 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %81 = call i32 @hw_atl_rpo_lro_pkt_lim_set(%struct.aq_hw_s* %80, i32 1)
  %82 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %83 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %4, align 8
  %84 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 -1, i32 0
  %89 = call i32 @hw_atl_rpo_lro_en_set(%struct.aq_hw_s* %82, i32 %88)
  %90 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %91 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %4, align 8
  %92 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 -1, i32 0
  %97 = call i32 @hw_atl_itr_rsc_en_set(%struct.aq_hw_s* %90, i32 %96)
  %98 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %99 = call i32 @hw_atl_itr_rsc_delay_set(%struct.aq_hw_s* %98, i32 1)
  %100 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %101 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %100)
  ret i32 %101
}

declare dso_local i32 @hw_atl_tpo_ipv4header_crc_offload_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tpo_tcp_udp_crc_offload_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_ipv4header_crc_offload_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_tcp_udp_crc_offload_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tdm_large_send_offload_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_outer_vlan_tag_mode_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_lro_max_num_of_descriptors_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpo_lro_time_base_divider_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_lro_inactive_interval_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_lro_max_coalescing_interval_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_lro_qsessions_lim_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_lro_total_desc_lim_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_lro_patch_optimization_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_lro_min_pay_of_first_pkt_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_lro_pkt_lim_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpo_lro_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_itr_rsc_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_itr_rsc_delay_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
