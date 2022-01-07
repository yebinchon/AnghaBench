; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_disable_scc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_disable_scc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32 }
%struct.renesas_sdhi = type { i32 }

@SH_MOBILE_SDHI_SCC_DTCNTL = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN = common dso_local global i32 0, align 4
@CTL_SD_CARD_CLK_CTL = common dso_local global i32 0, align 4
@CLK_CTL_SCLKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @renesas_sdhi_disable_scc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_disable_scc(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.renesas_sdhi*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %4 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %5 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %4)
  store %struct.renesas_sdhi* %5, %struct.renesas_sdhi** %3, align 8
  %6 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %7 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %8 = call i32 @renesas_sdhi_reset_scc(%struct.tmio_mmc_host* %6, %struct.renesas_sdhi* %7)
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %10 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %11 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL, align 4
  %12 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %15 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %16 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL, align 4
  %17 = call i32 @sd_scc_read32(%struct.tmio_mmc_host* %14, %struct.renesas_sdhi* %15, i32 %16)
  %18 = and i32 %13, %17
  %19 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %9, %struct.renesas_sdhi* %10, i32 %11, i32 %18)
  %20 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %21 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %22 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %23 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %24 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %25 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %23, i32 %24)
  %26 = or i32 %22, %25
  %27 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %20, i32 %21, i32 %26)
  ret void
}

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @renesas_sdhi_reset_scc(%struct.tmio_mmc_host*, %struct.renesas_sdhi*) #1

declare dso_local i32 @sd_scc_write32(%struct.tmio_mmc_host*, %struct.renesas_sdhi*, i32, i32) #1

declare dso_local i32 @sd_scc_read32(%struct.tmio_mmc_host*, %struct.renesas_sdhi*, i32) #1

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @sd_ctrl_read16(%struct.tmio_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
