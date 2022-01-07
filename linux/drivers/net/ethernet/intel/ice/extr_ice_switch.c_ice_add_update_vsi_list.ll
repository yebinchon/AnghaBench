; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_update_vsi_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_update_vsi_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_fltr_mgmt_list_entry = type { i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ice_fltr_info = type { i64, i32, %struct.TYPE_3__, i8*, i32 }
%struct.TYPE_3__ = type { i64, i8* }

@ICE_FWD_TO_Q = common dso_local global i64 0, align 8
@ICE_FWD_TO_QGRP = common dso_local global i64 0, align 8
@ICE_ERR_NOT_IMPL = common dso_local global i32 0, align 4
@ICE_FWD_TO_VSI = common dso_local global i64 0, align 8
@ICE_FWD_TO_VSI_LIST = common dso_local global i64 0, align 8
@ICE_ERR_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ICE_INVAL_SW_MARKER_ID = common dso_local global i64 0, align 8
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@ice_aqc_opc_update_sw_rules = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_info*, %struct.ice_fltr_info*)* @ice_add_update_vsi_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_add_update_vsi_list(%struct.ice_hw* %0, %struct.ice_fltr_mgmt_list_entry* %1, %struct.ice_fltr_info* %2, %struct.ice_fltr_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca %struct.ice_fltr_mgmt_list_entry*, align 8
  %8 = alloca %struct.ice_fltr_info*, align 8
  %9 = alloca %struct.ice_fltr_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ice_fltr_info, align 8
  %13 = alloca [2 x i8*], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store %struct.ice_fltr_mgmt_list_entry* %1, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  store %struct.ice_fltr_info* %2, %struct.ice_fltr_info** %8, align 8
  store %struct.ice_fltr_info* %3, %struct.ice_fltr_info** %9, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %16 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %17 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ICE_FWD_TO_Q, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %23 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ICE_FWD_TO_QGRP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %4
  %28 = load i32, i32* @ICE_ERR_NOT_IMPL, align 4
  store i32 %28, i32* %5, align 4
  br label %199

29:                                               ; preds = %21
  %30 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %31 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ICE_FWD_TO_Q, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %37 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ICE_FWD_TO_QGRP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35, %29
  %42 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %43 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ICE_FWD_TO_VSI, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %49 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ICE_FWD_TO_VSI_LIST, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %41
  %54 = load i32, i32* @ICE_ERR_NOT_IMPL, align 4
  store i32 %54, i32* %5, align 4
  br label %199

55:                                               ; preds = %47, %35
  %56 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %57 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %145

60:                                               ; preds = %55
  %61 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %62 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %145, label %65

65:                                               ; preds = %60
  %66 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %67 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %71 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %69, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* @ICE_ERR_ALREADY_EXISTS, align 4
  store i32 %76, i32* %5, align 4
  br label %199

77:                                               ; preds = %65
  %78 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %79 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  store i8* %80, i8** %81, align 16
  %82 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %83 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  store i8* %84, i8** %85, align 8
  %86 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %87 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %88 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %89 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ice_create_vsi_list_rule(%struct.ice_hw* %86, i8** %87, i32 2, i8** %11, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %77
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %199

96:                                               ; preds = %77
  %97 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %98 = bitcast %struct.ice_fltr_info* %12 to i8*
  %99 = bitcast %struct.ice_fltr_info* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 48, i1 false)
  %100 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %101 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %12, i32 0, i32 4
  store i32 %102, i32* %103, align 8
  %104 = load i64, i64* @ICE_FWD_TO_VSI_LIST, align 8
  %105 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %12, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %12, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %110 = call i32 @ice_update_pkt_fwd_rule(%struct.ice_hw* %109, %struct.ice_fltr_info* %12)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %96
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %5, align 4
  br label %199

115:                                              ; preds = %96
  %116 = load i8*, i8** %11, align 8
  %117 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %118 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load i64, i64* @ICE_FWD_TO_VSI_LIST, align 8
  %121 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %122 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %124 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %125 = load i8*, i8** %11, align 8
  %126 = call %struct.TYPE_4__* @ice_create_vsi_list_map(%struct.ice_hw* %123, i8** %124, i32 2, i8* %125)
  %127 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %128 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %127, i32 0, i32 2
  store %struct.TYPE_4__* %126, %struct.TYPE_4__** %128, align 8
  %129 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %130 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ICE_INVAL_SW_MARKER_ID, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %115
  %135 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %136 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %137 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %138 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %141 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @ice_add_marker_act(%struct.ice_hw* %135, %struct.ice_fltr_mgmt_list_entry* %136, i64 %139, i32 %142)
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %134, %115
  br label %189

145:                                              ; preds = %60, %55
  %146 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %147 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %14, align 8
  %149 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %150 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %149, i32 0, i32 2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = icmp ne %struct.TYPE_4__* %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %145
  %154 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %154, i32* %5, align 4
  br label %199

155:                                              ; preds = %145
  %156 = load i8*, i8** %14, align 8
  %157 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %158 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %157, i32 0, i32 2
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @test_bit(i8* %156, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  store i32 0, i32* %5, align 4
  br label %199

165:                                              ; preds = %155
  %166 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %8, align 8
  %167 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** %11, align 8
  %170 = load i32, i32* @ice_aqc_opc_update_sw_rules, align 4
  store i32 %170, i32* %15, align 4
  %171 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %175 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @ice_update_vsi_list_rule(%struct.ice_hw* %171, i8** %14, i32 1, i8* %172, i32 0, i32 %173, i32 %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %165
  %181 = load i8*, i8** %14, align 8
  %182 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %183 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %182, i32 0, i32 2
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @set_bit(i8* %181, i32 %186)
  br label %188

188:                                              ; preds = %180, %165
  br label %189

189:                                              ; preds = %188, %144
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %189
  %193 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %7, align 8
  %194 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %192, %189
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %197, %164, %153, %113, %94, %75, %53, %27
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @ice_create_vsi_list_rule(%struct.ice_hw*, i8**, i32, i8**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ice_update_pkt_fwd_rule(%struct.ice_hw*, %struct.ice_fltr_info*) #1

declare dso_local %struct.TYPE_4__* @ice_create_vsi_list_map(%struct.ice_hw*, i8**, i32, i8*) #1

declare dso_local i32 @ice_add_marker_act(%struct.ice_hw*, %struct.ice_fltr_mgmt_list_entry*, i64, i32) #1

declare dso_local i64 @test_bit(i8*, i32) #1

declare dso_local i32 @ice_update_vsi_list_rule(%struct.ice_hw*, i8**, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
