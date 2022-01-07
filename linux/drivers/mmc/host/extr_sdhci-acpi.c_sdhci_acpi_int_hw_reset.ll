; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_sdhci_acpi_int_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_sdhci_acpi_int_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_POWER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_acpi_int_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_acpi_int_hw_reset(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %6 = call i32 @sdhci_readb(%struct.sdhci_host* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = or i32 %7, 16
  store i32 %8, i32* %3, align 4
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %12 = call i32 @sdhci_writeb(%struct.sdhci_host* %9, i32 %10, i32 %11)
  %13 = call i32 @udelay(i32 9)
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, -17
  store i32 %15, i32* %3, align 4
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %19 = call i32 @sdhci_writeb(%struct.sdhci_host* %16, i32 %17, i32 %18)
  %20 = call i32 @usleep_range(i32 300, i32 1000)
  ret void
}

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
