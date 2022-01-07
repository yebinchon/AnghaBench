; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_simd_handler_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_simd_handler_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, %struct.qed_hwfn* }
%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { void (i8*)*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_dev*, i8*, i32, void (i8*)*)* @qed_simd_handler_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_simd_handler_config(%struct.qed_dev* %0, i8* %1, i32 %2, void (i8*)* %3) #0 {
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*)*, align 8
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store void (i8*)* %3, void (i8*)** %8, align 8
  %11 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %12 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %11, i32 0, i32 1
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %16 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = srem i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i64 %19
  store %struct.qed_hwfn* %20, %struct.qed_hwfn** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %23 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %21, %24
  store i32 %25, i32* %10, align 4
  %26 = load void (i8*)*, void (i8*)** %8, align 8
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %28 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store void (i8*)* %26, void (i8*)** %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %36 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %34, i8** %41, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
