; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_rule_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_rule_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_5__*, %struct.ice_switch_info* }
%struct.TYPE_5__ = type { i32 }
%struct.ice_switch_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.ice_fltr_list_entry = type { %struct.ice_fltr_info }
%struct.ice_fltr_info = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ice_fltr_mgmt_list_entry = type { %struct.ice_fltr_info }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_FLTR_RX = common dso_local global i32 0, align 4
@ICE_FLTR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i64, %struct.ice_fltr_list_entry*)* @ice_add_rule_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_add_rule_internal(%struct.ice_hw* %0, i64 %1, %struct.ice_fltr_list_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ice_fltr_list_entry*, align 8
  %8 = alloca %struct.ice_switch_info*, align 8
  %9 = alloca %struct.ice_fltr_info*, align 8
  %10 = alloca %struct.ice_fltr_info*, align 8
  %11 = alloca %struct.ice_fltr_mgmt_list_entry*, align 8
  %12 = alloca %struct.mutex*, align 8
  %13 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ice_fltr_list_entry* %2, %struct.ice_fltr_list_entry** %7, align 8
  %14 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %14, i32 0, i32 1
  %16 = load %struct.ice_switch_info*, %struct.ice_switch_info** %15, align 8
  store %struct.ice_switch_info* %16, %struct.ice_switch_info** %8, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %18 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %7, align 8
  %19 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ice_is_vsi_valid(%struct.ice_hw* %17, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %25, i32* %4, align 4
  br label %101

26:                                               ; preds = %3
  %27 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %28 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %7, align 8
  %29 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ice_get_hw_vsi_num(%struct.ice_hw* %27, i32 %31)
  %33 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %7, align 8
  %34 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.ice_switch_info*, %struct.ice_switch_info** %8, align 8
  %38 = getelementptr inbounds %struct.ice_switch_info, %struct.ice_switch_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store %struct.mutex* %42, %struct.mutex** %12, align 8
  %43 = load %struct.mutex*, %struct.mutex** %12, align 8
  %44 = call i32 @mutex_lock(%struct.mutex* %43)
  %45 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %7, align 8
  %46 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %45, i32 0, i32 0
  store %struct.ice_fltr_info* %46, %struct.ice_fltr_info** %9, align 8
  %47 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %48 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ICE_FLTR_RX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %26
  %54 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %55 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %60 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %77

61:                                               ; preds = %26
  %62 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %63 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ICE_FLTR_TX, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %7, align 8
  %70 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %75 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %68, %61
  br label %77

77:                                               ; preds = %76, %53
  %78 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %81 = call %struct.ice_fltr_mgmt_list_entry* @ice_find_rule_entry(%struct.ice_hw* %78, i64 %79, %struct.ice_fltr_info* %80)
  store %struct.ice_fltr_mgmt_list_entry* %81, %struct.ice_fltr_mgmt_list_entry** %11, align 8
  %82 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %11, align 8
  %83 = icmp ne %struct.ice_fltr_mgmt_list_entry* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %77
  %85 = load %struct.mutex*, %struct.mutex** %12, align 8
  %86 = call i32 @mutex_unlock(%struct.mutex* %85)
  %87 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %88 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %7, align 8
  %89 = call i32 @ice_create_pkt_fwd_rule(%struct.ice_hw* %87, %struct.ice_fltr_list_entry* %88)
  store i32 %89, i32* %4, align 4
  br label %101

90:                                               ; preds = %77
  %91 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %11, align 8
  %92 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %91, i32 0, i32 0
  store %struct.ice_fltr_info* %92, %struct.ice_fltr_info** %10, align 8
  %93 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %94 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %11, align 8
  %95 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %10, align 8
  %96 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %97 = call i32 @ice_add_update_vsi_list(%struct.ice_hw* %93, %struct.ice_fltr_mgmt_list_entry* %94, %struct.ice_fltr_info* %95, %struct.ice_fltr_info* %96)
  store i32 %97, i32* %13, align 4
  %98 = load %struct.mutex*, %struct.mutex** %12, align 8
  %99 = call i32 @mutex_unlock(%struct.mutex* %98)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %90, %84, %24
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @ice_is_vsi_valid(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_get_hw_vsi_num(%struct.ice_hw*, i32) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.ice_fltr_mgmt_list_entry* @ice_find_rule_entry(%struct.ice_hw*, i64, %struct.ice_fltr_info*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @ice_create_pkt_fwd_rule(%struct.ice_hw*, %struct.ice_fltr_list_entry*) #1

declare dso_local i32 @ice_add_update_vsi_list(%struct.ice_hw*, %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_info*, %struct.ice_fltr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
