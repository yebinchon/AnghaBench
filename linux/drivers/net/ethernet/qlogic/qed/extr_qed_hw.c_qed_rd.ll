; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bar_addr 0x%x, hw_addr 0x%x, val 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_rd(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @qed_set_ptt(%struct.qed_hwfn* %9, %struct.qed_ptt* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @REG_RD(%struct.qed_hwfn* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %17 = load i32, i32* @NETIF_MSG_HW, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %16, i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  ret i32 %22
}

declare dso_local i32 @qed_set_ptt(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @REG_RD(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
