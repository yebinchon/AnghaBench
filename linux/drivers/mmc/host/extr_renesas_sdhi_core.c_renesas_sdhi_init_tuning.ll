; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_init_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_init_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32 }
%struct.renesas_sdhi = type { i32 }

@CTL_STATUS = common dso_local global i32 0, align 4
@CTL_SD_CARD_CLK_CTL = common dso_local global i32 0, align 4
@CLK_CTL_SCLKEN = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_DTCNTL = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_SHIFT = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_CKSEL = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_CKSEL_DTSEL = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_RVSCNTL = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_DT2FF = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*)* @renesas_sdhi_init_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_sdhi_init_tuning(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.renesas_sdhi*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %4 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %5 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %4)
  store %struct.renesas_sdhi* %5, %struct.renesas_sdhi** %3, align 8
  %6 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %7 = load i32, i32* @CTL_STATUS, align 4
  %8 = call i32 @sd_ctrl_write32_as_16_and_16(%struct.tmio_mmc_host* %6, i32 %7, i32 0)
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %10 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %11 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %14 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %15 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %13, i32 %14)
  %16 = and i32 %12, %15
  %17 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %9, i32 %10, i32 %16)
  %18 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %19 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %20 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL, align 4
  %21 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN, align 4
  %22 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_SHIFT, align 4
  %23 = shl i32 8, %22
  %24 = or i32 %21, %23
  %25 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %18, %struct.renesas_sdhi* %19, i32 %20, i32 %24)
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %27 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %28 = load i32, i32* @SH_MOBILE_SDHI_SCC_CKSEL, align 4
  %29 = load i32, i32* @SH_MOBILE_SDHI_SCC_CKSEL_DTSEL, align 4
  %30 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %31 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %32 = load i32, i32* @SH_MOBILE_SDHI_SCC_CKSEL, align 4
  %33 = call i32 @sd_scc_read32(%struct.tmio_mmc_host* %30, %struct.renesas_sdhi* %31, i32 %32)
  %34 = or i32 %29, %33
  %35 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %26, %struct.renesas_sdhi* %27, i32 %28, i32 %34)
  %36 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %37 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %38 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSCNTL, align 4
  %39 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %42 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %43 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSCNTL, align 4
  %44 = call i32 @sd_scc_read32(%struct.tmio_mmc_host* %41, %struct.renesas_sdhi* %42, i32 %43)
  %45 = and i32 %40, %44
  %46 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %36, %struct.renesas_sdhi* %37, i32 %38, i32 %45)
  %47 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %48 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %49 = load i32, i32* @SH_MOBILE_SDHI_SCC_DT2FF, align 4
  %50 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %51 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %47, %struct.renesas_sdhi* %48, i32 %49, i32 %52)
  %54 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %55 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %56 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %57 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %58 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %59 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %57, i32 %58)
  %60 = or i32 %56, %59
  %61 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %54, i32 %55, i32 %60)
  %62 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %63 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %64 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL, align 4
  %65 = call i32 @sd_scc_read32(%struct.tmio_mmc_host* %62, %struct.renesas_sdhi* %63, i32 %64)
  %66 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = load i32, i32* @SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_MASK, align 4
  %69 = and i32 %67, %68
  ret i32 %69
}

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @sd_ctrl_write32_as_16_and_16(%struct.tmio_mmc_host*, i32, i32) #1

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
