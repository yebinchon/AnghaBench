; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_read_rx_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_read_rx_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { %struct.qed_ptt* }
%struct.qed_ptt = type { i32 }

@NIG_REG_LLH_PTP_HOST_BUF_SEQID = common dso_local global i32 0, align 4
@QED_TIMESTAMP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid Rx timestamp, buf_seqid = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NIG_REG_LLH_PTP_HOST_BUF_TS_LSB = common dso_local global i32 0, align 4
@NIG_REG_LLH_PTP_HOST_BUF_TS_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32*)* @qed_ptp_hw_read_rx_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ptp_hw_read_rx_ts(%struct.qed_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %10 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %9)
  store %struct.qed_hwfn* %10, %struct.qed_hwfn** %6, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  store %struct.qed_ptt* %13, %struct.qed_ptt** %7, align 8
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %16 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %17 = load i32, i32* @NIG_REG_LLH_PTP_HOST_BUF_SEQID, align 4
  %18 = call i32 @qed_rd(%struct.qed_hwfn* %15, %struct.qed_ptt* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @QED_TIMESTAMP_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @DP_INFO(%struct.qed_hwfn* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %2
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %32 = load i32, i32* @NIG_REG_LLH_PTP_HOST_BUF_TS_LSB, align 4
  %33 = call i32 @qed_rd(%struct.qed_hwfn* %30, %struct.qed_ptt* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %35 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %36 = load i32, i32* @NIG_REG_LLH_PTP_HOST_BUF_TS_MSB, align 4
  %37 = call i32 @qed_rd(%struct.qed_hwfn* %34, %struct.qed_ptt* %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 32
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %47 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %48 = load i32, i32* @NIG_REG_LLH_PTP_HOST_BUF_SEQID, align 4
  %49 = load i32, i32* @QED_TIMESTAMP_MASK, align 4
  %50 = call i32 @qed_wr(%struct.qed_hwfn* %46, %struct.qed_ptt* %47, i32 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %29, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
