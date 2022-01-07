; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_remove_rule_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_remove_rule_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_switch_info* }
%struct.ice_switch_info = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.ice_fltr_list_entry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ice_fltr_mgmt_list_entry = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ice_aqc_sw_rules_elem = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_8__* }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_ERR_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@ICE_FWD_TO_VSI_LIST = common dso_local global i64 0, align 8
@ICE_SW_RULE_RX_TX_NO_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ice_aqc_opc_remove_sw_rules = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i64, %struct.ice_fltr_list_entry*)* @ice_remove_rule_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_remove_rule_internal(%struct.ice_hw* %0, i64 %1, %struct.ice_fltr_list_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ice_fltr_list_entry*, align 8
  %8 = alloca %struct.ice_switch_info*, align 8
  %9 = alloca %struct.ice_fltr_mgmt_list_entry*, align 8
  %10 = alloca %struct.mutex*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ice_aqc_sw_rules_elem*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ice_fltr_list_entry* %2, %struct.ice_fltr_list_entry** %7, align 8
  %15 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %15, i32 0, i32 0
  %17 = load %struct.ice_switch_info*, %struct.ice_switch_info** %16, align 8
  store %struct.ice_switch_info* %17, %struct.ice_switch_info** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %19 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %7, align 8
  %20 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ice_is_vsi_valid(%struct.ice_hw* %18, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %26, i32* %4, align 4
  br label %154

27:                                               ; preds = %3
  %28 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %29 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %7, align 8
  %30 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ice_get_hw_vsi_num(%struct.ice_hw* %28, i32 %32)
  %34 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %7, align 8
  %35 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.ice_switch_info*, %struct.ice_switch_info** %8, align 8
  %39 = getelementptr inbounds %struct.ice_switch_info, %struct.ice_switch_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store %struct.mutex* %43, %struct.mutex** %10, align 8
  %44 = load %struct.mutex*, %struct.mutex** %10, align 8
  %45 = call i32 @mutex_lock(%struct.mutex* %44)
  %46 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %7, align 8
  %49 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %48, i32 0, i32 0
  %50 = call %struct.ice_fltr_mgmt_list_entry* @ice_find_rule_entry(%struct.ice_hw* %46, i64 %47, %struct.TYPE_9__* %49)
  store %struct.ice_fltr_mgmt_list_entry* %50, %struct.ice_fltr_mgmt_list_entry** %9, align 8
  %51 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %9, align 8
  %52 = icmp ne %struct.ice_fltr_mgmt_list_entry* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %27
  %54 = load i32, i32* @ICE_ERR_DOES_NOT_EXIST, align 4
  store i32 %54, i32* %11, align 4
  br label %150

55:                                               ; preds = %27
  %56 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %9, align 8
  %57 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ICE_FWD_TO_VSI_LIST, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %12, align 4
  br label %105

63:                                               ; preds = %55
  %64 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %9, align 8
  %65 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %64, i32 0, i32 3
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = icmp ne %struct.TYPE_8__* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ICE_ERR_DOES_NOT_EXIST, align 4
  store i32 %69, i32* %11, align 4
  br label %150

70:                                               ; preds = %63
  %71 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %9, align 8
  %72 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %71, i32 0, i32 3
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %9, align 8
  %79 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  store i32 1, i32* %12, align 4
  br label %103

84:                                               ; preds = %70
  %85 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %7, align 8
  %86 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %13, align 4
  %89 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %9, align 8
  %92 = call i32 @ice_rem_update_vsi_list(%struct.ice_hw* %89, i32 %90, %struct.ice_fltr_mgmt_list_entry* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %150

96:                                               ; preds = %84
  %97 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %9, align 8
  %98 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %12, align 4
  br label %102

102:                                              ; preds = %101, %96
  br label %103

103:                                              ; preds = %102, %77
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %62
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %149

108:                                              ; preds = %105
  %109 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %110 = call i32 @ice_hw_to_dev(%struct.ice_hw* %109)
  %111 = load i32, i32* @ICE_SW_RULE_RX_TX_NO_HDR_SIZE, align 4
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.ice_fltr_mgmt_list_entry* @devm_kzalloc(i32 %110, i32 %111, i32 %112)
  %114 = bitcast %struct.ice_fltr_mgmt_list_entry* %113 to %struct.ice_aqc_sw_rules_elem*
  store %struct.ice_aqc_sw_rules_elem* %114, %struct.ice_aqc_sw_rules_elem** %14, align 8
  %115 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %14, align 8
  %116 = icmp ne %struct.ice_aqc_sw_rules_elem* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %118, i32* %11, align 4
  br label %150

119:                                              ; preds = %108
  %120 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %121 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %9, align 8
  %122 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %121, i32 0, i32 2
  %123 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %14, align 8
  %124 = bitcast %struct.ice_aqc_sw_rules_elem* %123 to %struct.ice_fltr_mgmt_list_entry*
  %125 = load i32, i32* @ice_aqc_opc_remove_sw_rules, align 4
  %126 = call i32 @ice_fill_sw_rule(%struct.ice_hw* %120, %struct.TYPE_10__* %122, %struct.ice_fltr_mgmt_list_entry* %124, i32 %125)
  %127 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %128 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %14, align 8
  %129 = bitcast %struct.ice_aqc_sw_rules_elem* %128 to %struct.ice_fltr_mgmt_list_entry*
  %130 = load i32, i32* @ICE_SW_RULE_RX_TX_NO_HDR_SIZE, align 4
  %131 = load i32, i32* @ice_aqc_opc_remove_sw_rules, align 4
  %132 = call i32 @ice_aq_sw_rules(%struct.ice_hw* %127, %struct.ice_fltr_mgmt_list_entry* %129, i32 %130, i32 1, i32 %131, i32* null)
  store i32 %132, i32* %11, align 4
  %133 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %134 = call i32 @ice_hw_to_dev(%struct.ice_hw* %133)
  %135 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %14, align 8
  %136 = bitcast %struct.ice_aqc_sw_rules_elem* %135 to %struct.ice_fltr_mgmt_list_entry*
  %137 = call i32 @devm_kfree(i32 %134, %struct.ice_fltr_mgmt_list_entry* %136)
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %119
  br label %150

141:                                              ; preds = %119
  %142 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %9, align 8
  %143 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %142, i32 0, i32 1
  %144 = call i32 @list_del(i32* %143)
  %145 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %146 = call i32 @ice_hw_to_dev(%struct.ice_hw* %145)
  %147 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %9, align 8
  %148 = call i32 @devm_kfree(i32 %146, %struct.ice_fltr_mgmt_list_entry* %147)
  br label %149

149:                                              ; preds = %141, %105
  br label %150

150:                                              ; preds = %149, %140, %117, %95, %68, %53
  %151 = load %struct.mutex*, %struct.mutex** %10, align 8
  %152 = call i32 @mutex_unlock(%struct.mutex* %151)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %150, %25
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @ice_is_vsi_valid(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_get_hw_vsi_num(%struct.ice_hw*, i32) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.ice_fltr_mgmt_list_entry* @ice_find_rule_entry(%struct.ice_hw*, i64, %struct.TYPE_9__*) #1

declare dso_local i32 @ice_rem_update_vsi_list(%struct.ice_hw*, i32, %struct.ice_fltr_mgmt_list_entry*) #1

declare dso_local %struct.ice_fltr_mgmt_list_entry* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_fill_sw_rule(%struct.ice_hw*, %struct.TYPE_10__*, %struct.ice_fltr_mgmt_list_entry*, i32) #1

declare dso_local i32 @ice_aq_sw_rules(%struct.ice_hw*, %struct.ice_fltr_mgmt_list_entry*, i32, i32, i32, i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_fltr_mgmt_list_entry*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
