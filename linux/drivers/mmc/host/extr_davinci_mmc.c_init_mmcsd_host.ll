; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_init_mmcsd_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_init_mmcsd_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i64 }

@DAVINCI_MMCCLK = common dso_local global i64 0, align 8
@MMCCLK_CLKEN = common dso_local global i32 0, align 4
@DAVINCI_MMCTOR = common dso_local global i64 0, align 8
@DAVINCI_MMCTOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_davinci_host*)* @init_mmcsd_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mmcsd_host(%struct.mmc_davinci_host* %0) #0 {
  %2 = alloca %struct.mmc_davinci_host*, align 8
  store %struct.mmc_davinci_host* %0, %struct.mmc_davinci_host** %2, align 8
  %3 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %4 = call i32 @mmc_davinci_reset_ctrl(%struct.mmc_davinci_host* %3, i32 1)
  %5 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %6 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DAVINCI_MMCCLK, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 0, i64 %9)
  %11 = load i32, i32* @MMCCLK_CLKEN, align 4
  %12 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %13 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DAVINCI_MMCCLK, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %19 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DAVINCI_MMCTOR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 8191, i64 %22)
  %24 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %25 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DAVINCI_MMCTOD, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 65535, i64 %28)
  %30 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %31 = call i32 @mmc_davinci_reset_ctrl(%struct.mmc_davinci_host* %30, i32 0)
  ret void
}

declare dso_local i32 @mmc_davinci_reset_ctrl(%struct.mmc_davinci_host*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
