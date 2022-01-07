; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_create_pkt_fwd_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_create_pkt_fwd_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ice_sw_recipe* }
%struct.ice_sw_recipe = type { i32 }
%struct.ice_fltr_list_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.ice_fltr_mgmt_list_entry = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ice_aqc_sw_rules_elem = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32 }

@ICE_SW_RULE_RX_TX_ETH_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_INVAL_LG_ACT_INDEX = common dso_local global i32 0, align 4
@ICE_INVAL_SW_MARKER_ID = common dso_local global i32 0, align 4
@ICE_INVAL_COUNTER_ID = common dso_local global i32 0, align 4
@ice_aqc_opc_add_sw_rules = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_fltr_list_entry*)* @ice_create_pkt_fwd_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_create_pkt_fwd_rule(%struct.ice_hw* %0, %struct.ice_fltr_list_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca %struct.ice_fltr_list_entry*, align 8
  %6 = alloca %struct.ice_fltr_mgmt_list_entry*, align 8
  %7 = alloca %struct.ice_aqc_sw_rules_elem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_sw_recipe*, align 8
  %10 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store %struct.ice_fltr_list_entry* %1, %struct.ice_fltr_list_entry** %5, align 8
  %11 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %12 = call i32 @ice_hw_to_dev(%struct.ice_hw* %11)
  %13 = load i32, i32* @ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ice_fltr_mgmt_list_entry* @devm_kzalloc(i32 %12, i32 %13, i32 %14)
  %16 = bitcast %struct.ice_fltr_mgmt_list_entry* %15 to %struct.ice_aqc_sw_rules_elem*
  store %struct.ice_aqc_sw_rules_elem* %16, %struct.ice_aqc_sw_rules_elem** %7, align 8
  %17 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %7, align 8
  %18 = icmp ne %struct.ice_aqc_sw_rules_elem* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %20, i32* %3, align 4
  br label %111

21:                                               ; preds = %2
  %22 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %23 = call i32 @ice_hw_to_dev(%struct.ice_hw* %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ice_fltr_mgmt_list_entry* @devm_kzalloc(i32 %23, i32 40, i32 %24)
  store %struct.ice_fltr_mgmt_list_entry* %25, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %26 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %27 = icmp ne %struct.ice_fltr_mgmt_list_entry* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %29, i32* %10, align 4
  br label %104

30:                                               ; preds = %21
  %31 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %32 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %31, i32 0, i32 2
  %33 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %34 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %33, i32 0, i32 0
  %35 = bitcast %struct.TYPE_8__* %32 to i8*
  %36 = bitcast %struct.TYPE_8__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %38 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* @ICE_INVAL_LG_ACT_INDEX, align 4
  %40 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %41 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ICE_INVAL_SW_MARKER_ID, align 4
  %43 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %44 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @ICE_INVAL_COUNTER_ID, align 4
  %46 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %47 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %49 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %50 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %49, i32 0, i32 2
  %51 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %7, align 8
  %52 = bitcast %struct.ice_aqc_sw_rules_elem* %51 to %struct.ice_fltr_mgmt_list_entry*
  %53 = load i32, i32* @ice_aqc_opc_add_sw_rules, align 4
  %54 = call i32 @ice_fill_sw_rule(%struct.ice_hw* %48, %struct.TYPE_8__* %50, %struct.ice_fltr_mgmt_list_entry* %52, i32 %53)
  %55 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %56 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %7, align 8
  %57 = bitcast %struct.ice_aqc_sw_rules_elem* %56 to %struct.ice_fltr_mgmt_list_entry*
  %58 = load i32, i32* @ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, align 4
  %59 = load i32, i32* @ice_aqc_opc_add_sw_rules, align 4
  %60 = call i32 @ice_aq_sw_rules(%struct.ice_hw* %55, %struct.ice_fltr_mgmt_list_entry* %57, i32 %58, i32 1, i32 %59, i32* null)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %30
  %64 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %65 = call i32 @ice_hw_to_dev(%struct.ice_hw* %64)
  %66 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %67 = call i32 @devm_kfree(i32 %65, %struct.ice_fltr_mgmt_list_entry* %66)
  br label %104

68:                                               ; preds = %30
  %69 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %7, align 8
  %70 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @le16_to_cpu(i32 %73)
  %75 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %76 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %7, align 8
  %79 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @le16_to_cpu(i32 %82)
  %84 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %85 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %88 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %8, align 4
  %91 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %92 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.ice_sw_recipe*, %struct.ice_sw_recipe** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ice_sw_recipe, %struct.ice_sw_recipe* %95, i64 %97
  store %struct.ice_sw_recipe* %98, %struct.ice_sw_recipe** %9, align 8
  %99 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %6, align 8
  %100 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %99, i32 0, i32 1
  %101 = load %struct.ice_sw_recipe*, %struct.ice_sw_recipe** %9, align 8
  %102 = getelementptr inbounds %struct.ice_sw_recipe, %struct.ice_sw_recipe* %101, i32 0, i32 0
  %103 = call i32 @list_add(i32* %100, i32* %102)
  br label %104

104:                                              ; preds = %68, %63, %28
  %105 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %106 = call i32 @ice_hw_to_dev(%struct.ice_hw* %105)
  %107 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %7, align 8
  %108 = bitcast %struct.ice_aqc_sw_rules_elem* %107 to %struct.ice_fltr_mgmt_list_entry*
  %109 = call i32 @devm_kfree(i32 %106, %struct.ice_fltr_mgmt_list_entry* %108)
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %104, %19
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.ice_fltr_mgmt_list_entry* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ice_fill_sw_rule(%struct.ice_hw*, %struct.TYPE_8__*, %struct.ice_fltr_mgmt_list_entry*, i32) #1

declare dso_local i32 @ice_aq_sw_rules(%struct.ice_hw*, %struct.ice_fltr_mgmt_list_entry*, i32, i32, i32, i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_fltr_mgmt_list_entry*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
