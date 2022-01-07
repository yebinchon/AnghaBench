; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_hs400_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_hs400_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.renesas_sdhi = type { i32 }

@CTL_SD_CARD_CLK_CTL = common dso_local global i32 0, align 4
@CLK_CTL_SCLKEN = common dso_local global i32 0, align 4
@CTL_SDIF_MODE = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_DT2FF = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_TMPPORT2 = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_TMPPORT2_HS400EN = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_TMPPORT2_HS400OSEL = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_DTCNTL = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_SHIFT = common dso_local global i32 0, align 4
@TMIO_MMC_HAVE_4TAP_HS400 = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_TAPSET = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_CKSEL = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_CKSEL_DTSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @renesas_sdhi_hs400_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_hs400_complete(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.renesas_sdhi*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %4 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %5 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %4)
  store %struct.renesas_sdhi* %5, %struct.renesas_sdhi** %3, align 8
  %6 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %7 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %8 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %11 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %12 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %10, i32 %11)
  %13 = and i32 %9, %12
  %14 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %6, i32 %7, i32 %13)
  %15 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %16 = load i32, i32* @CTL_SDIF_MODE, align 4
  %17 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %18 = load i32, i32* @CTL_SDIF_MODE, align 4
  %19 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %17, i32 %18)
  %20 = or i32 1, %19
  %21 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %15, i32 %16, i32 %20)
  %22 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %23 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %24 = load i32, i32* @SH_MOBILE_SDHI_SCC_DT2FF, align 4
  %25 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %26 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %22, %struct.renesas_sdhi* %23, i32 %24, i32 %27)
  %29 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %30 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %31 = load i32, i32* @SH_MOBILE_SDHI_SCC_TMPPORT2, align 4
  %32 = load i32, i32* @SH_MOBILE_SDHI_SCC_TMPPORT2_HS400EN, align 4
  %33 = load i32, i32* @SH_MOBILE_SDHI_SCC_TMPPORT2_HS400OSEL, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %36 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %37 = load i32, i32* @SH_MOBILE_SDHI_SCC_TMPPORT2, align 4
  %38 = call i32 @sd_scc_read32(%struct.tmio_mmc_host* %35, %struct.renesas_sdhi* %36, i32 %37)
  %39 = or i32 %34, %38
  %40 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %29, %struct.renesas_sdhi* %30, i32 %31, i32 %39)
  %41 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %42 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %43 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL, align 4
  %44 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN, align 4
  %45 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_SHIFT, align 4
  %46 = shl i32 4, %45
  %47 = or i32 %44, %46
  %48 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %41, %struct.renesas_sdhi* %42, i32 %43, i32 %47)
  %49 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %50 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TMIO_MMC_HAVE_4TAP_HS400, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %1
  %58 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %59 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %60 = load i32, i32* @SH_MOBILE_SDHI_SCC_TAPSET, align 4
  %61 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %62 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sdiv i32 %63, 2
  %65 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %58, %struct.renesas_sdhi* %59, i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %57, %1
  %67 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %68 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %69 = load i32, i32* @SH_MOBILE_SDHI_SCC_CKSEL, align 4
  %70 = load i32, i32* @SH_MOBILE_SDHI_SCC_CKSEL_DTSEL, align 4
  %71 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %72 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %73 = load i32, i32* @SH_MOBILE_SDHI_SCC_CKSEL, align 4
  %74 = call i32 @sd_scc_read32(%struct.tmio_mmc_host* %71, %struct.renesas_sdhi* %72, i32 %73)
  %75 = or i32 %70, %74
  %76 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %67, %struct.renesas_sdhi* %68, i32 %69, i32 %75)
  %77 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %78 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %79 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %80 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %81 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %82 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %80, i32 %81)
  %83 = or i32 %79, %82
  %84 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %77, i32 %78, i32 %83)
  ret void
}

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

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
