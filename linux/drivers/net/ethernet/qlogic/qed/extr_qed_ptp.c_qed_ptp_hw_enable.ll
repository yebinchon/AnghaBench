; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { i32, %struct.qed_ptt* }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to acquire PTT for PTP\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Couldn't acquire the resource lock, skip ptp enable for this PF\0A\00", align 1
@NIG_REG_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_TX_LLH_PTP_PARAM_MASK = common dso_local global i32 0, align 4
@NIG_REG_TX_LLH_PTP_RULE_MASK = common dso_local global i32 0, align 4
@NIG_REG_TX_PTP_EN = common dso_local global i32 0, align 4
@NIG_REG_RX_PTP_EN = common dso_local global i32 0, align 4
@NIG_REG_TS_OUTPUT_ENABLE_PDA = common dso_local global i32 0, align 4
@NIG_REG_TIMESYNC_GEN_REG_BB = common dso_local global i32 0, align 4
@NIG_REG_TSGEN_FREECNT_UPDATE_K2 = common dso_local global i32 0, align 4
@NIG_REG_TSGEN_FREE_CNT_VALUE_LSB = common dso_local global i32 0, align 4
@NIG_REG_TSGEN_FREE_CNT_VALUE_MSB = common dso_local global i32 0, align 4
@NIG_REG_PTP_LATCH_OSTS_PKT_TIME = common dso_local global i32 0, align 4
@NIG_REG_TSGEN_DRIFT_CNTR_CONF = common dso_local global i32 0, align 4
@NIG_REG_TSGEN_RST_DRIFT_CNTR = common dso_local global i32 0, align 4
@NIG_REG_LLH_PTP_HOST_BUF_SEQID = common dso_local global i32 0, align 4
@QED_TIMESTAMP_MASK = common dso_local global i32 0, align 4
@NIG_REG_TX_LLH_PTP_BUF_SEQID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*)* @qed_ptp_hw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ptp_hw_enable(%struct.qed_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  %7 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %8 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %7)
  store %struct.qed_hwfn* %8, %struct.qed_hwfn** %4, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %9)
  store %struct.qed_ptt* %10, %struct.qed_ptt** %5, align 8
  %11 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %12 = icmp ne %struct.qed_ptt* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = call i32 @DP_NOTICE(%struct.qed_hwfn* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %139

18:                                               ; preds = %1
  %19 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 1
  store %struct.qed_ptt* %19, %struct.qed_ptt** %21, align 8
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %23 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %24 = call i32 @qed_ptp_res_lock(%struct.qed_hwfn* %22, %struct.qed_ptt* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = call i32 @DP_INFO(%struct.qed_hwfn* %28, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %32 = call i32 @qed_ptt_release(%struct.qed_hwfn* %30, %struct.qed_ptt* %31)
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %34 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %33, i32 0, i32 1
  store %struct.qed_ptt* null, %struct.qed_ptt** %34, align 8
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %139

36:                                               ; preds = %18
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %39 = load i32, i32* @NIG_REG_LLH_PTP_PARAM_MASK, align 4
  %40 = call i32 @qed_wr(%struct.qed_hwfn* %37, %struct.qed_ptt* %38, i32 %39, i32 2047)
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %42 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %43 = load i32, i32* @NIG_REG_LLH_PTP_RULE_MASK, align 4
  %44 = call i32 @qed_wr(%struct.qed_hwfn* %41, %struct.qed_ptt* %42, i32 %43, i32 16383)
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %46 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %47 = load i32, i32* @NIG_REG_TX_LLH_PTP_PARAM_MASK, align 4
  %48 = call i32 @qed_wr(%struct.qed_hwfn* %45, %struct.qed_ptt* %46, i32 %47, i32 2047)
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %50 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %51 = load i32, i32* @NIG_REG_TX_LLH_PTP_RULE_MASK, align 4
  %52 = call i32 @qed_wr(%struct.qed_hwfn* %49, %struct.qed_ptt* %50, i32 %51, i32 16383)
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %54 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %55 = load i32, i32* @NIG_REG_TX_PTP_EN, align 4
  %56 = call i32 @qed_wr(%struct.qed_hwfn* %53, %struct.qed_ptt* %54, i32 %55, i32 7)
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %58 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %59 = load i32, i32* @NIG_REG_RX_PTP_EN, align 4
  %60 = call i32 @qed_wr(%struct.qed_hwfn* %57, %struct.qed_ptt* %58, i32 %59, i32 7)
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %62 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %63 = load i32, i32* @NIG_REG_TS_OUTPUT_ENABLE_PDA, align 4
  %64 = call i32 @qed_wr(%struct.qed_hwfn* %61, %struct.qed_ptt* %62, i32 %63, i32 1)
  %65 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %66 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @QED_IS_BB_B0(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %36
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %72 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %73 = load i32, i32* @NIG_REG_TIMESYNC_GEN_REG_BB, align 4
  %74 = call i32 @qed_wr(%struct.qed_hwfn* %71, %struct.qed_ptt* %72, i32 %73, i32 2)
  br label %75

75:                                               ; preds = %70, %36
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %77 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @QED_IS_AH(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %83 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %84 = load i32, i32* @NIG_REG_TSGEN_FREECNT_UPDATE_K2, align 4
  %85 = call i32 @qed_wr(%struct.qed_hwfn* %82, %struct.qed_ptt* %83, i32 %84, i32 2)
  br label %86

86:                                               ; preds = %81, %75
  %87 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %88 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %89 = load i32, i32* @NIG_REG_TSGEN_FREE_CNT_VALUE_LSB, align 4
  %90 = call i32 @qed_wr(%struct.qed_hwfn* %87, %struct.qed_ptt* %88, i32 %89, i32 0)
  %91 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %92 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %93 = load i32, i32* @NIG_REG_TSGEN_FREE_CNT_VALUE_MSB, align 4
  %94 = call i32 @qed_wr(%struct.qed_hwfn* %91, %struct.qed_ptt* %92, i32 %93, i32 0)
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %96 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @QED_IS_BB_B0(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %86
  %101 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %102 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %103 = load i32, i32* @NIG_REG_TIMESYNC_GEN_REG_BB, align 4
  %104 = call i32 @qed_wr(%struct.qed_hwfn* %101, %struct.qed_ptt* %102, i32 %103, i32 4)
  br label %105

105:                                              ; preds = %100, %86
  %106 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %107 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @QED_IS_AH(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %113 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %114 = load i32, i32* @NIG_REG_TSGEN_FREECNT_UPDATE_K2, align 4
  %115 = call i32 @qed_wr(%struct.qed_hwfn* %112, %struct.qed_ptt* %113, i32 %114, i32 4)
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %117 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %118 = load i32, i32* @NIG_REG_PTP_LATCH_OSTS_PKT_TIME, align 4
  %119 = call i32 @qed_wr(%struct.qed_hwfn* %116, %struct.qed_ptt* %117, i32 %118, i32 1)
  br label %120

120:                                              ; preds = %111, %105
  %121 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %122 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %123 = load i32, i32* @NIG_REG_TSGEN_DRIFT_CNTR_CONF, align 4
  %124 = call i32 @qed_wr(%struct.qed_hwfn* %121, %struct.qed_ptt* %122, i32 %123, i32 0)
  %125 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %126 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %127 = load i32, i32* @NIG_REG_TSGEN_RST_DRIFT_CNTR, align 4
  %128 = call i32 @qed_wr(%struct.qed_hwfn* %125, %struct.qed_ptt* %126, i32 %127, i32 0)
  %129 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %130 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %131 = load i32, i32* @NIG_REG_LLH_PTP_HOST_BUF_SEQID, align 4
  %132 = load i32, i32* @QED_TIMESTAMP_MASK, align 4
  %133 = call i32 @qed_wr(%struct.qed_hwfn* %129, %struct.qed_ptt* %130, i32 %131, i32 %132)
  %134 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %135 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %136 = load i32, i32* @NIG_REG_TX_LLH_PTP_BUF_SEQID, align 4
  %137 = load i32, i32* @QED_TIMESTAMP_MASK, align 4
  %138 = call i32 @qed_wr(%struct.qed_hwfn* %134, %struct.qed_ptt* %135, i32 %136, i32 %137)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %120, %27, %13
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_ptp_res_lock(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i64 @QED_IS_BB_B0(i32) #1

declare dso_local i64 @QED_IS_AH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
