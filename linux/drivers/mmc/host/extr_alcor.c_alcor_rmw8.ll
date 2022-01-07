; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_rmw8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_rmw8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { %struct.alcor_pci_priv* }
%struct.alcor_pci_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*, i32, i32, i32)* @alcor_rmw8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_rmw8(%struct.alcor_sdmmc_host* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.alcor_sdmmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.alcor_pci_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %12 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %11, i32 0, i32 0
  %13 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %12, align 8
  store %struct.alcor_pci_priv* %13, %struct.alcor_pci_priv** %9, align 8
  %14 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @alcor_read8(%struct.alcor_pci_priv* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @alcor_write8(%struct.alcor_pci_priv* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @alcor_read8(%struct.alcor_pci_priv*, i32) #1

declare dso_local i32 @alcor_write8(%struct.alcor_pci_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
