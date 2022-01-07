; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_igu_reset_cam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_igu_reset_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.qed_igu_info* }
%struct.qed_igu_info = type { i32, i64, %struct.TYPE_7__, %struct.qed_igu_block* }
%struct.TYPE_7__ = type { i32, i64, i64, i64, i64, i64 }
%struct.qed_igu_block = type { i32, i32, i32, i32 }
%struct.qed_ptt = type { i32 }

@QED_SB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"MFW notifies of 0x%04x PF SBs; IGU indicates of only 0x%04x\0A\00", align 1
@NETIF_MSG_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"0x%04x VF SBs in IGU CAM != PCI configuration 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Not enough SBs for VFs - 0x%04x SBs, from which %04x PFs and %04x are required\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_IGU_STATUS_VALID = common dso_local global i32 0, align 4
@QED_IGU_STATUS_DSB = common dso_local global i32 0, align 4
@QED_IGU_STATUS_PF = common dso_local global i32 0, align 4
@QED_IGU_STATUS_FREE = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_FUNCTION_NUMBER = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_PF_VALID = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_VECTOR_NUMBER = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_VALID = common dso_local global i32 0, align 4
@IGU_REG_MAPPING_MEMORY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [81 x i8] c"IGU reset: [SB 0x%04x] func_id = %d is_pf = %d vector_num = 0x%x [%08x -> %08x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_int_igu_reset_cam(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_igu_info*, align 8
  %7 = alloca %struct.qed_igu_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.qed_igu_info*, %struct.qed_igu_info** %16, align 8
  store %struct.qed_igu_info* %17, %struct.qed_igu_info** %6, align 8
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = load i32, i32* @QED_SB, align 4
  %20 = call i32 @RESC_NUM(%struct.qed_hwfn* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %24 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %127

25:                                               ; preds = %2
  %26 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %27 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %29 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %33 = load i32, i32* @QED_SB, align 4
  %34 = call i32 @RESC_NUM(%struct.qed_hwfn* %32, i32 %33)
  %35 = sub nsw i32 %34, 1
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %25
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %40 = load i32, i32* @QED_SB, align 4
  %41 = call i32 @RESC_NUM(%struct.qed_hwfn* %39, i32 %40)
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %44 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DP_INFO(%struct.qed_hwfn* %38, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %49 = load i32, i32* @QED_SB, align 4
  %50 = call i32 @RESC_NUM(%struct.qed_hwfn* %48, i32 %49)
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %53 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  br label %55

55:                                               ; preds = %37, %25
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %57 = call i64 @IS_PF_SRIOV(%struct.qed_hwfn* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %126

59:                                               ; preds = %55
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %61 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %69 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %59
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %75 = load i32, i32* @NETIF_MSG_INTR, align 4
  %76 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %77 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %13, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %74, i32 %75, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %79, i32 %81)
  br label %83

83:                                               ; preds = %73, %59
  %84 = load i64, i64* %13, align 8
  %85 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %86 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %90 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %88, %92
  %94 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %95 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %93, %98
  %100 = icmp sgt i64 %84, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %83
  %102 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %103 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %104 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %108 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %106, %110
  %112 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %113 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @DP_NOTICE(%struct.qed_hwfn* %102, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i64 %111, i64 %116, i64 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %349

121:                                              ; preds = %83
  %122 = load i64, i64* %13, align 8
  %123 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %124 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i64 %122, i64* %125, align 8
  br label %126

126:                                              ; preds = %121, %55
  br label %127

127:                                              ; preds = %126, %22
  %128 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %129 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %134 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  store i64 %132, i64* %135, align 8
  %136 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %137 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %141 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  store i64 %139, i64* %142, align 8
  %143 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %144 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %149 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 4
  store i64 %147, i64* %150, align 8
  %151 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %152 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %156 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 5
  store i64 %154, i64* %157, align 8
  %158 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %159 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %8, align 4
  %162 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %163 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %9, align 4
  %167 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %168 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %10, align 8
  br label %170

170:                                              ; preds = %345, %127
  %171 = load i64, i64* %10, align 8
  %172 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %173 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %172, i32 0, i32 1
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = call i64 @QED_MAPPING_MEMORY_SIZE(%struct.TYPE_8__* %174)
  %176 = icmp slt i64 %171, %175
  br i1 %176, label %177, label %348

177:                                              ; preds = %170
  %178 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %179 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %178, i32 0, i32 3
  %180 = load %struct.qed_igu_block*, %struct.qed_igu_block** %179, align 8
  %181 = load i64, i64* %10, align 8
  %182 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %180, i64 %181
  store %struct.qed_igu_block* %182, %struct.qed_igu_block** %7, align 8
  store i64 0, i64* %11, align 8
  %183 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %184 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @QED_IGU_STATUS_VALID, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %177
  br label %345

190:                                              ; preds = %177
  %191 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %192 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @QED_IGU_STATUS_DSB, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %190
  %198 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %199 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %202 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %204 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %203, i32 0, i32 2
  store i32 1, i32* %204, align 4
  %205 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %206 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %205, i32 0, i32 3
  store i32 0, i32* %206, align 4
  %207 = load i32, i32* @QED_IGU_STATUS_VALID, align 4
  %208 = load i32, i32* @QED_IGU_STATUS_PF, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @QED_IGU_STATUS_DSB, align 4
  %211 = or i32 %209, %210
  %212 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %213 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 4
  br label %285

214:                                              ; preds = %190
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %242

217:                                              ; preds = %214
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %8, align 4
  %220 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %221 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %224 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %226 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %225, i32 0, i32 2
  store i32 1, i32* %226, align 4
  %227 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %228 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %234 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* @QED_IGU_STATUS_VALID, align 4
  %236 = load i32, i32* @QED_IGU_STATUS_PF, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @QED_IGU_STATUS_FREE, align 4
  %239 = or i32 %237, %238
  %240 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %241 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 4
  br label %284

242:                                              ; preds = %214
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %276

245:                                              ; preds = %242
  %246 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %247 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %246, i32 0, i32 1
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = load %struct.qed_igu_info*, %struct.qed_igu_info** %6, align 8
  %255 = getelementptr inbounds %struct.qed_igu_info, %struct.qed_igu_info* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %253, %257
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = sub nsw i64 %258, %260
  %262 = trunc i64 %261 to i32
  %263 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %264 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %266 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %265, i32 0, i32 2
  store i32 0, i32* %266, align 4
  %267 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %268 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %267, i32 0, i32 3
  store i32 0, i32* %268, align 4
  %269 = load i32, i32* @QED_IGU_STATUS_VALID, align 4
  %270 = load i32, i32* @QED_IGU_STATUS_FREE, align 4
  %271 = or i32 %269, %270
  %272 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %273 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* %9, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %9, align 4
  br label %283

276:                                              ; preds = %242
  %277 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %278 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %277, i32 0, i32 1
  store i32 0, i32* %278, align 4
  %279 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %280 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %279, i32 0, i32 2
  store i32 0, i32* %280, align 4
  %281 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %282 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %281, i32 0, i32 3
  store i32 0, i32* %282, align 4
  br label %283

283:                                              ; preds = %276, %245
  br label %284

284:                                              ; preds = %283, %217
  br label %285

285:                                              ; preds = %284, %197
  %286 = load i64, i64* %11, align 8
  %287 = load i32, i32* @IGU_MAPPING_LINE_FUNCTION_NUMBER, align 4
  %288 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %289 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @SET_FIELD(i64 %286, i32 %287, i32 %290)
  %292 = load i64, i64* %11, align 8
  %293 = load i32, i32* @IGU_MAPPING_LINE_PF_VALID, align 4
  %294 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %295 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @SET_FIELD(i64 %292, i32 %293, i32 %296)
  %298 = load i64, i64* %11, align 8
  %299 = load i32, i32* @IGU_MAPPING_LINE_VECTOR_NUMBER, align 4
  %300 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %301 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @SET_FIELD(i64 %298, i32 %299, i32 %302)
  %304 = load i64, i64* %11, align 8
  %305 = load i32, i32* @IGU_MAPPING_LINE_VALID, align 4
  %306 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %307 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @SET_FIELD(i64 %304, i32 %305, i32 %308)
  %310 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %311 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %312 = load i64, i64* @IGU_REG_MAPPING_MEMORY, align 8
  %313 = load i64, i64* %10, align 8
  %314 = mul i64 8, %313
  %315 = add i64 %312, %314
  %316 = call i64 @qed_rd(%struct.qed_hwfn* %310, %struct.qed_ptt* %311, i64 %315)
  store i64 %316, i64* %12, align 8
  %317 = load i64, i64* %12, align 8
  %318 = load i64, i64* %11, align 8
  %319 = icmp ne i64 %317, %318
  br i1 %319, label %320, label %344

320:                                              ; preds = %285
  %321 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %322 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %323 = load i64, i64* @IGU_REG_MAPPING_MEMORY, align 8
  %324 = load i64, i64* %10, align 8
  %325 = mul i64 8, %324
  %326 = add i64 %323, %325
  %327 = load i64, i64* %11, align 8
  %328 = call i32 @qed_wr(%struct.qed_hwfn* %321, %struct.qed_ptt* %322, i64 %326, i64 %327)
  %329 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %330 = load i32, i32* @NETIF_MSG_INTR, align 4
  %331 = load i64, i64* %10, align 8
  %332 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %333 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %336 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.qed_igu_block*, %struct.qed_igu_block** %7, align 8
  %339 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = load i64, i64* %12, align 8
  %342 = load i64, i64* %11, align 8
  %343 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %329, i32 %330, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i64 %331, i32 %334, i32 %337, i32 %340, i64 %341, i64 %342)
  br label %344

344:                                              ; preds = %320, %285
  br label %345

345:                                              ; preds = %344, %189
  %346 = load i64, i64* %10, align 8
  %347 = add nsw i64 %346, 1
  store i64 %347, i64* %10, align 8
  br label %170

348:                                              ; preds = %170
  store i32 0, i32* %3, align 4
  br label %349

349:                                              ; preds = %348, %101
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

declare dso_local i32 @RESC_NUM(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*, i32, i32) #1

declare dso_local i64 @IS_PF_SRIOV(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i32, ...) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64, i64, i64) #1

declare dso_local i64 @QED_MAPPING_MEMORY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i64) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
