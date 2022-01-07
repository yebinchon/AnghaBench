; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_enable_vport_rl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_enable_vport_rl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }

@QM_REG_RLGLBLENABLE_RT_OFFSET = common dso_local global i32 0, align 4
@QM_REG_RLGLBLPERIOD_0_RT_OFFSET = common dso_local global i32 0, align 4
@QM_RL_PERIOD_CLK_25M = common dso_local global i32 0, align 4
@QM_REG_RLGLBLPERIODTIMER_0_RT_OFFSET = common dso_local global i32 0, align 4
@QM_BYPASS_EN = common dso_local global i64 0, align 8
@QM_REG_AFULLQMBYPTHRGLBLRL_RT_OFFSET = common dso_local global i32 0, align 4
@QM_VP_RL_BYPASS_THRESH_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i32)* @qed_enable_vport_rl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_enable_vport_rl(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %6 = load i32, i32* @QM_REG_RLGLBLENABLE_RT_OFFSET, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 1, i32 0
  %11 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %5, i32 %6, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = load i32, i32* @QM_REG_RLGLBLPERIOD_0_RT_OFFSET, align 4
  %17 = load i32, i32* @QM_RL_PERIOD_CLK_25M, align 4
  %18 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %15, i32 %16, i32 %17)
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %20 = load i32, i32* @QM_REG_RLGLBLPERIODTIMER_0_RT_OFFSET, align 4
  %21 = load i32, i32* @QM_RL_PERIOD_CLK_25M, align 4
  %22 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %19, i32 %20, i32 %21)
  %23 = load i64, i64* @QM_BYPASS_EN, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %27 = load i32, i32* @QM_REG_AFULLQMBYPTHRGLBLRL_RT_OFFSET, align 4
  %28 = load i32, i32* @QM_VP_RL_BYPASS_THRESH_SPEED, align 4
  %29 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %14
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
