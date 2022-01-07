; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_tegra_mc_get_emem_device_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_tegra_mc_get_emem_device_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mc = type { i32 }

@MC_EMEM_ADR_CFG = common dso_local global i32 0, align 4
@MC_EMEM_ADR_CFG_EMEM_NUMDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_mc_get_emem_device_count(%struct.tegra_mc* %0) #0 {
  %2 = alloca %struct.tegra_mc*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_mc* %0, %struct.tegra_mc** %2, align 8
  %4 = load %struct.tegra_mc*, %struct.tegra_mc** %2, align 8
  %5 = load i32, i32* @MC_EMEM_ADR_CFG, align 4
  %6 = call i32 @mc_readl(%struct.tegra_mc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MC_EMEM_ADR_CFG_EMEM_NUMDEV, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

declare dso_local i32 @mc_readl(%struct.tegra_mc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
