; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i64, i32, i32 }
%struct.mxcmci_host = type { i32, i64, i32, i32, i32*, i64, i32 }

@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"failed to config DMA channel. Falling back to PIO\0A\00", align 1
@CMD_DAT_CONT_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@MMC_POWER_ON = common dso_local global i64 0, align 8
@CMD_DAT_CONT_INIT = common dso_local global i32 0, align 4
@STR_STP_CLK_START_CLK = common dso_local global i32 0, align 4
@MMC_REG_STR_STP_CLK = common dso_local global i32 0, align 4
@STR_STP_CLK_STOP_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @mxcmci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxcmci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.mxcmci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.mxcmci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.mxcmci_host* %9, %struct.mxcmci_host** %5, align 8
  %10 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 16, i32* %6, align 4
  br label %17

16:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %19 = call i64 @mxcmci_use_dma(%struct.mxcmci_host* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %24 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %30 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = call i32 @mxcmci_setup_dma(%struct.mmc_host* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %37 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mmc_dev(i32 %38)
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %42 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @dma_release_channel(i32* %43)
  %45 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %46 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %48 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %47, i32 0, i32 4
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %35, %27
  br label %50

50:                                               ; preds = %49, %21, %17
  %51 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* @CMD_DAT_CONT_BUS_WIDTH_4, align 4
  %58 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %59 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %69

62:                                               ; preds = %50
  %63 = load i32, i32* @CMD_DAT_CONT_BUS_WIDTH_4, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %66 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %56
  %70 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %71 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %74 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %69
  %78 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %79 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %82 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %84 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mxcmci_set_power(%struct.mxcmci_host* %83, i32 %86)
  %88 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %89 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MMC_POWER_ON, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %77
  %94 = load i32, i32* @CMD_DAT_CONT_INIT, align 4
  %95 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %96 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %77
  br label %100

100:                                              ; preds = %99, %69
  %101 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %102 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %107 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %108 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @mxcmci_set_clk_rate(%struct.mxcmci_host* %106, i32 %109)
  %111 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %112 = load i32, i32* @STR_STP_CLK_START_CLK, align 4
  %113 = load i32, i32* @MMC_REG_STR_STP_CLK, align 4
  %114 = call i32 @mxcmci_writew(%struct.mxcmci_host* %111, i32 %112, i32 %113)
  br label %120

115:                                              ; preds = %100
  %116 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %117 = load i32, i32* @STR_STP_CLK_STOP_CLK, align 4
  %118 = load i32, i32* @MMC_REG_STR_STP_CLK, align 4
  %119 = call i32 @mxcmci_writew(%struct.mxcmci_host* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %105
  %121 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %122 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %125 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  ret void
}

declare dso_local %struct.mxcmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @mxcmci_use_dma(%struct.mxcmci_host*) #1

declare dso_local i32 @mxcmci_setup_dma(%struct.mmc_host*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @mxcmci_set_power(%struct.mxcmci_host*, i32) #1

declare dso_local i32 @mxcmci_set_clk_rate(%struct.mxcmci_host*, i32) #1

declare dso_local i32 @mxcmci_writew(%struct.mxcmci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
