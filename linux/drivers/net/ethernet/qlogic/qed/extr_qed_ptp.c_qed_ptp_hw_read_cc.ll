; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_read_cc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_hw_read_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { %struct.qed_ptt* }
%struct.qed_ptt = type { i32 }

@NIG_REG_TSGEN_SYNC_TIME_LSB = common dso_local global i32 0, align 4
@NIG_REG_TSGEN_SYNC_TIME_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32*)* @qed_ptp_hw_read_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ptp_hw_read_cc(%struct.qed_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %9 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %8)
  store %struct.qed_hwfn* %9, %struct.qed_hwfn** %5, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 0
  %12 = load %struct.qed_ptt*, %struct.qed_ptt** %11, align 8
  store %struct.qed_ptt* %12, %struct.qed_ptt** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %14 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %15 = load i32, i32* @NIG_REG_TSGEN_SYNC_TIME_LSB, align 4
  %16 = call i32 @qed_rd(%struct.qed_hwfn* %13, %struct.qed_ptt* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %19 = load i32, i32* @NIG_REG_TSGEN_SYNC_TIME_MSB, align 4
  %20 = call i32 @qed_rd(%struct.qed_hwfn* %17, %struct.qed_ptt* %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 32
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  ret i32 0
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
