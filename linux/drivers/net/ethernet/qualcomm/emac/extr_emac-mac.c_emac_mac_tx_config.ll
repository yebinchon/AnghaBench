; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_tx_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_tx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, i64 }

@EMAC_MAX_TX_OFFLOAD_THRESH = common dso_local global i32 0, align 4
@JUMBO_TASK_OFFLOAD_THRESHOLD_BMSK = common dso_local global i32 0, align 4
@EMAC_TXQ_CTRL_1 = common dso_local global i64 0, align 8
@NUM_TPD_BURST_PREF_SHFT = common dso_local global i32 0, align 4
@NUM_TPD_BURST_PREF_BMSK = common dso_local global i32 0, align 4
@TXQ_MODE = common dso_local global i32 0, align 4
@LS_8023_SP = common dso_local global i32 0, align 4
@NUM_TXF_BURST_PREF_SHFT = common dso_local global i32 0, align 4
@NUM_TXF_BURST_PREF_BMSK = common dso_local global i32 0, align 4
@EMAC_TXQ_CTRL_0 = common dso_local global i64 0, align 8
@EMAC_TXQ_CTRL_2 = common dso_local global i64 0, align 8
@TXF_HWM_BMSK = common dso_local global i32 0, align 4
@TXF_LWM_BMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_mac_tx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_mac_tx_config(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %4 = load i32, i32* @EMAC_MAX_TX_OFFLOAD_THRESH, align 4
  %5 = ashr i32 %4, 3
  %6 = load i32, i32* @JUMBO_TASK_OFFLOAD_THRESHOLD_BMSK, align 4
  %7 = and i32 %5, %6
  %8 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EMAC_TXQ_CTRL_1, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NUM_TPD_BURST_PREF_SHFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @NUM_TPD_BURST_PREF_BMSK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @TXQ_MODE, align 4
  %22 = load i32, i32* @LS_8023_SP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @NUM_TXF_BURST_PREF_SHFT, align 4
  %27 = shl i32 256, %26
  %28 = load i32, i32* @NUM_TXF_BURST_PREF_BMSK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EMAC_TXQ_CTRL_0, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EMAC_TXQ_CTRL_2, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* @TXF_HWM_BMSK, align 4
  %45 = load i32, i32* @TXF_LWM_BMSK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @emac_reg_update32(i64 %43, i32 %46, i32 0)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @emac_reg_update32(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
