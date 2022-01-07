; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_rxmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_rxmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_rx_mode_ramrod_params = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vf[%d]\0A\00", align 1
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vf_rxmode(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_virtf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bnx2x_rx_mode_ramrod_params, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %11 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %12 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DP(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @bnx2x_vf_prep_rx_mode(%struct.bnx2x* %15, i32 %16, %struct.bnx2x_rx_mode_ramrod_params* %9, %struct.bnx2x_virtf* %17, i64 %18)
  %20 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %21 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %9, i32 0, i32 1
  %22 = call i32 @set_bit(i32 %20, i32* %21)
  %23 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.TYPE_2__* @vfq_get(%struct.bnx2x_virtf* %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %30 = call i32 @bnx2x_config_rx_mode(%struct.bnx2x* %29, %struct.bnx2x_rx_mode_ramrod_params* %9)
  ret i32 %30
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_vf_prep_rx_mode(%struct.bnx2x*, i32, %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_virtf*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @vfq_get(%struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_config_rx_mode(%struct.bnx2x*, %struct.bnx2x_rx_mode_ramrod_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
