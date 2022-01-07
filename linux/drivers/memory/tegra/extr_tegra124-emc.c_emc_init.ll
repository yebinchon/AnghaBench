; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_emc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_emc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_emc = type { i32, i32, i32, i32, i64 }

@EMC_FBIO_CFG5 = common dso_local global i64 0, align 8
@EMC_FBIO_CFG5_DRAM_TYPE_MASK = common dso_local global i32 0, align 4
@EMC_FBIO_CFG5_DRAM_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_emc*)* @emc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emc_init(%struct.tegra_emc* %0) #0 {
  %2 = alloca %struct.tegra_emc*, align 8
  store %struct.tegra_emc* %0, %struct.tegra_emc** %2, align 8
  %3 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %4 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @EMC_FBIO_CFG5, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl(i64 %7)
  %9 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @EMC_FBIO_CFG5_DRAM_TYPE_MASK, align 4
  %12 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %13 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load i32, i32* @EMC_FBIO_CFG5_DRAM_TYPE_SHIFT, align 4
  %17 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %22 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @tegra_mc_get_emem_device_count(i32 %23)
  %25 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %26 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %28 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %29 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %28, i32 0, i32 1
  %30 = call i32 @emc_read_current_timing(%struct.tegra_emc* %27, i32* %29)
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @tegra_mc_get_emem_device_count(i32) #1

declare dso_local i32 @emc_read_current_timing(%struct.tegra_emc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
