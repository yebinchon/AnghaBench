; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pxav2.c_pxav2_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pxav2.c_pxav2_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sdhci_pxa_platdata* }
%struct.sdhci_pxa_platdata = type { i32, i32, i32 }

@SDHCI_RESET_ALL = common dso_local global i64 0, align 8
@SD_CLOCK_BURST_SIZE_SETUP = common dso_local global i64 0, align 8
@SDCLK_DELAY_MASK = common dso_local global i32 0, align 4
@SDCLK_DELAY_SHIFT = common dso_local global i32 0, align 4
@SDCLK_SEL_MASK = common dso_local global i32 0, align 4
@SDCLK_SEL_SHIFT = common dso_local global i32 0, align 4
@PXA_FLAG_ENABLE_CLOCK_GATING = common dso_local global i32 0, align 4
@SD_FIFO_PARAM = common dso_local global i64 0, align 8
@CLK_GATE_SETTING_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i64)* @pxav2_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxav2_reset(%struct.sdhci_host* %0, i64 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sdhci_pxa_platdata*, align 8
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @mmc_dev(i32 %10)
  %12 = call %struct.platform_device* @to_platform_device(i32 %11)
  store %struct.platform_device* %12, %struct.platform_device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %15, align 8
  store %struct.sdhci_pxa_platdata* %16, %struct.sdhci_pxa_platdata** %6, align 8
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @sdhci_reset(%struct.sdhci_host* %17, i64 %18)
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @SDHCI_RESET_ALL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %122

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %24 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %6, align 8
  %25 = icmp ne %struct.sdhci_pxa_platdata* %24, null
  br i1 %25, label %26, label %72

26:                                               ; preds = %23
  %27 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %6, align 8
  %28 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %72

31:                                               ; preds = %26
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SD_CLOCK_BURST_SIZE_SETUP, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readw(i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @SDCLK_DELAY_MASK, align 4
  %39 = load i32, i32* @SDCLK_DELAY_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %6, align 8
  %45 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SDCLK_DELAY_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @SDCLK_DELAY_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @SDCLK_SEL_MASK, align 4
  %54 = load i32, i32* @SDCLK_SEL_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @SDCLK_SEL_MASK, align 4
  %60 = and i32 1, %59
  %61 = load i32, i32* @SDCLK_SEL_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %67 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SD_CLOCK_BURST_SIZE_SETUP, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writew(i32 %65, i64 %70)
  br label %72

72:                                               ; preds = %31, %26, %23
  %73 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %6, align 8
  %74 = icmp ne %struct.sdhci_pxa_platdata* %73, null
  br i1 %74, label %75, label %100

75:                                               ; preds = %72
  %76 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %6, align 8
  %77 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PXA_FLAG_ENABLE_CLOCK_GATING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %75
  %83 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %84 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SD_FIFO_PARAM, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @readw(i64 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* @CLK_GATE_SETTING_BITS, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %95 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SD_FIFO_PARAM, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writew(i32 %93, i64 %98)
  br label %121

100:                                              ; preds = %75, %72
  %101 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %102 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SD_FIFO_PARAM, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @readw(i64 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* @CLK_GATE_SETTING_BITS, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* @CLK_GATE_SETTING_BITS, align 4
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %116 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SD_FIFO_PARAM, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writew(i32 %114, i64 %119)
  br label %121

121:                                              ; preds = %100, %82
  br label %122

122:                                              ; preds = %121, %2
  ret void
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
