; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_fill_sw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_fill_sw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i64 }
%struct.ice_fltr_info = type { i32, i32, i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ICE_FLTR_TX = common dso_local global i32 0, align 4
@ICE_FWD_TO_VSI = common dso_local global i64 0, align 8
@ICE_FWD_TO_VSI_LIST = common dso_local global i64 0, align 8
@ICE_FWD_TO_Q = common dso_local global i64 0, align 8
@ICE_FWD_TO_QGRP = common dso_local global i64 0, align 8
@ICE_SW_LKUP_VLAN = common dso_local global i64 0, align 8
@ICE_SW_LKUP_ETHERTYPE = common dso_local global i64 0, align 8
@ICE_SW_LKUP_PROMISC = common dso_local global i64 0, align 8
@ICE_SW_LKUP_ETHERTYPE_MAC = common dso_local global i64 0, align 8
@ICE_SW_LKUP_PROMISC_VLAN = common dso_local global i64 0, align 8
@ICE_SW_LKUP_DFLT = common dso_local global i64 0, align 8
@ICE_SW_LKUP_MAC = common dso_local global i64 0, align 8
@ICE_SW_LKUP_MAC_VLAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*, %struct.ice_fltr_info*)* @ice_fill_sw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_fill_sw_info(%struct.ice_hw* %0, %struct.ice_fltr_info* %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_fltr_info*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store %struct.ice_fltr_info* %1, %struct.ice_fltr_info** %4, align 8
  %5 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %6 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %8 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %10 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ICE_FLTR_TX, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %125

15:                                               ; preds = %2
  %16 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %17 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ICE_FWD_TO_VSI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %39, label %21

21:                                               ; preds = %15
  %22 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %23 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ICE_FWD_TO_VSI_LIST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %29 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ICE_FWD_TO_Q, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %35 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ICE_FWD_TO_QGRP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %125

39:                                               ; preds = %33, %27, %21, %15
  %40 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %41 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ICE_SW_LKUP_VLAN, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %47 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %121

53:                                               ; preds = %48
  %54 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %55 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ICE_SW_LKUP_ETHERTYPE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %117, label %59

59:                                               ; preds = %53
  %60 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %61 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ICE_SW_LKUP_PROMISC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %117, label %65

65:                                               ; preds = %59
  %66 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %67 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ICE_SW_LKUP_ETHERTYPE_MAC, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %117, label %71

71:                                               ; preds = %65
  %72 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %73 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ICE_SW_LKUP_PROMISC_VLAN, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %117, label %77

77:                                               ; preds = %71
  %78 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %79 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ICE_SW_LKUP_DFLT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %117, label %83

83:                                               ; preds = %77
  %84 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %85 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ICE_SW_LKUP_VLAN, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %117, label %89

89:                                               ; preds = %83
  %90 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %91 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ICE_SW_LKUP_MAC, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %97 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @is_unicast_ether_addr(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %95, %89
  %104 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %105 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ICE_SW_LKUP_MAC_VLAN, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  %110 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %111 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @is_unicast_ether_addr(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %109, %95, %83, %77, %71, %65, %59, %53
  %118 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %119 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %109, %103
  br label %124

121:                                              ; preds = %48
  %122 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %4, align 8
  %123 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %122, i32 0, i32 1
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %120
  br label %125

125:                                              ; preds = %124, %33, %2
  ret void
}

declare dso_local i32 @is_unicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
