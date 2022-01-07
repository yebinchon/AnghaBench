; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_simd_handler_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_simd_handler_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, %struct.qed_hwfn* }
%struct.qed_hwfn = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_dev*, i32)* @qed_simd_handler_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_simd_handler_clean(%struct.qed_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %8 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %7, i32 0, i32 1
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %12 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = srem i32 %10, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i64 %15
  store %struct.qed_hwfn* %16, %struct.qed_hwfn** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %19 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @memset(i32* %27, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
