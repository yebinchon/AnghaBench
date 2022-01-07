; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_queue_priorities_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_queue_priorities_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64*, %struct.mwifiex_wmm_desc }
%struct.mwifiex_wmm_desc = type { i64*, i32 }

@ac_to_tid = common dso_local global i64** null, align 8
@tos_to_tid = common dso_local global i64* null, align 8
@MAX_NUM_TID = common dso_local global i32 0, align 4
@HIGH_PRIO_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*)* @mwifiex_wmm_queue_priorities_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_wmm_queue_priorities_tid(%struct.mwifiex_private* %0) #0 {
  %2 = alloca %struct.mwifiex_private*, align 8
  %3 = alloca %struct.mwifiex_wmm_desc*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %2, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %6, i32 0, i32 1
  store %struct.mwifiex_wmm_desc* %7, %struct.mwifiex_wmm_desc** %3, align 8
  %8 = load %struct.mwifiex_wmm_desc*, %struct.mwifiex_wmm_desc** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_wmm_desc, %struct.mwifiex_wmm_desc* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %47, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = load i64**, i64*** @ac_to_tid, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64*, i64** %15, i64 %20
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** @tos_to_tid, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 2
  %28 = sub nsw i32 7, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %25, i64 %29
  store i64 %24, i64* %30, align 8
  %31 = load i64**, i64*** @ac_to_tid, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64*, i64** %31, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** @tos_to_tid, align 8
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 2
  %44 = sub nsw i32 6, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %41, i64 %45
  store i64 %40, i64* %46, align 8
  br label %47

47:                                               ; preds = %14
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %11

50:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @MAX_NUM_TID, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %59 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64*, i64** @tos_to_tid, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %60, i64 %65
  store i64 %57, i64* %66, align 8
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %51

70:                                               ; preds = %51
  %71 = load %struct.mwifiex_wmm_desc*, %struct.mwifiex_wmm_desc** %3, align 8
  %72 = getelementptr inbounds %struct.mwifiex_wmm_desc, %struct.mwifiex_wmm_desc* %71, i32 0, i32 1
  %73 = load i32, i32* @HIGH_PRIO_TID, align 4
  %74 = call i32 @atomic_set(i32* %72, i32 %73)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
