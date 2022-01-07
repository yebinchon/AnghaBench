; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @xenon_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon_reset(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.xenon_priv*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %7)
  store %struct.sdhci_pltfm_host* %8, %struct.sdhci_pltfm_host** %5, align 8
  %9 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %10 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %9)
  store %struct.xenon_priv* %10, %struct.xenon_priv** %6, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @sdhci_reset(%struct.sdhci_host* %11, i32 %12)
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %15 = load %struct.xenon_priv*, %struct.xenon_priv** %6, align 8
  %16 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @xenon_reset_exit(%struct.sdhci_host* %14, i32 %17, i32 %18)
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @xenon_reset_exit(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
