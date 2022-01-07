; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { %struct.qed_ptt* }
%struct.qed_ptt = type { i32 }

@NIG_REG_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_TX_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_TX_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_RX_PTP_EN = common dso_local global i32 0, align 4
@NIG_REG_TX_PTP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*)* @qed_ptp_hw_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ptp_hw_disable(%struct.qed_dev* %0) #0 {
  %2 = alloca %struct.qed_dev*, align 8
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %2, align 8
  %5 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %6 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %5)
  store %struct.qed_hwfn* %6, %struct.qed_hwfn** %3, align 8
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %7, i32 0, i32 0
  %9 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  store %struct.qed_ptt* %9, %struct.qed_ptt** %4, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %11 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %12 = call i32 @qed_ptp_res_unlock(%struct.qed_hwfn* %10, %struct.qed_ptt* %11)
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %15 = load i32, i32* @NIG_REG_LLH_PTP_PARAM_MASK, align 4
  %16 = call i32 @qed_wr(%struct.qed_hwfn* %13, %struct.qed_ptt* %14, i32 %15, i32 2047)
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %19 = load i32, i32* @NIG_REG_LLH_PTP_RULE_MASK, align 4
  %20 = call i32 @qed_wr(%struct.qed_hwfn* %17, %struct.qed_ptt* %18, i32 %19, i32 16383)
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %22 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %23 = load i32, i32* @NIG_REG_TX_LLH_PTP_PARAM_MASK, align 4
  %24 = call i32 @qed_wr(%struct.qed_hwfn* %21, %struct.qed_ptt* %22, i32 %23, i32 2047)
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %26 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %27 = load i32, i32* @NIG_REG_TX_LLH_PTP_RULE_MASK, align 4
  %28 = call i32 @qed_wr(%struct.qed_hwfn* %25, %struct.qed_ptt* %26, i32 %27, i32 16383)
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %30 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %31 = load i32, i32* @NIG_REG_RX_PTP_EN, align 4
  %32 = call i32 @qed_wr(%struct.qed_hwfn* %29, %struct.qed_ptt* %30, i32 %31, i32 0)
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %34 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %35 = load i32, i32* @NIG_REG_TX_PTP_EN, align 4
  %36 = call i32 @qed_wr(%struct.qed_hwfn* %33, %struct.qed_ptt* %34, i32 %35, i32 0)
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %38 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %39 = call i32 @qed_ptt_release(%struct.qed_hwfn* %37, %struct.qed_ptt* %38)
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %41 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %40, i32 0, i32 0
  store %struct.qed_ptt* null, %struct.qed_ptt** %41, align 8
  ret i32 0
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @qed_ptp_res_unlock(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
