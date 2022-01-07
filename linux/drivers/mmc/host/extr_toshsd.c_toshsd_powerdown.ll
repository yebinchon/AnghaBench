; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshsd_host = type { i32, i64 }

@SD_INTMASKCARD = common dso_local global i64 0, align 8
@SDIO_BASE = common dso_local global i64 0, align 8
@SDIO_CLOCKNWAITCTRL = common dso_local global i64 0, align 8
@SD_CARDCLOCKCTRL = common dso_local global i64 0, align 8
@SD_PCICFG_POWER1 = common dso_local global i32 0, align 4
@SD_PCICFG_PWR1_OFF = common dso_local global i32 0, align 4
@SD_PCICFG_CLKSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.toshsd_host*)* @toshsd_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshsd_powerdown(%struct.toshsd_host* %0) #0 {
  %2 = alloca %struct.toshsd_host*, align 8
  store %struct.toshsd_host* %0, %struct.toshsd_host** %2, align 8
  %3 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %4 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SD_INTMASKCARD, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @iowrite32(i32 -1, i64 %7)
  %9 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %10 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SDIO_BASE, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* @SDIO_CLOCKNWAITCTRL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @iowrite16(i32 0, i64 %15)
  %17 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %18 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SD_CARDCLOCKCTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @iowrite16(i32 0, i64 %21)
  %23 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %24 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SD_PCICFG_POWER1, align 4
  %27 = load i32, i32* @SD_PCICFG_PWR1_OFF, align 4
  %28 = call i32 @pci_write_config_byte(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %30 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SD_PCICFG_CLKSTOP, align 4
  %33 = call i32 @pci_write_config_byte(i32 %31, i32 %32, i32 0)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
