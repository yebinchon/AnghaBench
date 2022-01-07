; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_SEND_STOP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_SEND_STOP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i64 }

@HOST_S_DATA = common dso_local global i64 0, align 8
@HOST_S_STOP = common dso_local global i64 0, align 8
@SD_CONFIG2_DF = common dso_local global i32 0, align 4
@STOP_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*)* @SEND_STOP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SEND_STOP(%struct.au1xmmc_host* %0) #0 {
  %2 = alloca %struct.au1xmmc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %2, align 8
  %4 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HOST_S_DATA, align 8
  %8 = icmp ne i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load i64, i64* @HOST_S_STOP, align 8
  %12 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %13 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %15 = call i32 @HOST_CONFIG2(%struct.au1xmmc_host* %14)
  %16 = call i32 @__raw_readl(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SD_CONFIG2_DF, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %21 = call i32 @HOST_CONFIG2(%struct.au1xmmc_host* %20)
  %22 = call i32 @__raw_writel(i32 %19, i32 %21)
  %23 = call i32 (...) @wmb()
  %24 = load i32, i32* @STOP_CMD, align 4
  %25 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %26 = call i32 @HOST_CMD(%struct.au1xmmc_host* %25)
  %27 = call i32 @__raw_writel(i32 %24, i32 %26)
  %28 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @HOST_CONFIG2(%struct.au1xmmc_host*) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @HOST_CMD(%struct.au1xmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
