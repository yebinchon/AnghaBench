; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.dw_mci_slot = type { i32, %struct.dw_mci* }
%struct.dw_mci = type { i64 }

@TRANS_MODE_IDMAC = common dso_local global i64 0, align 8
@SDMMC_CTRL_DMA_RESET = common dso_local global i32 0, align 4
@SDMMC_CTRL_FIFO_RESET = common dso_local global i32 0, align 4
@RST_N = common dso_local global i32 0, align 4
@SDMMC_RST_HWACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @dw_mci_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_hw_reset(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.dw_mci_slot*, align 8
  %4 = alloca %struct.dw_mci*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %6)
  store %struct.dw_mci_slot* %7, %struct.dw_mci_slot** %3, align 8
  %8 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %9 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %8, i32 0, i32 1
  %10 = load %struct.dw_mci*, %struct.dw_mci** %9, align 8
  store %struct.dw_mci* %10, %struct.dw_mci** %4, align 8
  %11 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %12 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TRANS_MODE_IDMAC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %18 = call i32 @dw_mci_idmac_reset(%struct.dw_mci* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %21 = load i32, i32* @SDMMC_CTRL_DMA_RESET, align 4
  %22 = load i32, i32* @SDMMC_CTRL_FIFO_RESET, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @dw_mci_ctrl_reset(%struct.dw_mci* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %56

27:                                               ; preds = %19
  %28 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %29 = load i32, i32* @RST_N, align 4
  %30 = call i32 @mci_readl(%struct.dw_mci* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @SDMMC_RST_HWACTIVE, align 4
  %32 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %33 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %31, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %40 = load i32, i32* @RST_N, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @mci_writel(%struct.dw_mci* %39, i32 %40, i32 %41)
  %43 = call i32 @usleep_range(i32 1, i32 2)
  %44 = load i32, i32* @SDMMC_RST_HWACTIVE, align 4
  %45 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %46 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %44, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %52 = load i32, i32* @RST_N, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @mci_writel(%struct.dw_mci* %51, i32 %52, i32 %53)
  %55 = call i32 @usleep_range(i32 200, i32 300)
  br label %56

56:                                               ; preds = %27, %26
  ret void
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dw_mci_idmac_reset(%struct.dw_mci*) #1

declare dso_local i32 @dw_mci_ctrl_reset(%struct.dw_mci*, i32) #1

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
