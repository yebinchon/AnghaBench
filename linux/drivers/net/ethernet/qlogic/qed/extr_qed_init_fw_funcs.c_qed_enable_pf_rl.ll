; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_enable_pf_rl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_enable_pf_rl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }

@QM_REG_RLPFENABLE_RT_OFFSET = common dso_local global i32 0, align 4
@MAX_NUM_VOQS_E4 = common dso_local global i32 0, align 4
@QM_REG_RLPFVOQENABLE_RT_OFFSET = common dso_local global i32 0, align 4
@QM_REG_RLPFVOQENABLE_MSB_RT_OFFSET = common dso_local global i32 0, align 4
@QM_REG_RLPFPERIOD_RT_OFFSET = common dso_local global i32 0, align 4
@QM_RL_PERIOD_CLK_25M = common dso_local global i32 0, align 4
@QM_REG_RLPFPERIODTIMER_RT_OFFSET = common dso_local global i32 0, align 4
@QM_BYPASS_EN = common dso_local global i64 0, align 8
@QM_REG_AFULLQMBYPTHRPFRL_RT_OFFSET = common dso_local global i32 0, align 4
@QM_PF_RL_UPPER_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i32)* @qed_enable_pf_rl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_enable_pf_rl(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %8 = load i32, i32* @QM_REG_RLPFENABLE_RT_OFFSET, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  %13 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %7, i32 %8, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = load i32, i32* @MAX_NUM_VOQS_E4, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %22 = load i32, i32* @QM_REG_RLPFVOQENABLE_RT_OFFSET, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 32
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %29 = load i32, i32* @QM_REG_RLPFVOQENABLE_MSB_RT_OFFSET, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 32
  %32 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %28, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %16
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %35 = load i32, i32* @QM_REG_RLPFPERIOD_RT_OFFSET, align 4
  %36 = load i32, i32* @QM_RL_PERIOD_CLK_25M, align 4
  %37 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %34, i32 %35, i32 %36)
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %39 = load i32, i32* @QM_REG_RLPFPERIODTIMER_RT_OFFSET, align 4
  %40 = load i32, i32* @QM_RL_PERIOD_CLK_25M, align 4
  %41 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %38, i32 %39, i32 %40)
  %42 = load i64, i64* @QM_BYPASS_EN, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %46 = load i32, i32* @QM_REG_AFULLQMBYPTHRPFRL_RT_OFFSET, align 4
  %47 = load i32, i32* @QM_PF_RL_UPPER_BOUND, align 4
  %48 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %33
  br label %50

50:                                               ; preds = %49, %2
  ret void
}

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
