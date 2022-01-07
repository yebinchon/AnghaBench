; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-aspeed.c_aspeed_sdhci_set_bus_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-aspeed.c_aspeed_sdhci_set_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.aspeed_sdhci = type { %struct.aspeed_sdc* }
%struct.aspeed_sdc = type { i32 }

@MMC_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@SDHCI_CTRL_4BITBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @aspeed_sdhci_set_bus_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_sdhci_set_bus_width(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.aspeed_sdhci*, align 8
  %7 = alloca %struct.aspeed_sdc*, align 8
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.sdhci_pltfm_host* %10, %struct.sdhci_pltfm_host** %5, align 8
  %11 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %12 = call %struct.aspeed_sdhci* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %11)
  store %struct.aspeed_sdhci* %12, %struct.aspeed_sdhci** %6, align 8
  %13 = load %struct.aspeed_sdhci*, %struct.aspeed_sdhci** %6, align 8
  %14 = getelementptr inbounds %struct.aspeed_sdhci, %struct.aspeed_sdhci* %13, i32 0, i32 0
  %15 = load %struct.aspeed_sdc*, %struct.aspeed_sdc** %14, align 8
  store %struct.aspeed_sdc* %15, %struct.aspeed_sdc** %7, align 8
  %16 = load %struct.aspeed_sdc*, %struct.aspeed_sdc** %7, align 8
  %17 = load %struct.aspeed_sdhci*, %struct.aspeed_sdhci** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MMC_BUS_WIDTH_8, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @aspeed_sdc_configure_8bit_mode(%struct.aspeed_sdc* %16, %struct.aspeed_sdhci* %17, i32 %21)
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %24 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %25 = call i32 @sdhci_readb(%struct.sdhci_host* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %42 = call i32 @sdhci_writeb(%struct.sdhci_host* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.aspeed_sdhci* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @aspeed_sdc_configure_8bit_mode(%struct.aspeed_sdc*, %struct.aspeed_sdhci*, i32) #1

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
