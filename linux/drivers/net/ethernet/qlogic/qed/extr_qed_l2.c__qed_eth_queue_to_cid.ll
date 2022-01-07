; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c__qed_eth_queue_to_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c__qed_eth_queue_to_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_queue_cid = type { i32, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.qed_hwfn* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_queue_start_common_params = type { i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qed_queue_cid_vf_params = type { i64, i32, i32, i32 }

@QED_QUEUE_CID_SELF = common dso_local global i64 0, align 8
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"opaque_fid: %04x CID %08x vport %02x [%02x] qzone %04x.%02x [%04x] stats %02x [%02x] SB %04x PI %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qed_queue_cid* (%struct.qed_hwfn*, i32, i32, %struct.qed_queue_start_common_params*, i32, %struct.qed_queue_cid_vf_params*)* @_qed_eth_queue_to_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qed_queue_cid* @_qed_eth_queue_to_cid(%struct.qed_hwfn* %0, i32 %1, i32 %2, %struct.qed_queue_start_common_params* %3, i32 %4, %struct.qed_queue_cid_vf_params* %5) #0 {
  %7 = alloca %struct.qed_queue_cid*, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_queue_start_common_params*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_queue_cid_vf_params*, align 8
  %14 = alloca %struct.qed_queue_cid*, align 8
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.qed_queue_start_common_params* %3, %struct.qed_queue_start_common_params** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.qed_queue_cid_vf_params* %5, %struct.qed_queue_cid_vf_params** %13, align 8
  %16 = call %struct.qed_queue_cid* @vzalloc(i32 80)
  store %struct.qed_queue_cid* %16, %struct.qed_queue_cid** %14, align 8
  %17 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %18 = icmp ne %struct.qed_queue_cid* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store %struct.qed_queue_cid* null, %struct.qed_queue_cid** %7, align 8
  br label %216

20:                                               ; preds = %6
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %23 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %26 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %28 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %29 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %28, i32 0, i32 11
  store %struct.qed_hwfn* %27, %struct.qed_hwfn** %29, align 8
  %30 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %11, align 8
  %31 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %34 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %11, align 8
  %37 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %40 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %11, align 8
  %43 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %46 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %11, align 8
  %49 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %54 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %57 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %11, align 8
  %59 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %62 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.qed_queue_cid_vf_params*, %struct.qed_queue_cid_vf_params** %13, align 8
  %64 = icmp ne %struct.qed_queue_cid_vf_params* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %20
  %66 = load %struct.qed_queue_cid_vf_params*, %struct.qed_queue_cid_vf_params** %13, align 8
  %67 = getelementptr inbounds %struct.qed_queue_cid_vf_params, %struct.qed_queue_cid_vf_params* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %70 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.qed_queue_cid_vf_params*, %struct.qed_queue_cid_vf_params** %13, align 8
  %72 = getelementptr inbounds %struct.qed_queue_cid_vf_params, %struct.qed_queue_cid_vf_params* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %75 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 8
  %76 = load %struct.qed_queue_cid_vf_params*, %struct.qed_queue_cid_vf_params** %13, align 8
  %77 = getelementptr inbounds %struct.qed_queue_cid_vf_params, %struct.qed_queue_cid_vf_params* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %80 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  br label %85

81:                                               ; preds = %20
  %82 = load i64, i64* @QED_QUEUE_CID_SELF, align 8
  %83 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %84 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %65
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %87 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @IS_VF(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %93 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %92, i32 0, i32 4
  %94 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %95 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %94, i32 0, i32 5
  %96 = bitcast %struct.TYPE_4__* %93 to i8*
  %97 = bitcast %struct.TYPE_4__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 4 %97, i64 12, i1 false)
  br label %153

98:                                               ; preds = %85
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %100 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %101 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %105 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = call i32 @qed_fw_vport(%struct.qed_hwfn* %99, i32 %103, i32* %106)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %213

111:                                              ; preds = %98
  %112 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %113 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %114 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %118 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = call i32 @qed_fw_l2_queue(%struct.qed_hwfn* %112, i32 %116, i32* %119)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %213

124:                                              ; preds = %111
  %125 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %126 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @QED_QUEUE_CID_SELF, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %124
  %131 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %132 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %133 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %137 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = call i32 @qed_fw_vport(%struct.qed_hwfn* %131, i32 %135, i32* %138)
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %213

143:                                              ; preds = %130
  br label %152

144:                                              ; preds = %124
  %145 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %146 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %150 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  br label %152

152:                                              ; preds = %144, %143
  br label %153

153:                                              ; preds = %152, %91
  %154 = load %struct.qed_queue_cid_vf_params*, %struct.qed_queue_cid_vf_params** %13, align 8
  %155 = icmp ne %struct.qed_queue_cid_vf_params* %154, null
  br i1 %155, label %163, label %156

156:                                              ; preds = %153
  %157 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %158 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %159 = call i32 @qed_eth_queue_qid_usage_add(%struct.qed_hwfn* %157, %struct.qed_queue_cid* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  br label %213

162:                                              ; preds = %156
  br label %169

163:                                              ; preds = %153
  %164 = load %struct.qed_queue_cid_vf_params*, %struct.qed_queue_cid_vf_params** %13, align 8
  %165 = getelementptr inbounds %struct.qed_queue_cid_vf_params, %struct.qed_queue_cid_vf_params* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %168 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %163, %162
  %170 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %171 = load i32, i32* @QED_MSG_SP, align 4
  %172 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %173 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %176 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %179 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %183 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %187 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %191 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %194 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %198 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %202 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %206 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %209 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %170, i32 %171, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %174, i32 %177, i32 %181, i32 %185, i32 %189, i32 %192, i32 %196, i32 %200, i32 %204, i32 %207, i32 %210)
  %212 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  store %struct.qed_queue_cid* %212, %struct.qed_queue_cid** %7, align 8
  br label %216

213:                                              ; preds = %161, %142, %123, %110
  %214 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %215 = call i32 @vfree(%struct.qed_queue_cid* %214)
  store %struct.qed_queue_cid* null, %struct.qed_queue_cid** %7, align 8
  br label %216

216:                                              ; preds = %213, %169, %19
  %217 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %7, align 8
  ret %struct.qed_queue_cid* %217
}

declare dso_local %struct.qed_queue_cid* @vzalloc(i32) #1

declare dso_local i64 @IS_VF(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qed_fw_vport(%struct.qed_hwfn*, i32, i32*) #1

declare dso_local i32 @qed_fw_l2_queue(%struct.qed_hwfn*, i32, i32*) #1

declare dso_local i32 @qed_eth_queue_qid_usage_add(%struct.qed_hwfn*, %struct.qed_queue_cid*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vfree(%struct.qed_queue_cid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
