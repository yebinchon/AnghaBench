; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20.c_tegra20_mc_hotreset_deassert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20.c_tegra20_mc_hotreset_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mc = type { i32 }
%struct.tegra_mc_reset = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_mc*, %struct.tegra_mc_reset*)* @tegra20_mc_hotreset_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra20_mc_hotreset_deassert(%struct.tegra_mc* %0, %struct.tegra_mc_reset* %1) #0 {
  %3 = alloca %struct.tegra_mc*, align 8
  %4 = alloca %struct.tegra_mc_reset*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_mc* %0, %struct.tegra_mc** %3, align 8
  store %struct.tegra_mc_reset* %1, %struct.tegra_mc_reset** %4, align 8
  %7 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %12 = load %struct.tegra_mc_reset*, %struct.tegra_mc_reset** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_mc_reset, %struct.tegra_mc_reset* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mc_readl(%struct.tegra_mc* %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.tegra_mc_reset*, %struct.tegra_mc_reset** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_mc_reset, %struct.tegra_mc_reset* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = or i32 %17, %21
  %23 = load %struct.tegra_mc_reset*, %struct.tegra_mc_reset** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_mc_reset, %struct.tegra_mc_reset* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mc_writel(%struct.tegra_mc* %16, i32 %22, i32 %25)
  %27 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mc_readl(%struct.tegra_mc*, i32) #1

declare dso_local i32 @mc_writel(%struct.tegra_mc*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
