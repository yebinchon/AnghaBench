; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_dma_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_dma_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_BROKEN_64_BIT_DMA = common dso_local global i32 0, align 4
@SDHCI_USE_64_BIT_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: Failed to set 64-bit DMA mask.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: Failed to set 32-bit DMA mask.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @sdhci_set_dma_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_set_dma_mask(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %7 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %6, i32 0, i32 2
  %8 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  store %struct.mmc_host* %8, %struct.mmc_host** %3, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.device* @mmc_dev(%struct.mmc_host* %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SDHCI_QUIRK2_BROKEN_64_BIT_DMA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @DMA_BIT_MASK(i32 64)
  %36 = call i32 @dma_set_mask_and_coherent(%struct.device* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %41 = call i32 @mmc_hostname(%struct.mmc_host* %40)
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %46 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %39, %33
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @DMA_BIT_MASK(i32 32)
  %56 = call i32 @dma_set_mask_and_coherent(%struct.device* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %61 = call i32 @mmc_hostname(%struct.mmc_host* %60)
  %62 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.device* @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
