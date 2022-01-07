; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_qm_iids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_qm_iids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_cxt_mngr* }
%struct.qed_cxt_mngr = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_tid_seg*, i64, i64 }
%struct.qed_tid_seg = type { i64 }
%struct.qed_qm_iids = type { i64, i64, i32 }

@MAX_CONN_TYPES = common dso_local global i64 0, align 8
@NUM_TASK_PF_SEGMENTS = common dso_local global i64 0, align 8
@QED_MSG_ILT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"iids: CIDS %08x vf_cids %08x tids %08x vf_tids %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_qm_iids*)* @qed_cxt_qm_iids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_cxt_qm_iids(%struct.qed_hwfn* %0, %struct.qed_qm_iids* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_qm_iids*, align 8
  %5 = alloca %struct.qed_cxt_mngr*, align 8
  %6 = alloca %struct.qed_tid_seg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_qm_iids* %1, %struct.qed_qm_iids** %4, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %12, align 8
  store %struct.qed_cxt_mngr* %13, %struct.qed_cxt_mngr** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %73, %2
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @MAX_CONN_TYPES, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %14
  %19 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %20 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.qed_qm_iids*, %struct.qed_qm_iids** %4, align 8
  %27 = getelementptr inbounds %struct.qed_qm_iids, %struct.qed_qm_iids* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 8
  %32 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %33 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %7, align 8
  %41 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %42 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %46, align 8
  store %struct.qed_tid_seg* %47, %struct.qed_tid_seg** %6, align 8
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %62, %18
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @NUM_TASK_PF_SEGMENTS, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %6, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %53, i64 %54
  %56 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.qed_qm_iids*, %struct.qed_qm_iids** %4, align 8
  %59 = getelementptr inbounds %struct.qed_qm_iids, %struct.qed_qm_iids* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %57
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %52
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %48

65:                                               ; preds = %48
  %66 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %6, align 8
  %67 = load i64, i64* @NUM_TASK_PF_SEGMENTS, align 8
  %68 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %66, i64 %67
  %69 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %65
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %14

76:                                               ; preds = %14
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %79 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 %77, %80
  %82 = load %struct.qed_qm_iids*, %struct.qed_qm_iids** %4, align 8
  %83 = getelementptr inbounds %struct.qed_qm_iids, %struct.qed_qm_iids* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %88 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = mul i64 %86, %89
  %91 = load %struct.qed_qm_iids*, %struct.qed_qm_iids** %4, align 8
  %92 = getelementptr inbounds %struct.qed_qm_iids, %struct.qed_qm_iids* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %96 = load i32, i32* @QED_MSG_ILT, align 4
  %97 = load %struct.qed_qm_iids*, %struct.qed_qm_iids** %4, align 8
  %98 = getelementptr inbounds %struct.qed_qm_iids, %struct.qed_qm_iids* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.qed_qm_iids*, %struct.qed_qm_iids** %4, align 8
  %101 = getelementptr inbounds %struct.qed_qm_iids, %struct.qed_qm_iids* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.qed_qm_iids*, %struct.qed_qm_iids** %4, align 8
  %104 = getelementptr inbounds %struct.qed_qm_iids, %struct.qed_qm_iids* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %95, i32 %96, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %99, i64 %102, i64 %105, i64 %106)
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
