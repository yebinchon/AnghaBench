; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_set_cmd_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_set_cmd_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32 }
%struct.mmc_request = type { i32 }

@SDIO = common dso_local global i32 0, align 4
@CTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_request*)* @set_cmd_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cmd_timeout(%struct.mmc_omap_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %7 = load i32, i32* @SDIO, align 4
  %8 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, -33
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %12 = load i32, i32* @SDIO, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %11, i32 %12, i32 %13)
  %15 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %16 = load i32, i32* @CTO, align 4
  %17 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %15, i32 %16, i32 253)
  ret void
}

declare dso_local i32 @OMAP_MMC_READ(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
