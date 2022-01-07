; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_writew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32, i32)* @tegra_sdhci_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_writew(%struct.sdhci_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %9 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %8)
  store %struct.sdhci_pltfm_host* %9, %struct.sdhci_pltfm_host** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %27 [
    i32 128, label %11
    i32 129, label %15
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %14 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %35

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 16
  %18 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %19 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %17, %20
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 128
  %26 = call i32 @writel(i32 %21, i32 %25)
  br label %35

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %30 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @writew(i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %27, %15, %11
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
