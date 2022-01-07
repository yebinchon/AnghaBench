; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { %struct.sdhci_tegra_soc_data* }
%struct.sdhci_tegra_soc_data = type { i32 }

@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_INT_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_INT_CRC = common dso_local global i32 0, align 4
@NVQUIRK_ENABLE_BLOCK_GAP_DET = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_BLOCK_GAP_CONTROL = common dso_local global i64 0, align 8
@SDHCI_INT_CARD_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32, i32)* @tegra_sdhci_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_writel(%struct.sdhci_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.sdhci_tegra*, align 8
  %9 = alloca %struct.sdhci_tegra_soc_data*, align 8
  %10 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %7, align 8
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %14 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %13)
  store %struct.sdhci_tegra* %14, %struct.sdhci_tegra** %8, align 8
  %15 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %16 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %15, i32 0, i32 0
  %17 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %16, align 8
  store %struct.sdhci_tegra_soc_data* %17, %struct.sdhci_tegra_soc_data** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32, i32* @SDHCI_INT_TIMEOUT, align 4
  %26 = load i32, i32* @SDHCI_INT_CRC, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %3
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %34 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @writel(i32 %32, i64 %38)
  %40 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %9, align 8
  %41 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NVQUIRK_ENABLE_BLOCK_GAP_DET, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %46, %31
  %51 = phi i1 [ false, %31 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %50
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %57 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SDHCI_BLOCK_GAP_CONTROL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readb(i64 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @SDHCI_INT_CARD_INT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, 8
  store i32 %68, i32* %10, align 4
  br label %72

69:                                               ; preds = %55
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, -9
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %75 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SDHCI_BLOCK_GAP_CONTROL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writeb(i32 %73, i64 %78)
  br label %80

80:                                               ; preds = %72, %50
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
