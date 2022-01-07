; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i64, %struct.qed_dev*, %struct.TYPE_4__*, %struct.qed_qm_info }
%struct.qed_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.qed_qm_info = type { i32, i32, i32, i32, i32, i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_qm_common_rt_init_params = type { i32, i32, i32, i32, i32, i32, i32 }

@PHASE_ENGINE = common dso_local global i32 0, align 4
@ANY_PHASE_ID = common dso_local global i32 0, align 4
@PSWRQ2_REG_L2P_VALIDATE_VFID = common dso_local global i32 0, align 4
@PGLUE_B_REG_USE_CLIENTID_IN_TAG = common dso_local global i32 0, align 4
@PRS_REG_SEARCH_ROCE = common dso_local global i32 0, align 4
@PRS_REG_SEARCH_TCP = common dso_local global i32 0, align 4
@MAX_NUM_VFS_K2 = common dso_local global i64 0, align 8
@MAX_NUM_VFS_BB = common dso_local global i64 0, align 8
@CCFC_REG_STRONG_ENABLE_VF = common dso_local global i32 0, align 4
@CCFC_REG_WEAK_ENABLE_VF = common dso_local global i32 0, align 4
@TCFC_REG_STRONG_ENABLE_VF = common dso_local global i32 0, align 4
@TCFC_REG_WEAK_ENABLE_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32)* @qed_hw_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_hw_init_common(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_qm_info*, align 8
  %9 = alloca %struct.qed_qm_common_rt_init_params, align 4
  %10 = alloca %struct.qed_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 3
  store %struct.qed_qm_info* %18, %struct.qed_qm_info** %8, align 8
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 1
  %21 = load %struct.qed_dev*, %struct.qed_dev** %20, align 8
  store %struct.qed_dev* %21, %struct.qed_dev** %10, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %23 = call i32 @qed_init_cau_rt_data(%struct.qed_dev* %22)
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %25 = call i32 @qed_gtt_init(%struct.qed_hwfn* %24)
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %3
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %32 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.qed_qm_info*, %struct.qed_qm_info** %8, align 8
  %40 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %43 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.qed_qm_info*, %struct.qed_qm_info** %8, align 8
  %51 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52, %3
  %54 = call i32 @memset(%struct.qed_qm_common_rt_init_params* %9, i32 0, i32 28)
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %56 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %55, i32 0, i32 1
  %57 = load %struct.qed_dev*, %struct.qed_dev** %56, align 8
  %58 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %9, i32 0, i32 6
  store i32 %59, i32* %60, align 4
  %61 = load %struct.qed_qm_info*, %struct.qed_qm_info** %8, align 8
  %62 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %9, i32 0, i32 5
  store i32 %63, i32* %64, align 4
  %65 = load %struct.qed_qm_info*, %struct.qed_qm_info** %8, align 8
  %66 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %9, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.qed_qm_info*, %struct.qed_qm_info** %8, align 8
  %70 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %9, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.qed_qm_info*, %struct.qed_qm_info** %8, align 8
  %74 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %9, i32 0, i32 4
  store i32 %75, i32* %76, align 4
  %77 = load %struct.qed_qm_info*, %struct.qed_qm_info** %8, align 8
  %78 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %9, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = load %struct.qed_qm_info*, %struct.qed_qm_info** %8, align 8
  %82 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %9, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %86 = call i32 @qed_qm_common_rt_init(%struct.qed_hwfn* %85, %struct.qed_qm_common_rt_init_params* %9)
  %87 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %88 = call i32 @qed_cxt_hw_init_common(%struct.qed_hwfn* %87)
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %90 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %91 = call i32 @qed_init_cache_line_size(%struct.qed_hwfn* %89, %struct.qed_ptt* %90)
  %92 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %93 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %94 = load i32, i32* @PHASE_ENGINE, align 4
  %95 = load i32, i32* @ANY_PHASE_ID, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @qed_init_run(%struct.qed_hwfn* %92, %struct.qed_ptt* %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %53
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %4, align 4
  br label %197

102:                                              ; preds = %53
  %103 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %104 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %105 = load i32, i32* @PSWRQ2_REG_L2P_VALIDATE_VFID, align 4
  %106 = call i32 @qed_wr(%struct.qed_hwfn* %103, %struct.qed_ptt* %104, i32 %105, i32 0)
  %107 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %108 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %109 = load i32, i32* @PGLUE_B_REG_USE_CLIENTID_IN_TAG, align 4
  %110 = call i32 @qed_wr(%struct.qed_hwfn* %107, %struct.qed_ptt* %108, i32 %109, i32 1)
  %111 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %112 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %111, i32 0, i32 1
  %113 = load %struct.qed_dev*, %struct.qed_dev** %112, align 8
  %114 = call i64 @QED_IS_BB(%struct.qed_dev* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %102
  %117 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %118 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %117, i32 0, i32 1
  %119 = load %struct.qed_dev*, %struct.qed_dev** %118, align 8
  %120 = call i64 @NUM_OF_ENG_PFS(%struct.qed_dev* %119)
  store i64 %120, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %121

121:                                              ; preds = %138, %116
  %122 = load i64, i64* %14, align 8
  %123 = load i64, i64* %13, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  %126 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %127 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %128 = load i64, i64* %14, align 8
  %129 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %126, %struct.qed_ptt* %127, i64 %128)
  %130 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %131 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %132 = load i32, i32* @PRS_REG_SEARCH_ROCE, align 4
  %133 = call i32 @qed_wr(%struct.qed_hwfn* %130, %struct.qed_ptt* %131, i32 %132, i32 0)
  %134 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %135 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %136 = load i32, i32* @PRS_REG_SEARCH_TCP, align 4
  %137 = call i32 @qed_wr(%struct.qed_hwfn* %134, %struct.qed_ptt* %135, i32 %136, i32 0)
  br label %138

138:                                              ; preds = %125
  %139 = load i64, i64* %14, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %14, align 8
  br label %121

141:                                              ; preds = %121
  %142 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %143 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %144 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %145 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %142, %struct.qed_ptt* %143, i64 %146)
  br label %148

148:                                              ; preds = %141, %102
  %149 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %150 = call i64 @QED_IS_AH(%struct.qed_dev* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i64, i64* @MAX_NUM_VFS_K2, align 8
  br label %156

154:                                              ; preds = %148
  %155 = load i64, i64* @MAX_NUM_VFS_BB, align 8
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i64 [ %153, %152 ], [ %155, %154 ]
  store i64 %157, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %158

158:                                              ; preds = %186, %156
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* %12, align 8
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %162, label %189

162:                                              ; preds = %158
  %163 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %164 = load i64, i64* %11, align 8
  %165 = call i64 @qed_vfid_to_concrete(%struct.qed_hwfn* %163, i64 %164)
  store i64 %165, i64* %15, align 8
  %166 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %167 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %168 = load i64, i64* %15, align 8
  %169 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %166, %struct.qed_ptt* %167, i64 %168)
  %170 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %171 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %172 = load i32, i32* @CCFC_REG_STRONG_ENABLE_VF, align 4
  %173 = call i32 @qed_wr(%struct.qed_hwfn* %170, %struct.qed_ptt* %171, i32 %172, i32 1)
  %174 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %175 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %176 = load i32, i32* @CCFC_REG_WEAK_ENABLE_VF, align 4
  %177 = call i32 @qed_wr(%struct.qed_hwfn* %174, %struct.qed_ptt* %175, i32 %176, i32 0)
  %178 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %179 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %180 = load i32, i32* @TCFC_REG_STRONG_ENABLE_VF, align 4
  %181 = call i32 @qed_wr(%struct.qed_hwfn* %178, %struct.qed_ptt* %179, i32 %180, i32 1)
  %182 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %183 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %184 = load i32, i32* @TCFC_REG_WEAK_ENABLE_VF, align 4
  %185 = call i32 @qed_wr(%struct.qed_hwfn* %182, %struct.qed_ptt* %183, i32 %184, i32 0)
  br label %186

186:                                              ; preds = %162
  %187 = load i64, i64* %11, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %11, align 8
  br label %158

189:                                              ; preds = %158
  %190 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %191 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %192 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %193 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %190, %struct.qed_ptt* %191, i64 %194)
  %196 = load i32, i32* %16, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %189, %100
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @qed_init_cau_rt_data(%struct.qed_dev*) #1

declare dso_local i32 @qed_gtt_init(%struct.qed_hwfn*) #1

declare dso_local i32 @memset(%struct.qed_qm_common_rt_init_params*, i32, i32) #1

declare dso_local i32 @qed_qm_common_rt_init(%struct.qed_hwfn*, %struct.qed_qm_common_rt_init_params*) #1

declare dso_local i32 @qed_cxt_hw_init_common(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_cache_line_size(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_init_run(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i64 @QED_IS_BB(%struct.qed_dev*) #1

declare dso_local i64 @NUM_OF_ENG_PFS(%struct.qed_dev*) #1

declare dso_local i32 @qed_fid_pretend(%struct.qed_hwfn*, %struct.qed_ptt*, i64) #1

declare dso_local i64 @QED_IS_AH(%struct.qed_dev*) #1

declare dso_local i64 @qed_vfid_to_concrete(%struct.qed_hwfn*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
