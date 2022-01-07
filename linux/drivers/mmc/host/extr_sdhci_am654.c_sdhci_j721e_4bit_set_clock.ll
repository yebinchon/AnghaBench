; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci_am654.c_sdhci_j721e_4bit_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci_am654.c_sdhci_j721e_4bit_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_am654_data = type { i32, i32 }

@OTAPDLYENA_MASK = common dso_local global i32 0, align 4
@OTAPDLYSEL_MASK = common dso_local global i32 0, align 4
@OTAPDLYENA_SHIFT = common dso_local global i32 0, align 4
@OTAPDLYSEL_SHIFT = common dso_local global i32 0, align 4
@PHY_CTRL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_j721e_4bit_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_j721e_4bit_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_am654_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.sdhci_pltfm_host* %10, %struct.sdhci_pltfm_host** %5, align 8
  %11 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %12 = call %struct.sdhci_am654_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %11)
  store %struct.sdhci_am654_data* %12, %struct.sdhci_am654_data** %6, align 8
  %13 = load i32, i32* @OTAPDLYENA_MASK, align 4
  %14 = load i32, i32* @OTAPDLYSEL_MASK, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @OTAPDLYENA_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %19 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OTAPDLYSEL_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %17, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %6, align 8
  %25 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PHY_CTRL4, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @sdhci_set_clock(%struct.sdhci_host* %31, i32 %32)
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_am654_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @sdhci_set_clock(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
