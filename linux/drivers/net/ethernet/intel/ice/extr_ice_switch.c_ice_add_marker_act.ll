; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_marker_act.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_marker_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_fltr_mgmt_list_entry = type { i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ice_aqc_sw_rules_elem = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8**, i8*, i8* }

@ICE_SW_LKUP_MAC = common dso_local global i64 0, align 8
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_SW_RULE_RX_TX_ETH_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_AQC_SW_RULES_T_LG_ACT = common dso_local global i32 0, align 4
@ICE_LG_ACT_VSI_FORWARDING = common dso_local global i32 0, align 4
@ICE_LG_ACT_VALID_BIT = common dso_local global i32 0, align 4
@ICE_LG_ACT_VSI_LIST_ID_S = common dso_local global i32 0, align 4
@ICE_LG_ACT_VSI_LIST_ID_M = common dso_local global i32 0, align 4
@ICE_LG_ACT_VSI_LIST = common dso_local global i32 0, align 4
@ICE_LG_ACT_GENERIC = common dso_local global i32 0, align 4
@ICE_LG_ACT_GENERIC_VALUE_S = common dso_local global i32 0, align 4
@ICE_LG_ACT_GENERIC_VALUE_M = common dso_local global i32 0, align 4
@ICE_LG_ACT_GENERIC_OFF_RX_DESC_PROF_IDX = common dso_local global i32 0, align 4
@ICE_LG_ACT_GENERIC_OFFSET_S = common dso_local global i32 0, align 4
@ICE_LG_ACT_GENERIC_OFFSET_M = common dso_local global i32 0, align 4
@ice_aqc_opc_update_sw_rules = common dso_local global i32 0, align 4
@ICE_SINGLE_ACT_PTR = common dso_local global i32 0, align 4
@ICE_SINGLE_ACT_PTR_VAL_S = common dso_local global i32 0, align 4
@ICE_SINGLE_ACT_PTR_VAL_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_fltr_mgmt_list_entry*, i32, i32)* @ice_add_marker_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_add_marker_act(%struct.ice_hw* %0, %struct.ice_fltr_mgmt_list_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca %struct.ice_fltr_mgmt_list_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_aqc_sw_rules_elem*, align 8
  %11 = alloca %struct.ice_aqc_sw_rules_elem*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store %struct.ice_fltr_mgmt_list_entry* %1, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 3, i32* %12, align 4
  %18 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %19 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ICE_SW_LKUP_MAC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %25, i32* %5, align 4
  br label %193

26:                                               ; preds = %4
  %27 = call i64 @ICE_SW_RULE_LG_ACT_SIZE(i32 3)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %15, align 4
  %32 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %33 = call i32 @ice_hw_to_dev(%struct.ice_hw* %32)
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.ice_aqc_sw_rules_elem* @devm_kzalloc(i32 %33, i32 %34, i32 %35)
  store %struct.ice_aqc_sw_rules_elem* %36, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %37 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %38 = icmp ne %struct.ice_aqc_sw_rules_elem* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %40, i32* %5, align 4
  br label %193

41:                                               ; preds = %26
  %42 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %43 = bitcast %struct.ice_aqc_sw_rules_elem* %42 to i32*
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = bitcast i32* %46 to %struct.ice_aqc_sw_rules_elem*
  store %struct.ice_aqc_sw_rules_elem* %47, %struct.ice_aqc_sw_rules_elem** %11, align 8
  %48 = load i32, i32* @ICE_AQC_SW_RULES_T_LG_ACT, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %51 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %55 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i8* %53, i8** %57, align 8
  %58 = call i8* @cpu_to_le16(i32 3)
  %59 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %60 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i8* %58, i8** %62, align 8
  %63 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %64 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %41
  %68 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %69 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  br label %79

73:                                               ; preds = %41
  %74 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %75 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = phi i32 [ %72, %67 ], [ %78, %73 ]
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* @ICE_LG_ACT_VSI_FORWARDING, align 4
  %82 = load i32, i32* @ICE_LG_ACT_VALID_BIT, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @ICE_LG_ACT_VSI_LIST_ID_S, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* @ICE_LG_ACT_VSI_LIST_ID_M, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %16, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %16, align 4
  %91 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %92 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %99

95:                                               ; preds = %79
  %96 = load i32, i32* @ICE_LG_ACT_VSI_LIST, align 4
  %97 = load i32, i32* %16, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %95, %79
  %100 = load i32, i32* %16, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %103 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  store i8* %101, i8** %107, align 8
  %108 = load i32, i32* @ICE_LG_ACT_GENERIC, align 4
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* @ICE_LG_ACT_GENERIC_VALUE_S, align 4
  %110 = shl i32 1, %109
  %111 = load i32, i32* @ICE_LG_ACT_GENERIC_VALUE_M, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* %16, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %118 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  store i8* %116, i8** %122, align 8
  %123 = load i32, i32* @ICE_LG_ACT_GENERIC_OFF_RX_DESC_PROF_IDX, align 4
  %124 = load i32, i32* @ICE_LG_ACT_GENERIC_OFFSET_S, align 4
  %125 = shl i32 %123, %124
  %126 = load i32, i32* @ICE_LG_ACT_GENERIC_OFFSET_M, align 4
  %127 = and i32 %125, %126
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* @ICE_LG_ACT_GENERIC, align 4
  %129 = load i32, i32* %16, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @ICE_LG_ACT_GENERIC_VALUE_S, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* @ICE_LG_ACT_GENERIC_VALUE_M, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* %16, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = call i8* @cpu_to_le32(i32 %138)
  %140 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %141 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i8**, i8*** %143, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 2
  store i8* %139, i8** %145, align 8
  %146 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %147 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %148 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %147, i32 0, i32 3
  %149 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %11, align 8
  %150 = load i32, i32* @ice_aqc_opc_update_sw_rules, align 4
  %151 = call i32 @ice_fill_sw_rule(%struct.ice_hw* %146, %struct.TYPE_10__* %148, %struct.ice_aqc_sw_rules_elem* %149, i32 %150)
  %152 = load i32, i32* @ICE_SINGLE_ACT_PTR, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @ICE_SINGLE_ACT_PTR_VAL_S, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* @ICE_SINGLE_ACT_PTR_VAL_M, align 4
  %157 = and i32 %155, %156
  %158 = or i32 %152, %157
  %159 = call i8* @cpu_to_le32(i32 %158)
  %160 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %11, align 8
  %161 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i8* %159, i8** %163, align 8
  %164 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %165 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i8* @cpu_to_le16(i32 %167)
  %169 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %11, align 8
  %170 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i8* %168, i8** %172, align 8
  %173 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %174 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* @ice_aqc_opc_update_sw_rules, align 4
  %177 = call i32 @ice_aq_sw_rules(%struct.ice_hw* %173, %struct.ice_aqc_sw_rules_elem* %174, i32 %175, i32 2, i32 %176, i32* null)
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %99
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %183 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %186 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %180, %99
  %188 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %189 = call i32 @ice_hw_to_dev(%struct.ice_hw* %188)
  %190 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %191 = call i32 @devm_kfree(i32 %189, %struct.ice_aqc_sw_rules_elem* %190)
  %192 = load i32, i32* %13, align 4
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %187, %39, %24
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i64 @ICE_SW_RULE_LG_ACT_SIZE(i32) #1

declare dso_local %struct.ice_aqc_sw_rules_elem* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ice_fill_sw_rule(%struct.ice_hw*, %struct.TYPE_10__*, %struct.ice_aqc_sw_rules_elem*, i32) #1

declare dso_local i32 @ice_aq_sw_rules(%struct.ice_hw*, %struct.ice_aqc_sw_rules_elem*, i32, i32, i32, i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_sw_rules_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
