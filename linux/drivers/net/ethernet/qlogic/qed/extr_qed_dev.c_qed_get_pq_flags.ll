; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_get_pq_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_get_pq_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PQ_FLAGS_LB = common dso_local global i32 0, align 4
@PQ_FLAGS_VFS = common dso_local global i32 0, align 4
@PQ_FLAGS_MCOS = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@PQ_FLAGS_ACK = common dso_local global i32 0, align 4
@PQ_FLAGS_OOO = common dso_local global i32 0, align 4
@PQ_FLAGS_LLT = common dso_local global i32 0, align 4
@PQ_FLAGS_MTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown personality %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_get_pq_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_get_pq_flags(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %5 = load i32, i32* @PQ_FLAGS_LB, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @IS_QED_SRIOV(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @PQ_FLAGS_VFS, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %62 [
    i32 132, label %20
    i32 129, label %24
    i32 128, label %28
    i32 130, label %36
    i32 131, label %52
  ]

20:                                               ; preds = %15
  %21 = load i32, i32* @PQ_FLAGS_MCOS, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %69

24:                                               ; preds = %15
  %25 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %69

28:                                               ; preds = %15
  %29 = load i32, i32* @PQ_FLAGS_ACK, align 4
  %30 = load i32, i32* @PQ_FLAGS_OOO, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %69

36:                                               ; preds = %15
  %37 = load i32, i32* @PQ_FLAGS_MCOS, align 4
  %38 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PQ_FLAGS_LLT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %45 = call i32 @IS_QED_MULTI_TC_ROCE(%struct.qed_hwfn* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load i32, i32* @PQ_FLAGS_MTC, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %36
  br label %69

52:                                               ; preds = %15
  %53 = load i32, i32* @PQ_FLAGS_MCOS, align 4
  %54 = load i32, i32* @PQ_FLAGS_ACK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @PQ_FLAGS_OOO, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %69

62:                                               ; preds = %15
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %65 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DP_ERR(%struct.qed_hwfn* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i32 0, i32* %2, align 4
  br label %71

69:                                               ; preds = %52, %51, %28, %24, %20
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %62
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @IS_QED_SRIOV(i32) #1

declare dso_local i32 @IS_QED_MULTI_TC_ROCE(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
