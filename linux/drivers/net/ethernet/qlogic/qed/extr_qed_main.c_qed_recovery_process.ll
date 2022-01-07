; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_recovery_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_recovery_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*)* @qed_recovery_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_recovery_process(%struct.qed_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  %7 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %8 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %7)
  store %struct.qed_hwfn* %8, %struct.qed_hwfn** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %9)
  store %struct.qed_ptt* %10, %struct.qed_ptt** %5, align 8
  %11 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %12 = icmp ne %struct.qed_ptt* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %19 = call i32 @qed_start_recovery_process(%struct.qed_hwfn* %17, %struct.qed_ptt* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %22 = call i32 @qed_ptt_release(%struct.qed_hwfn* %20, %struct.qed_ptt* %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_start_recovery_process(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
