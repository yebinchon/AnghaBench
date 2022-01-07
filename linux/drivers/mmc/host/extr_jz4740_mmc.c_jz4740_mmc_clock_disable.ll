; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_clock_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_clock_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i64 }

@JZ_MMC_STRPCL_CLOCK_STOP = common dso_local global i32 0, align 4
@JZ_REG_MMC_STRPCL = common dso_local global i64 0, align 8
@JZ_REG_MMC_STATUS = common dso_local global i64 0, align 8
@JZ_MMC_STATUS_CLK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4740_mmc_host*)* @jz4740_mmc_clock_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_mmc_clock_disable(%struct.jz4740_mmc_host* %0) #0 {
  %2 = alloca %struct.jz4740_mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %2, align 8
  store i32 1000, i32* %4, align 4
  %5 = load i32, i32* @JZ_MMC_STRPCL_CLOCK_STOP, align 4
  %6 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @JZ_REG_MMC_STRPCL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writew(i32 %5, i64 %10)
  br label %12

12:                                               ; preds = %28, %1
  %13 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %2, align 8
  %14 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @JZ_REG_MMC_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @JZ_MMC_STATUS_CLK_EN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, -1
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %12, label %30

30:                                               ; preds = %28
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
