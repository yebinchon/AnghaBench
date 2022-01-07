; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_rem_update_vsi_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_rem_update_vsi_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_fltr_mgmt_list_entry = type { i64, %struct.ice_vsi_list_map_info*, %struct.ice_fltr_info }
%struct.ice_vsi_list_map_info = type { i32, i32 }
%struct.ice_fltr_info = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ICE_FWD_TO_VSI_LIST = common dso_local global i64 0, align 8
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_ERR_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@ice_aqc_opc_update_sw_rules = common dso_local global i32 0, align 4
@ICE_SW_LKUP_VLAN = common dso_local global i32 0, align 4
@ICE_MAX_VSI = common dso_local global i32 0, align 4
@ICE_ERR_OUT_OF_RANGE = common dso_local global i32 0, align 4
@ICE_FWD_TO_VSI = common dso_local global i64 0, align 8
@ICE_DBG_SW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Failed to update pkt fwd rule to FWD_TO_VSI on HW VSI %d, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to remove VSI list %d, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32, %struct.ice_fltr_mgmt_list_entry*)* @ice_rem_update_vsi_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_rem_update_vsi_list(%struct.ice_hw* %0, i32 %1, %struct.ice_fltr_mgmt_list_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_fltr_mgmt_list_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ice_fltr_info, align 8
  %12 = alloca %struct.ice_vsi_list_map_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ice_vsi_list_map_info*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ice_fltr_mgmt_list_entry* %2, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %16 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ICE_FWD_TO_VSI_LIST, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %23 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %27, i32* %4, align 4
  br label %182

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %31 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %30, i32 0, i32 1
  %32 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %31, align 8
  %33 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @test_bit(i32 %29, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ICE_ERR_DOES_NOT_EXIST, align 4
  store i32 %38, i32* %4, align 4
  br label %182

39:                                               ; preds = %28
  %40 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %41 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %8, align 4
  %44 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %45 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ice_aqc_opc_update_sw_rules, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ice_update_vsi_list_rule(%struct.ice_hw* %49, i32* %6, i32 1, i32 %50, i32 1, i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %182

58:                                               ; preds = %39
  %59 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %60 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %65 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %64, i32 0, i32 1
  %66 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %65, align 8
  %67 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @clear_bit(i32 %63, i32 %68)
  %70 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %71 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 1
  br i1 %73, label %74, label %135

74:                                               ; preds = %58
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ICE_SW_LKUP_VLAN, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %135

78:                                               ; preds = %74
  %79 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %80 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %79, i32 0, i32 2
  %81 = bitcast %struct.ice_fltr_info* %11 to i8*
  %82 = bitcast %struct.ice_fltr_info* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 24, i1 false)
  %83 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %84 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %83, i32 0, i32 1
  %85 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %84, align 8
  store %struct.ice_vsi_list_map_info* %85, %struct.ice_vsi_list_map_info** %12, align 8
  %86 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %12, align 8
  %87 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ICE_MAX_VSI, align 4
  %90 = call i32 @find_first_bit(i32 %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @ice_is_vsi_valid(%struct.ice_hw* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %78
  %96 = load i32, i32* @ICE_ERR_OUT_OF_RANGE, align 4
  store i32 %96, i32* %4, align 4
  br label %182

97:                                               ; preds = %78
  %98 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @ice_aqc_opc_update_sw_rules, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @ice_update_vsi_list_rule(%struct.ice_hw* %98, i32* %13, i32 1, i32 %99, i32 1, i32 %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %182

107:                                              ; preds = %97
  %108 = load i64, i64* @ICE_FWD_TO_VSI, align 8
  %109 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 0
  store i64 %108, i64* %109, align 8
  %110 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @ice_get_hw_vsi_num(%struct.ice_hw* %110, i32 %111)
  %113 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %13, align 4
  %116 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 3
  store i32 %115, i32* %116, align 4
  %117 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %118 = call i32 @ice_update_pkt_fwd_rule(%struct.ice_hw* %117, %struct.ice_fltr_info* %11)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %107
  %122 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %123 = load i32, i32* @ICE_DBG_SW, align 4
  %124 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @ice_debug(%struct.ice_hw* %122, i32 %123, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %182

130:                                              ; preds = %107
  %131 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %132 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %131, i32 0, i32 2
  %133 = bitcast %struct.ice_fltr_info* %132 to i8*
  %134 = bitcast %struct.ice_fltr_info* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 24, i1 false)
  br label %135

135:                                              ; preds = %130, %74, %58
  %136 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %137 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 1
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @ICE_SW_LKUP_VLAN, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %153, label %144

144:                                              ; preds = %140, %135
  %145 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %146 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %180

149:                                              ; preds = %144
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @ICE_SW_LKUP_VLAN, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %180

153:                                              ; preds = %149, %140
  %154 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %155 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %154, i32 0, i32 1
  %156 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %155, align 8
  store %struct.ice_vsi_list_map_info* %156, %struct.ice_vsi_list_map_info** %14, align 8
  %157 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @ice_remove_vsi_list_rule(%struct.ice_hw* %157, i32 %158, i32 %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %153
  %164 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %165 = load i32, i32* @ICE_DBG_SW, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @ice_debug(%struct.ice_hw* %164, i32 %165, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %167)
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %4, align 4
  br label %182

170:                                              ; preds = %153
  %171 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %14, align 8
  %172 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %171, i32 0, i32 0
  %173 = call i32 @list_del(i32* %172)
  %174 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %175 = call i32 @ice_hw_to_dev(%struct.ice_hw* %174)
  %176 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %14, align 8
  %177 = call i32 @devm_kfree(i32 %175, %struct.ice_vsi_list_map_info* %176)
  %178 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %179 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %178, i32 0, i32 1
  store %struct.ice_vsi_list_map_info* null, %struct.ice_vsi_list_map_info** %179, align 8
  br label %180

180:                                              ; preds = %170, %149, %144
  %181 = load i32, i32* %9, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %163, %121, %105, %95, %56, %37, %26
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ice_update_vsi_list_rule(%struct.ice_hw*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @ice_is_vsi_valid(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_get_hw_vsi_num(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_update_pkt_fwd_rule(%struct.ice_hw*, %struct.ice_fltr_info*) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32, i32) #1

declare dso_local i32 @ice_remove_vsi_list_rule(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_vsi_list_map_info*) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
