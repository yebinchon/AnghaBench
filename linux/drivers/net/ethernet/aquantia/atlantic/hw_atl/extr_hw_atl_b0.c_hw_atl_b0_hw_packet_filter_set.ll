; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_packet_filter_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_packet_filter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.aq_nic_cfg_s* }
%struct.aq_nic_cfg_s = type { i32, i64, i64 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@HW_ATL_B0_MAC_MIN = common dso_local global i32 0, align 4
@HW_ATL_B0_MAC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, i32)* @hw_atl_b0_hw_packet_filter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_packet_filter_set(%struct.aq_hw_s* %0, i32 %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.aq_nic_cfg_s*, align 8
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %8 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %7, i32 0, i32 0
  %9 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  store %struct.aq_nic_cfg_s* %9, %struct.aq_nic_cfg_s** %6, align 8
  %10 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %11 = load i32, i32* @IFF_PROMISC, align 4
  %12 = call i64 @IS_FILTER_ENABLED(i32 %11)
  %13 = call i32 @hw_atl_rpfl2promiscuous_mode_en_set(%struct.aq_hw_s* %10, i64 %12)
  %14 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = call i64 @IS_FILTER_ENABLED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %20 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i1 [ true, %2 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @hw_atl_rpf_vlan_prom_mode_en_set(%struct.aq_hw_s* %14, i32 %25)
  %27 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %28 = load i32, i32* @IFF_ALLMULTI, align 4
  %29 = call i64 @IS_FILTER_ENABLED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @IFF_MULTICAST, align 4
  %33 = call i64 @IS_FILTER_ENABLED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi i1 [ false, %23 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @hw_atl_rpfl2multicast_flr_en_set(%struct.aq_hw_s* %27, i32 %37, i32 0)
  %39 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %40 = load i32, i32* @IFF_ALLMULTI, align 4
  %41 = call i64 @IS_FILTER_ENABLED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @IFF_MULTICAST, align 4
  %45 = call i64 @IS_FILTER_ENABLED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %43, %35
  %48 = phi i1 [ false, %35 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @hw_atl_rpfl2_accept_all_mc_packets_set(%struct.aq_hw_s* %39, i32 %49)
  %51 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %52 = load i32, i32* @IFF_BROADCAST, align 4
  %53 = call i64 @IS_FILTER_ENABLED(i32 %52)
  %54 = call i32 @hw_atl_rpfl2broadcast_en_set(%struct.aq_hw_s* %51, i64 %53)
  %55 = load i32, i32* @HW_ATL_B0_MAC_MIN, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %78, %47
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @HW_ATL_B0_MAC_MAX, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %62 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %63 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %69 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ule i32 %67, %70
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi i1 [ false, %60 ], [ %71, %66 ]
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @hw_atl_rpfl2_uc_flr_en_set(%struct.aq_hw_s* %61, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %56

81:                                               ; preds = %56
  %82 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %83 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %82)
  ret i32 %83
}

declare dso_local i32 @hw_atl_rpfl2promiscuous_mode_en_set(%struct.aq_hw_s*, i64) #1

declare dso_local i64 @IS_FILTER_ENABLED(i32) #1

declare dso_local i32 @hw_atl_rpf_vlan_prom_mode_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpfl2multicast_flr_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpfl2_accept_all_mc_packets_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpfl2broadcast_en_set(%struct.aq_hw_s*, i64) #1

declare dso_local i32 @hw_atl_rpfl2_uc_flr_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
