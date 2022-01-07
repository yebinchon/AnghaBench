; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_remove_vsi_list_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_remove_vsi_list_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_sw_rules_elem = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR = common dso_local global i64 0, align 8
@ice_aqc_opc_free_res = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i64, i32)* @ice_remove_vsi_list_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_remove_vsi_list_rule(%struct.ice_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_aqc_sw_rules_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i64 @ICE_SW_RULE_VSI_LIST_SIZE(i32 0)
  store i64 %11, i64* %10, align 8
  %12 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %13 = call i32 @ice_hw_to_dev(%struct.ice_hw* %12)
  %14 = load i64, i64* %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ice_aqc_sw_rules_elem* @devm_kzalloc(i32 %13, i64 %14, i32 %15)
  store %struct.ice_aqc_sw_rules_elem* %16, %struct.ice_aqc_sw_rules_elem** %8, align 8
  %17 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %8, align 8
  %18 = icmp ne %struct.ice_aqc_sw_rules_elem* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load i64, i64* @ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR, align 8
  %23 = call i8* @cpu_to_le16(i64 %22)
  %24 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %8, align 8
  %25 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i8* @cpu_to_le16(i64 %26)
  %28 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %8, align 8
  %29 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* %27, i8** %31, align 8
  %32 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ice_aqc_opc_free_res, align 4
  %35 = call i32 @ice_aq_alloc_free_vsi_list(%struct.ice_hw* %32, i64* %6, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %37 = call i32 @ice_hw_to_dev(%struct.ice_hw* %36)
  %38 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %8, align 8
  %39 = call i32 @devm_kfree(i32 %37, %struct.ice_aqc_sw_rules_elem* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %21, %19
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @ICE_SW_RULE_VSI_LIST_SIZE(i32) #1

declare dso_local %struct.ice_aqc_sw_rules_elem* @devm_kzalloc(i32, i64, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @ice_aq_alloc_free_vsi_list(%struct.ice_hw*, i64*, i32, i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_sw_rules_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
