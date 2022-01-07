; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20.c_tegra20_mc_dma_idling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20.c_tegra20_mc_dma_idling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mc = type { i32 }
%struct.tegra_mc_reset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_mc*, %struct.tegra_mc_reset*)* @tegra20_mc_dma_idling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra20_mc_dma_idling(%struct.tegra_mc* %0, %struct.tegra_mc_reset* %1) #0 {
  %3 = alloca %struct.tegra_mc*, align 8
  %4 = alloca %struct.tegra_mc_reset*, align 8
  store %struct.tegra_mc* %0, %struct.tegra_mc** %3, align 8
  store %struct.tegra_mc_reset* %1, %struct.tegra_mc_reset** %4, align 8
  %5 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %6 = load %struct.tegra_mc_reset*, %struct.tegra_mc_reset** %4, align 8
  %7 = getelementptr inbounds %struct.tegra_mc_reset, %struct.tegra_mc_reset* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @mc_readl(%struct.tegra_mc* %5, i32 %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

declare dso_local i64 @mc_readl(%struct.tegra_mc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
