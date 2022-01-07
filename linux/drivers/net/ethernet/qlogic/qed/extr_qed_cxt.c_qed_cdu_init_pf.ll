; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cdu_init_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cdu_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.qed_ilt_client_cfg* }
%struct.qed_ilt_client_cfg = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.qed_tid_seg = type { i32 }

@qed_cdu_init_pf.rt_type_offset_arr = internal constant [4 x i32] [i32 131, i32 130, i32 129, i32 128], align 16
@qed_cdu_init_pf.rt_type_offset_fl_arr = internal constant [4 x i32] [i32 135, i32 134, i32 133, i32 132], align 16
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@NUM_TASK_PF_SEGMENTS = common dso_local global i32 0, align 4
@CDUT_SEG_ALIGNMET_IN_BYTES = common dso_local global i32 0, align 4
@CDU_SEG_REG_TYPE = common dso_local global i32 0, align 4
@CDU_SEG_REG_OFFSET = common dso_local global i32 0, align 4
@PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_cdu_init_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_cdu_init_pf(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_ilt_client_cfg*, align 8
  %4 = alloca %struct.qed_tid_seg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %11, align 8
  %13 = load i64, i64* @ILT_CLI_CDUT, align 8
  %14 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %12, i64 %13
  store %struct.qed_ilt_client_cfg* %14, %struct.qed_ilt_client_cfg** %3, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %104, %1
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @NUM_TASK_PF_SEGMENTS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %107

19:                                               ; preds = %15
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.qed_tid_seg* @qed_cxt_tid_seg_info(%struct.qed_hwfn* %20, i32 %21)
  store %struct.qed_tid_seg* %22, %struct.qed_tid_seg** %4, align 8
  %23 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %4, align 8
  %24 = icmp ne %struct.qed_tid_seg* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %104

26:                                               ; preds = %19
  %27 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %28 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ILT_PAGE_IN_BYTES(i32 %30)
  %32 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %33 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @CDUT_SEG_BLK(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %41 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %39, %43
  %45 = mul nsw i32 %31, %44
  %46 = load i32, i32* @CDUT_SEG_ALIGNMET_IN_BYTES, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @CDU_SEG_REG_TYPE, align 4
  %50 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %4, align 8
  %51 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @SET_FIELD(i32 %48, i32 %49, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @CDU_SEG_REG_OFFSET, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @SET_FIELD(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* @qed_cdu_init_pf.rt_type_offset_arr, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %58, i32 %62, i32 %63)
  %65 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %66 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ILT_PAGE_IN_BYTES(i32 %68)
  %70 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %71 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @PF, align 4
  %75 = call i64 @CDUT_FL_SEG_BLK(i32 %73, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %80 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %78, %82
  %84 = mul nsw i32 %69, %83
  %85 = load i32, i32* @CDUT_SEG_ALIGNMET_IN_BYTES, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @CDU_SEG_REG_TYPE, align 4
  %89 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %4, align 8
  %90 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @SET_FIELD(i32 %87, i32 %88, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @CDU_SEG_REG_OFFSET, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @SET_FIELD(i32 %93, i32 %94, i32 %95)
  %97 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* @qed_cdu_init_pf.rt_type_offset_fl_arr, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %97, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %26, %25
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %15

107:                                              ; preds = %15
  ret void
}

declare dso_local %struct.qed_tid_seg* @qed_cxt_tid_seg_info(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @ILT_PAGE_IN_BYTES(i32) #1

declare dso_local i64 @CDUT_SEG_BLK(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i64 @CDUT_FL_SEG_BLK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
