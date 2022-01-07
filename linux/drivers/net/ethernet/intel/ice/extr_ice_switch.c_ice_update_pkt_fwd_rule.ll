; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_update_pkt_fwd_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_update_pkt_fwd_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_fltr_info = type { i32 }
%struct.ice_aqc_sw_rules_elem = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ICE_SW_RULE_RX_TX_ETH_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ice_aqc_opc_update_sw_rules = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_fltr_info*)* @ice_update_pkt_fwd_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_update_pkt_fwd_rule(%struct.ice_hw* %0, %struct.ice_fltr_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca %struct.ice_fltr_info*, align 8
  %6 = alloca %struct.ice_aqc_sw_rules_elem*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store %struct.ice_fltr_info* %1, %struct.ice_fltr_info** %5, align 8
  %8 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %9 = call i32 @ice_hw_to_dev(%struct.ice_hw* %8)
  %10 = load i32, i32* @ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ice_aqc_sw_rules_elem* @devm_kzalloc(i32 %9, i32 %10, i32 %11)
  store %struct.ice_aqc_sw_rules_elem* %12, %struct.ice_aqc_sw_rules_elem** %6, align 8
  %13 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %6, align 8
  %14 = icmp ne %struct.ice_aqc_sw_rules_elem* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %19 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %5, align 8
  %20 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %6, align 8
  %21 = load i32, i32* @ice_aqc_opc_update_sw_rules, align 4
  %22 = call i32 @ice_fill_sw_rule(%struct.ice_hw* %18, %struct.ice_fltr_info* %19, %struct.ice_aqc_sw_rules_elem* %20, i32 %21)
  %23 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %5, align 8
  %24 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %6, align 8
  %28 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %32 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %6, align 8
  %33 = load i32, i32* @ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, align 4
  %34 = load i32, i32* @ice_aqc_opc_update_sw_rules, align 4
  %35 = call i32 @ice_aq_sw_rules(%struct.ice_hw* %31, %struct.ice_aqc_sw_rules_elem* %32, i32 %33, i32 1, i32 %34, i32* null)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %37 = call i32 @ice_hw_to_dev(%struct.ice_hw* %36)
  %38 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %6, align 8
  %39 = call i32 @devm_kfree(i32 %37, %struct.ice_aqc_sw_rules_elem* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %17, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.ice_aqc_sw_rules_elem* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_fill_sw_rule(%struct.ice_hw*, %struct.ice_fltr_info*, %struct.ice_aqc_sw_rules_elem*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_sw_rules(%struct.ice_hw*, %struct.ice_aqc_sw_rules_elem*, i32, i32, i32, i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_sw_rules_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
