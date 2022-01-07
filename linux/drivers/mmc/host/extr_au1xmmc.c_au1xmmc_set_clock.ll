; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32 }

@SD_CONFIG_DIV = common dso_local global i32 0, align 4
@SD_CONFIG_DE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*, i32)* @au1xmmc_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_set_clock(%struct.au1xmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.au1xmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_get_rate(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = udiv i32 %12, %13
  %15 = udiv i32 %14, 2
  %16 = sub i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %18 = call i32 @HOST_CONFIG(%struct.au1xmmc_host* %17)
  %19 = call i32 @__raw_readl(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @SD_CONFIG_DIV, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SD_CONFIG_DIV, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @SD_CONFIG_DE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %33 = call i32 @HOST_CONFIG(%struct.au1xmmc_host* %32)
  %34 = call i32 @__raw_writel(i32 %31, i32 %33)
  %35 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @HOST_CONFIG(%struct.au1xmmc_host*) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
