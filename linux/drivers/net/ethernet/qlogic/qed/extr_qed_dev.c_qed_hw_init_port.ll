; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, i32 }
%struct.qed_ptt = type { i32 }

@NIG_REG_BRB_GATE_DNTFWD_PORT_RT_OFFSET = common dso_local global i32 0, align 4
@PHASE_PORT = common dso_local global i32 0, align 4
@PGLUE_B_REG_MASTER_WRITE_PAD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32)* @qed_hw_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_hw_init_port(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @QED_IS_CMT(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %16 = call i32 @IS_LEAD_HWFN(%struct.qed_hwfn* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %20 = load i32, i32* @NIG_REG_BRB_GATE_DNTFWD_PORT_RT_OFFSET, align 4
  %21 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %19, i32 %20, i32 0)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %24 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %25 = load i32, i32* @PHASE_PORT, align 4
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @qed_init_run(%struct.qed_hwfn* %23, %struct.qed_ptt* %24, i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %22
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %37 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %38 = load i32, i32* @PGLUE_B_REG_MASTER_WRITE_PAD_ENABLE, align 4
  %39 = call i32 @qed_wr(%struct.qed_hwfn* %36, %struct.qed_ptt* %37, i32 %38, i32 0)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %33
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @QED_IS_CMT(i32) #1

declare dso_local i32 @IS_LEAD_HWFN(%struct.qed_hwfn*) #1

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_init_run(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
