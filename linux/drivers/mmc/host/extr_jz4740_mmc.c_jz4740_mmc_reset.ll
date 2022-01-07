; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i64 }

@JZ_MMC_STRPCL_RESET = common dso_local global i32 0, align 4
@JZ_REG_MMC_STRPCL = common dso_local global i64 0, align 8
@JZ_REG_MMC_STATUS = common dso_local global i64 0, align 8
@JZ_MMC_STATUS_IS_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4740_mmc_host*)* @jz4740_mmc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_mmc_reset(%struct.jz4740_mmc_host* %0) #0 {
  %2 = alloca %struct.jz4740_mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %2, align 8
  store i32 1000, i32* %4, align 4
  %5 = load i32, i32* @JZ_MMC_STRPCL_RESET, align 4
  %6 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @JZ_REG_MMC_STRPCL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writew(i32 %5, i64 %10)
  %12 = call i32 @udelay(i32 10)
  br label %13

13:                                               ; preds = %29, %1
  %14 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %2, align 8
  %15 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @JZ_REG_MMC_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @JZ_MMC_STATUS_IS_RESETTING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  br i1 %30, label %13, label %31

31:                                               ; preds = %29
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
