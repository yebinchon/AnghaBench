; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_tid_seg_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_tid_seg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_tid_seg = type { i64 }
%struct.qed_hwfn = type { %struct.qed_cxt_mngr* }
%struct.qed_cxt_mngr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_tid_seg* }

@MAX_CONN_TYPES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qed_tid_seg* (%struct.qed_hwfn*, i64)* @qed_cxt_tid_seg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qed_tid_seg* @qed_cxt_tid_seg_info(%struct.qed_hwfn* %0, i64 %1) #0 {
  %3 = alloca %struct.qed_tid_seg*, align 8
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qed_cxt_mngr*, align 8
  %7 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %9, align 8
  store %struct.qed_cxt_mngr* %10, %struct.qed_cxt_mngr** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %39, %2
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @MAX_CONN_TYPES, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %6, align 8
  %17 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %22, i64 %23
  %25 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %15
  %29 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %6, align 8
  %30 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %35, i64 %36
  store %struct.qed_tid_seg* %37, %struct.qed_tid_seg** %3, align 8
  br label %43

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %11

42:                                               ; preds = %11
  store %struct.qed_tid_seg* null, %struct.qed_tid_seg** %3, align 8
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %3, align 8
  ret %struct.qed_tid_seg* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
