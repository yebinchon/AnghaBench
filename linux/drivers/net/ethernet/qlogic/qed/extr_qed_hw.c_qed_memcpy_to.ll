; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_memcpy_to.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_memcpy_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"hw_addr 0x%x, hw_addr 0x%x, src %p size %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_memcpy_to(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %12 = load i32, i32* @NETIF_MSG_HW, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %11, i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i8* %15, i64 %16)
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %19 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @qed_memcpy_hw(%struct.qed_hwfn* %18, %struct.qed_ptt* %19, i8* %20, i32 %21, i64 %22, i32 1)
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i8*, i64) #1

declare dso_local i32 @qed_memcpy_hw(%struct.qed_hwfn*, %struct.qed_ptt*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
