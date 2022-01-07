; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_calculate_clk_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_calculate_clk_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i32 }
%struct.mmc_davinci_host = type { i32, i64 }

@MMC_BUSMODE_OPENDRAIN = common dso_local global i64 0, align 8
@MMCSD_INIT_CLOCK = common dso_local global i32 0, align 4
@DAVINCI_MMCCLK = common dso_local global i64 0, align 8
@MMCCLK_CLKRT_MASK = common dso_local global i32 0, align 4
@MMCCLK_CLKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @calculate_clk_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_clk_divider(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_davinci_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = call %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host* %11)
  store %struct.mmc_davinci_host* %12, %struct.mmc_davinci_host** %8, align 8
  %13 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MMC_BUSMODE_OPENDRAIN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MMCSD_INIT_CLOCK, align 4
  %21 = mul nsw i32 2, %20
  %22 = udiv i32 %19, %21
  %23 = sub i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 255, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %18
  %28 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %8, align 8
  %29 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DAVINCI_MMCCLK, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  %34 = load i32, i32* @MMCCLK_CLKRT_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %8, align 8
  %42 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DAVINCI_MMCCLK, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load i32, i32* @MMCSD_INIT_CLOCK, align 4
  %48 = sdiv i32 %47, 1000
  %49 = sdiv i32 1000000, %48
  %50 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %8, align 8
  %51 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %108

52:                                               ; preds = %2
  %53 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %8, align 8
  %54 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @calculate_freq_for_card(%struct.mmc_davinci_host* %53, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ugt i32 %58, 255
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 255, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %52
  %62 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %8, align 8
  %63 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DAVINCI_MMCCLK, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl(i64 %66)
  %68 = load i32, i32* @MMCCLK_CLKEN, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %8, align 8
  %73 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DAVINCI_MMCCLK, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = call i32 @udelay(i32 10)
  %79 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %8, align 8
  %80 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DAVINCI_MMCCLK, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readl(i64 %83)
  %85 = load i32, i32* @MMCCLK_CLKRT_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %8, align 8
  %93 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DAVINCI_MMCCLK, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %91, i64 %96)
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @MMCCLK_CLKEN, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %8, align 8
  %102 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DAVINCI_MMCCLK, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  %107 = call i32 @udelay(i32 10)
  br label %108

108:                                              ; preds = %61, %27
  ret void
}

declare dso_local %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @calculate_freq_for_card(%struct.mmc_davinci_host*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
