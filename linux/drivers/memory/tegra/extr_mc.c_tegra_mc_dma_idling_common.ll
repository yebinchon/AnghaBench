; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_tegra_mc_dma_idling_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_tegra_mc_dma_idling_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mc = type { i32 }
%struct.tegra_mc_reset = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_mc*, %struct.tegra_mc_reset*)* @tegra_mc_dma_idling_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_mc_dma_idling_common(%struct.tegra_mc* %0, %struct.tegra_mc_reset* %1) #0 {
  %3 = alloca %struct.tegra_mc*, align 8
  %4 = alloca %struct.tegra_mc_reset*, align 8
  store %struct.tegra_mc* %0, %struct.tegra_mc** %3, align 8
  store %struct.tegra_mc_reset* %1, %struct.tegra_mc_reset** %4, align 8
  %5 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %6 = load %struct.tegra_mc_reset*, %struct.tegra_mc_reset** %4, align 8
  %7 = getelementptr inbounds %struct.tegra_mc_reset, %struct.tegra_mc_reset* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mc_readl(%struct.tegra_mc* %5, i32 %8)
  %10 = load %struct.tegra_mc_reset*, %struct.tegra_mc_reset** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_mc_reset, %struct.tegra_mc_reset* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = and i32 %9, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i32 @mc_readl(%struct.tegra_mc*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
