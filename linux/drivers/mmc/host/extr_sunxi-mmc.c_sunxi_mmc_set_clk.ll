; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_set_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i32 }
%struct.mmc_ios = type { i64 }

@REG_GCTRL = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@SDXC_DDR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunxi_mmc_host*, %struct.mmc_ios*)* @sunxi_mmc_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_mmc_set_clk(%struct.sunxi_mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.sunxi_mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca i32, align 4
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %7 = load i32, i32* @REG_GCTRL, align 4
  %8 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @SDXC_DDR_MODE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %29

24:                                               ; preds = %14
  %25 = load i32, i32* @SDXC_DDR_MODE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %31 = load i32, i32* @REG_GCTRL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %30, i32 %31, i32 %32)
  %34 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %35 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %36 = call i32 @sunxi_mmc_clk_set_rate(%struct.sunxi_mmc_host* %34, %struct.mmc_ios* %35)
  %37 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local i32 @mmc_readl(%struct.sunxi_mmc_host*, i32) #1

declare dso_local i32 @mmc_writel(%struct.sunxi_mmc_host*, i32, i32) #1

declare dso_local i32 @sunxi_mmc_clk_set_rate(%struct.sunxi_mmc_host*, %struct.mmc_ios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
