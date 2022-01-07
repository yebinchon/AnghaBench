; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-bcm-kona.c_sdhci_bcm_kona_sd_card_emulate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-bcm-kona.c_sdhci_bcm_kona_sd_card_emulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_bcm_kona_dev = type { i32 }

@KONA_SDHOST_CORESTAT = common dso_local global i32 0, align 4
@KONA_SDHOST_WP = common dso_local global i32 0, align 4
@KONA_SDHOST_CD_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @sdhci_bcm_kona_sd_card_emulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_bcm_kona_sd_card_emulate(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_bcm_kona_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.sdhci_pltfm_host* %10, %struct.sdhci_pltfm_host** %5, align 8
  %11 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %12 = call %struct.sdhci_bcm_kona_dev* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %11)
  store %struct.sdhci_bcm_kona_dev* %12, %struct.sdhci_bcm_kona_dev** %6, align 8
  %13 = load %struct.sdhci_bcm_kona_dev*, %struct.sdhci_bcm_kona_dev** %6, align 8
  %14 = getelementptr inbounds %struct.sdhci_bcm_kona_dev, %struct.sdhci_bcm_kona_dev* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = call i32 @udelay(i32 20)
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = load i32, i32* @KONA_SDHOST_CORESTAT, align 4
  %19 = call i32 @sdhci_readl(%struct.sdhci_host* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %24 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mmc_gpio_get_ro(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @KONA_SDHOST_WP, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @KONA_SDHOST_WP, align 4
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = or i32 %33, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %22
  %43 = load i32, i32* @KONA_SDHOST_CD_SW, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @KONA_SDHOST_CORESTAT, align 4
  %49 = call i32 @sdhci_writel(%struct.sdhci_host* %46, i32 %47, i32 %48)
  br label %59

50:                                               ; preds = %2
  %51 = load i32, i32* @KONA_SDHOST_CD_SW, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @KONA_SDHOST_CORESTAT, align 4
  %58 = call i32 @sdhci_writel(%struct.sdhci_host* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %42
  %60 = load %struct.sdhci_bcm_kona_dev*, %struct.sdhci_bcm_kona_dev** %6, align 8
  %61 = getelementptr inbounds %struct.sdhci_bcm_kona_dev, %struct.sdhci_bcm_kona_dev* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  ret i32 0
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_bcm_kona_dev* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @mmc_gpio_get_ro(i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
