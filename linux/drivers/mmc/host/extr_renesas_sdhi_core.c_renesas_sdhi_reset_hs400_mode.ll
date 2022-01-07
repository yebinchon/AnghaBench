; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_reset_hs400_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_reset_hs400_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32 }
%struct.renesas_sdhi = type { i32 }

@CTL_SD_CARD_CLK_CTL = common dso_local global i32 0, align 4
@CLK_CTL_SCLKEN = common dso_local global i32 0, align 4
@CTL_SDIF_MODE = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_DT2FF = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_TMPPORT2 = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_TMPPORT2_HS400EN = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_TMPPORT2_HS400OSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, %struct.renesas_sdhi*)* @renesas_sdhi_reset_hs400_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_reset_hs400_mode(%struct.tmio_mmc_host* %0, %struct.renesas_sdhi* %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.renesas_sdhi*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store %struct.renesas_sdhi* %1, %struct.renesas_sdhi** %4, align 8
  %5 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %6 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %7 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %10 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %11 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %9, i32 %10)
  %12 = and i32 %8, %11
  %13 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %5, i32 %6, i32 %12)
  %14 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %15 = load i32, i32* @CTL_SDIF_MODE, align 4
  %16 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %17 = load i32, i32* @CTL_SDIF_MODE, align 4
  %18 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %16, i32 %17)
  %19 = and i32 -2, %18
  %20 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %14, i32 %15, i32 %19)
  %21 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %22 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %23 = load i32, i32* @SH_MOBILE_SDHI_SCC_DT2FF, align 4
  %24 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %25 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %21, %struct.renesas_sdhi* %22, i32 %23, i32 %26)
  %28 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %29 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %30 = load i32, i32* @SH_MOBILE_SDHI_SCC_TMPPORT2, align 4
  %31 = load i32, i32* @SH_MOBILE_SDHI_SCC_TMPPORT2_HS400EN, align 4
  %32 = load i32, i32* @SH_MOBILE_SDHI_SCC_TMPPORT2_HS400OSEL, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %36 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %37 = load i32, i32* @SH_MOBILE_SDHI_SCC_TMPPORT2, align 4
  %38 = call i32 @sd_scc_read32(%struct.tmio_mmc_host* %35, %struct.renesas_sdhi* %36, i32 %37)
  %39 = and i32 %34, %38
  %40 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %28, %struct.renesas_sdhi* %29, i32 %30, i32 %39)
  %41 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %42 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %43 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %44 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %45 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %46 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %44, i32 %45)
  %47 = or i32 %43, %46
  %48 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %41, i32 %42, i32 %47)
  ret void
}

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @sd_ctrl_read16(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @sd_scc_write32(%struct.tmio_mmc_host*, %struct.renesas_sdhi*, i32, i32) #1

declare dso_local i32 @sd_scc_read32(%struct.tmio_mmc_host*, %struct.renesas_sdhi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
