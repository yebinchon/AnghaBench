; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_cfg_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_cfg_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { %struct.qed_ptt* }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid PTP filter type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NIG_REG_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@QED_PTP_UCAST_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_RX_PTP_EN = common dso_local global i32 0, align 4
@QED_PTP_HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@NIG_REG_TX_PTP_EN = common dso_local global i32 0, align 4
@NIG_REG_TX_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_TX_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_LLH_PTP_HOST_BUF_SEQID = common dso_local global i32 0, align 4
@QED_TIMESTAMP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32, i32)* @qed_ptp_hw_cfg_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ptp_hw_cfg_filters(%struct.qed_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %13 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %12)
  store %struct.qed_hwfn* %13, %struct.qed_hwfn** %8, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load %struct.qed_ptt*, %struct.qed_ptt** %15, align 8
  store %struct.qed_ptt* %16, %struct.qed_ptt** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %28 [
    i32 136, label %18
    i32 137, label %19
    i32 135, label %20
    i32 134, label %21
    i32 129, label %22
    i32 128, label %23
    i32 131, label %24
    i32 130, label %25
    i32 133, label %26
    i32 132, label %27
  ]

18:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 16383, i32* %10, align 4
  br label %34

19:                                               ; preds = %3
  store i32 7, i32* %11, align 4
  store i32 15530, i32* %10, align 4
  br label %34

20:                                               ; preds = %3
  store i32 3, i32* %11, align 4
  store i32 16378, i32* %10, align 4
  br label %34

21:                                               ; preds = %3
  store i32 3, i32* %11, align 4
  store i32 16382, i32* %10, align 4
  br label %34

22:                                               ; preds = %3
  store i32 5, i32* %11, align 4
  store i32 16298, i32* %10, align 4
  br label %34

23:                                               ; preds = %3
  store i32 5, i32* %11, align 4
  store i32 16366, i32* %10, align 4
  br label %34

24:                                               ; preds = %3
  store i32 5, i32* %11, align 4
  store i32 15615, i32* %10, align 4
  br label %34

25:                                               ; preds = %3
  store i32 5, i32* %11, align 4
  store i32 16127, i32* %10, align 4
  br label %34

26:                                               ; preds = %3
  store i32 5, i32* %11, align 4
  store i32 15530, i32* %10, align 4
  br label %34

27:                                               ; preds = %3
  store i32 5, i32* %11, align 4
  store i32 16110, i32* %10, align 4
  br label %34

28:                                               ; preds = %3
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DP_INFO(%struct.qed_hwfn* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %88

34:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %36 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %37 = load i32, i32* @NIG_REG_LLH_PTP_PARAM_MASK, align 4
  %38 = load i32, i32* @QED_PTP_UCAST_PARAM_MASK, align 4
  %39 = call i32 @qed_wr(%struct.qed_hwfn* %35, %struct.qed_ptt* %36, i32 %37, i32 %38)
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %41 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %42 = load i32, i32* @NIG_REG_LLH_PTP_RULE_MASK, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @qed_wr(%struct.qed_hwfn* %40, %struct.qed_ptt* %41, i32 %42, i32 %43)
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %46 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %47 = load i32, i32* @NIG_REG_RX_PTP_EN, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @qed_wr(%struct.qed_hwfn* %45, %struct.qed_ptt* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @QED_PTP_HWTSTAMP_TX_OFF, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %34
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %55 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %56 = load i32, i32* @NIG_REG_TX_PTP_EN, align 4
  %57 = call i32 @qed_wr(%struct.qed_hwfn* %54, %struct.qed_ptt* %55, i32 %56, i32 0)
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %59 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %60 = load i32, i32* @NIG_REG_TX_LLH_PTP_PARAM_MASK, align 4
  %61 = call i32 @qed_wr(%struct.qed_hwfn* %58, %struct.qed_ptt* %59, i32 %60, i32 2047)
  %62 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %63 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %64 = load i32, i32* @NIG_REG_TX_LLH_PTP_RULE_MASK, align 4
  %65 = call i32 @qed_wr(%struct.qed_hwfn* %62, %struct.qed_ptt* %63, i32 %64, i32 16383)
  br label %82

66:                                               ; preds = %34
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %68 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %69 = load i32, i32* @NIG_REG_TX_PTP_EN, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @qed_wr(%struct.qed_hwfn* %67, %struct.qed_ptt* %68, i32 %69, i32 %70)
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %73 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %74 = load i32, i32* @NIG_REG_TX_LLH_PTP_PARAM_MASK, align 4
  %75 = load i32, i32* @QED_PTP_UCAST_PARAM_MASK, align 4
  %76 = call i32 @qed_wr(%struct.qed_hwfn* %72, %struct.qed_ptt* %73, i32 %74, i32 %75)
  %77 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %78 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %79 = load i32, i32* @NIG_REG_TX_LLH_PTP_RULE_MASK, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @qed_wr(%struct.qed_hwfn* %77, %struct.qed_ptt* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %66, %53
  %83 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %84 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %85 = load i32, i32* @NIG_REG_LLH_PTP_HOST_BUF_SEQID, align 4
  %86 = load i32, i32* @QED_TIMESTAMP_MASK, align 4
  %87 = call i32 @qed_wr(%struct.qed_hwfn* %83, %struct.qed_ptt* %84, i32 %85, i32 %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %28
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
