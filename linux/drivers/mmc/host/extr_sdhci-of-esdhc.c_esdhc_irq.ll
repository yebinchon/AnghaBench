; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"fsl,p2020-esdhc\00", align 1
@SDHCI_COMMAND = common dso_local global i32 0, align 4
@MMC_WRITE_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@SDHCI_BLOCK_COUNT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END = common dso_local global i64 0, align 8
@SDHCI_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sdhci_host*, i64)* @esdhc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @esdhc_irq(%struct.sdhci_host* %0, i64 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i64 @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = load i32, i32* @SDHCI_COMMAND, align 4
  %11 = call i64 @sdhci_readw(%struct.sdhci_host* %9, i32 %10)
  %12 = call i64 @SDHCI_GET_CMD(i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MMC_WRITE_MULTIPLE_BLOCK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %8
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = load i32, i32* @SDHCI_BLOCK_COUNT, align 4
  %19 = call i64 @sdhci_readw(%struct.sdhci_host* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @SDHCI_INT_DATA_END, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i64, i64* @SDHCI_INT_DATA_END, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %4, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %4, align 8
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %32 = load i64, i64* @SDHCI_INT_DATA_END, align 8
  %33 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %34 = call i32 @sdhci_writel(%struct.sdhci_host* %31, i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %21, %16, %8
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local i64 @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i64 @SDHCI_GET_CMD(i64) #1

declare dso_local i64 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
