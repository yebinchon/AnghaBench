; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_of_adma_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_of_adma_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_esdhc = type { i64 }

@SDHCI_INT_DATA_END = common dso_local global i32 0, align 4
@SDHCI_INT_BLK_GAP = common dso_local global i32 0, align 4
@VENDOR_V_23 = common dso_local global i64 0, align 8
@SDHCI_DEFAULT_BOUNDARY_SIZE = common dso_local global i32 0, align 4
@SDHCI_DMA_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @esdhc_of_adma_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_of_adma_workaround(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_esdhc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %5, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %13 = call %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.sdhci_esdhc* %13, %struct.sdhci_esdhc** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SDHCI_INT_BLK_GAP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %6, align 8
  %25 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VENDOR_V_23, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %23, %18, %2
  %30 = phi i1 [ false, %18 ], [ false, %2 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %71

35:                                               ; preds = %29
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %37 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %41 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sg_dma_address(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %48 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %46, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SDHCI_DEFAULT_BOUNDARY_SIZE, align 4
  %55 = sub nsw i32 %54, 1
  %56 = xor i32 %55, -1
  %57 = and i32 %53, %56
  %58 = load i32, i32* @SDHCI_DEFAULT_BOUNDARY_SIZE, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %64 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @SDHCI_DMA_ADDRESS, align 4
  %70 = call i32 @sdhci_writel(%struct.sdhci_host* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %35, %34
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
