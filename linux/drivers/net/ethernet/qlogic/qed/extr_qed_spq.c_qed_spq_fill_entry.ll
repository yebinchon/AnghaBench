; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_fill_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_fill_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_spq_entry = type { i32, %struct.TYPE_8__, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@qed_spq_blocking_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unknown SPQE completion mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_SPQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [102 x i8] c"Ramrod header: [CID 0x%08x CMD 0x%02x protocol 0x%02x] Data pointer: [%08x:%08x] Completion Mode: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"MODE_EBLOCK\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"MODE_BLOCK\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"MODE_CB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_spq_entry*)* @qed_spq_fill_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_spq_fill_entry(%struct.qed_hwfn* %0, %struct.qed_spq_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_spq_entry*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_spq_entry* %1, %struct.qed_spq_entry** %5, align 8
  %6 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %5, align 8
  %7 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %5, align 8
  %9 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %17 [
    i32 128, label %11
    i32 130, label %11
    i32 129, label %16
  ]

11:                                               ; preds = %2, %2
  %12 = load i32, i32* @qed_spq_blocking_cb, align 4
  %13 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %5, align 8
  %14 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  br label %25

16:                                               ; preds = %2
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %5, align 8
  %20 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DP_NOTICE(%struct.qed_hwfn* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %58

25:                                               ; preds = %16, %11
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = load i32, i32* @QED_MSG_SPQ, align 4
  %28 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %5, align 8
  %29 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %5, align 8
  %34 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %5, align 8
  %39 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %5, align 8
  %44 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %5, align 8
  %49 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %5, align 8
  %54 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @D_TRINE(i32 %55, i32 128, i32 130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %26, i32 %27, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %37, i32 %42, i32 %47, i32 %52, i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %25, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @D_TRINE(i32, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
