; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_queue_cid = type { %struct.qed_hwfn* }
%struct.qed_hwfn = type { i32 }

@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to read queue coalescing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32*, i8*)* @qed_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_get_coalesce(%struct.qed_dev* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qed_queue_cid*, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.qed_queue_cid*
  store %struct.qed_queue_cid* %11, %struct.qed_queue_cid** %7, align 8
  %12 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %7, align 8
  %13 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %12, i32 0, i32 0
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %13, align 8
  store %struct.qed_hwfn* %14, %struct.qed_hwfn** %8, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @qed_get_queue_coalesce(%struct.qed_hwfn* %15, i32* %16, i8* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %23 = load i32, i32* @QED_MSG_DEBUG, align 4
  %24 = call i32 @DP_VERBOSE(%struct.qed_dev* %22, i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i32, i32* %9, align 4
  ret i32 %26
}

declare dso_local i32 @qed_get_queue_coalesce(%struct.qed_hwfn*, i32*, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
