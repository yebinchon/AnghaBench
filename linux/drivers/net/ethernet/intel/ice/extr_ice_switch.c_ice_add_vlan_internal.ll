; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_vlan_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_vlan_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_switch_info* }
%struct.ice_switch_info = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.ice_fltr_list_entry = type { %struct.ice_fltr_info }
%struct.ice_fltr_info = type { i64, i64, i32, i64, %struct.TYPE_8__, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ice_fltr_mgmt_list_entry = type { i32, %struct.ice_vsi_list_map_info*, %struct.ice_fltr_info }
%struct.ice_vsi_list_map_info = type { i32, i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_MAX_VLAN_ID = common dso_local global i64 0, align 8
@ICE_SRC_ID_VSI = common dso_local global i64 0, align 8
@ICE_SW_LKUP_VLAN = common dso_local global i64 0, align 8
@ICE_FWD_TO_VSI = common dso_local global i64 0, align 8
@ICE_FWD_TO_VSI_LIST = common dso_local global i8* null, align 8
@ICE_ERR_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@ICE_DBG_SW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"Invalid configuration: Optimization to reuse VSI list with more than one VSI is not being done yet\0A\00", align 1
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@ICE_MAX_VSI = common dso_local global i32 0, align 4
@ICE_ERR_ALREADY_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_fltr_list_entry*)* @ice_add_vlan_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_add_vlan_internal(%struct.ice_hw* %0, %struct.ice_fltr_list_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca %struct.ice_fltr_list_entry*, align 8
  %6 = alloca %struct.ice_switch_info*, align 8
  %7 = alloca %struct.ice_fltr_mgmt_list_entry*, align 8
  %8 = alloca %struct.ice_fltr_info*, align 8
  %9 = alloca %struct.ice_fltr_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mutex*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ice_vsi_list_map_info*, align 8
  %16 = alloca %struct.ice_fltr_info, align 8
  %17 = alloca [2 x i64], align 16
  %18 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store %struct.ice_fltr_list_entry* %1, %struct.ice_fltr_list_entry** %5, align 8
  %19 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %19, i32 0, i32 0
  %21 = load %struct.ice_switch_info*, %struct.ice_switch_info** %20, align 8
  store %struct.ice_switch_info* %21, %struct.ice_switch_info** %6, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %23 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %24 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ice_is_vsi_valid(%struct.ice_hw* %22, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %30, i32* %3, align 4
  br label %260

31:                                               ; preds = %2
  %32 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %33 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %34 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ice_get_hw_vsi_num(%struct.ice_hw* %32, i64 %36)
  %38 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %39 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 8
  %42 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %43 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %42, i32 0, i32 0
  store %struct.ice_fltr_info* %43, %struct.ice_fltr_info** %8, align 8
  %44 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %45 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ICE_MAX_VLAN_ID, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %52, i32* %3, align 4
  br label %260

53:                                               ; preds = %31
  %54 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %55 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ICE_SRC_ID_VSI, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %60, i32* %3, align 4
  br label %260

61:                                               ; preds = %53
  %62 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %63 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %67 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %69 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %72 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %12, align 8
  %74 = load %struct.ice_switch_info*, %struct.ice_switch_info** %6, align 8
  %75 = getelementptr inbounds %struct.ice_switch_info, %struct.ice_switch_info* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i64, i64* @ICE_SW_LKUP_VLAN, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store %struct.mutex* %79, %struct.mutex** %13, align 8
  %80 = load %struct.mutex*, %struct.mutex** %13, align 8
  %81 = call i32 @mutex_lock(%struct.mutex* %80)
  %82 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %83 = load i64, i64* @ICE_SW_LKUP_VLAN, align 8
  %84 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %85 = call %struct.ice_fltr_mgmt_list_entry* @ice_find_rule_entry(%struct.ice_hw* %82, i64 %83, %struct.ice_fltr_info* %84)
  store %struct.ice_fltr_mgmt_list_entry* %85, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %86 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %87 = icmp ne %struct.ice_fltr_mgmt_list_entry* %86, null
  br i1 %87, label %153, label %88

88:                                               ; preds = %61
  store %struct.ice_vsi_list_map_info* null, %struct.ice_vsi_list_map_info** %15, align 8
  %89 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %90 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ICE_FWD_TO_VSI, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %88
  %95 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %96 = load i64, i64* @ICE_SW_LKUP_VLAN, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call %struct.ice_vsi_list_map_info* @ice_find_vsi_list_entry(%struct.ice_hw* %95, i64 %96, i64 %97, i64* %11)
  store %struct.ice_vsi_list_map_info* %98, %struct.ice_vsi_list_map_info** %15, align 8
  %99 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %15, align 8
  %100 = icmp ne %struct.ice_vsi_list_map_info* %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %94
  %102 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @ice_create_vsi_list_rule(%struct.ice_hw* %102, i64* %12, i32 1, i64* %11, i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %256

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %94
  %110 = load i8*, i8** @ICE_FWD_TO_VSI_LIST, align 8
  %111 = ptrtoint i8* %110 to i64
  %112 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %113 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %112, i32 0, i32 3
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %116 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  br label %118

118:                                              ; preds = %109, %88
  %119 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %120 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %121 = call i32 @ice_create_pkt_fwd_rule(%struct.ice_hw* %119, %struct.ice_fltr_list_entry* %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %152, label %124

124:                                              ; preds = %118
  %125 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %126 = load i64, i64* @ICE_SW_LKUP_VLAN, align 8
  %127 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %128 = call %struct.ice_fltr_mgmt_list_entry* @ice_find_rule_entry(%struct.ice_hw* %125, i64 %126, %struct.ice_fltr_info* %127)
  store %struct.ice_fltr_mgmt_list_entry* %128, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %129 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %130 = icmp ne %struct.ice_fltr_mgmt_list_entry* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* @ICE_ERR_DOES_NOT_EXIST, align 4
  store i32 %132, i32* %14, align 4
  br label %256

133:                                              ; preds = %124
  %134 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %15, align 8
  %135 = icmp ne %struct.ice_vsi_list_map_info* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %15, align 8
  %138 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %139 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %138, i32 0, i32 1
  store %struct.ice_vsi_list_map_info* %137, %struct.ice_vsi_list_map_info** %139, align 8
  %140 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %15, align 8
  %141 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %151

144:                                              ; preds = %133
  %145 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %146 = load i64, i64* %11, align 8
  %147 = call i8* @ice_create_vsi_list_map(%struct.ice_hw* %145, i64* %12, i32 1, i64 %146)
  %148 = bitcast i8* %147 to %struct.ice_vsi_list_map_info*
  %149 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %150 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %149, i32 0, i32 1
  store %struct.ice_vsi_list_map_info* %148, %struct.ice_vsi_list_map_info** %150, align 8
  br label %151

151:                                              ; preds = %144, %136
  br label %152

152:                                              ; preds = %151, %118
  br label %255

153:                                              ; preds = %61
  %154 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %155 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %154, i32 0, i32 1
  %156 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %155, align 8
  %157 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %168

160:                                              ; preds = %153
  %161 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %162 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %161, i32 0, i32 2
  store %struct.ice_fltr_info* %162, %struct.ice_fltr_info** %9, align 8
  %163 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %164 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %165 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %166 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %167 = call i32 @ice_add_update_vsi_list(%struct.ice_hw* %163, %struct.ice_fltr_mgmt_list_entry* %164, %struct.ice_fltr_info* %165, %struct.ice_fltr_info* %166)
  store i32 %167, i32* %14, align 4
  br label %254

168:                                              ; preds = %153
  %169 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %170 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %175 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %174, i32 0, i32 1
  %176 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %175, align 8
  %177 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp sgt i32 %178, 1
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %182 = load i32, i32* @ICE_DBG_SW, align 4
  %183 = call i32 @ice_debug(%struct.ice_hw* %181, i32 %182, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0))
  %184 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %184, i32* %14, align 4
  br label %256

185:                                              ; preds = %173, %168
  %186 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %187 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %186, i32 0, i32 1
  %188 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %187, align 8
  %189 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @ICE_MAX_VSI, align 4
  %192 = call i64 @find_first_bit(i32 %190, i32 %191)
  store i64 %192, i64* %18, align 8
  %193 = load i64, i64* %18, align 8
  %194 = load i64, i64* %12, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %185
  %197 = load i32, i32* @ICE_ERR_ALREADY_EXISTS, align 4
  store i32 %197, i32* %14, align 4
  br label %256

198:                                              ; preds = %185
  %199 = load i64, i64* %18, align 8
  %200 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0
  store i64 %199, i64* %200, align 16
  %201 = load i64, i64* %12, align 8
  %202 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 1
  store i64 %201, i64* %202, align 8
  %203 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %204 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @ice_create_vsi_list_rule(%struct.ice_hw* %203, i64* %204, i32 2, i64* %11, i32 %205)
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %14, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  br label %256

210:                                              ; preds = %198
  %211 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %212 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %211, i32 0, i32 2
  %213 = bitcast %struct.ice_fltr_info* %16 to i8*
  %214 = bitcast %struct.ice_fltr_info* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %213, i8* align 8 %214, i64 64, i1 false)
  %215 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %216 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %16, i32 0, i32 5
  store i32 %218, i32* %219, align 8
  %220 = load i64, i64* %11, align 8
  %221 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %16, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  %223 = load i8*, i8** @ICE_FWD_TO_VSI_LIST, align 8
  %224 = ptrtoint i8* %223 to i64
  %225 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %16, i32 0, i32 3
  store i64 %224, i64* %225, align 8
  %226 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %227 = call i32 @ice_update_pkt_fwd_rule(%struct.ice_hw* %226, %struct.ice_fltr_info* %16)
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %210
  br label %256

231:                                              ; preds = %210
  %232 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %233 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %232, i32 0, i32 1
  %234 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %233, align 8
  %235 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %235, align 4
  %238 = load i64, i64* %11, align 8
  %239 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %240 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  store i64 %238, i64* %242, align 8
  %243 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %244 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0
  %245 = load i64, i64* %11, align 8
  %246 = call i8* @ice_create_vsi_list_map(%struct.ice_hw* %243, i64* %244, i32 2, i64 %245)
  %247 = bitcast i8* %246 to %struct.ice_vsi_list_map_info*
  %248 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %249 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %248, i32 0, i32 1
  store %struct.ice_vsi_list_map_info* %247, %struct.ice_vsi_list_map_info** %249, align 8
  %250 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %251 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 8
  br label %254

254:                                              ; preds = %231, %160
  br label %255

255:                                              ; preds = %254, %152
  br label %256

256:                                              ; preds = %255, %230, %209, %196, %180, %131, %107
  %257 = load %struct.mutex*, %struct.mutex** %13, align 8
  %258 = call i32 @mutex_unlock(%struct.mutex* %257)
  %259 = load i32, i32* %14, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %256, %59, %51, %29
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @ice_is_vsi_valid(%struct.ice_hw*, i64) #1

declare dso_local i32 @ice_get_hw_vsi_num(%struct.ice_hw*, i64) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.ice_fltr_mgmt_list_entry* @ice_find_rule_entry(%struct.ice_hw*, i64, %struct.ice_fltr_info*) #1

declare dso_local %struct.ice_vsi_list_map_info* @ice_find_vsi_list_entry(%struct.ice_hw*, i64, i64, i64*) #1

declare dso_local i32 @ice_create_vsi_list_rule(%struct.ice_hw*, i64*, i32, i64*, i32) #1

declare dso_local i32 @ice_create_pkt_fwd_rule(%struct.ice_hw*, %struct.ice_fltr_list_entry*) #1

declare dso_local i8* @ice_create_vsi_list_map(%struct.ice_hw*, i64*, i32, i64) #1

declare dso_local i32 @ice_add_update_vsi_list(%struct.ice_hw*, %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_info*, %struct.ice_fltr_info*) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*) #1

declare dso_local i64 @find_first_bit(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ice_update_pkt_fwd_rule(%struct.ice_hw*, %struct.ice_fltr_info*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
