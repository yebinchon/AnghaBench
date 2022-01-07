; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i32, i64 }

@DAVINCI_SDIOIST = common dso_local global i64 0, align 8
@SDIOIST_IOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SDIO interrupt status %x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mmc_davinci_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_davinci_sdio_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mmc_davinci_host*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mmc_davinci_host*
  store %struct.mmc_davinci_host* %8, %struct.mmc_davinci_host** %5, align 8
  %9 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %10 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DAVINCI_SDIOIST, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SDIOIST_IOINT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %21 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mmc_dev(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SDIOIST_IOINT, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %30 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DAVINCI_SDIOIST, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mmc_signal_sdio_irq(i32 %37)
  br label %39

39:                                               ; preds = %19, %2
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mmc_signal_sdio_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
