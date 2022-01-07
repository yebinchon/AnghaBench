; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshsd_host = type { i64, i32 }

@SD_PCICFG_CLKSTOP = common dso_local global i32 0, align 4
@SD_PCICFG_CLKSTOP_ENABLE_ALL = common dso_local global i32 0, align 4
@SD_PCICFG_CARDDETECT = common dso_local global i32 0, align 4
@SD_SOFTWARERESET = common dso_local global i64 0, align 8
@SD_CARDCLOCKCTRL = common dso_local global i64 0, align 8
@SD_CARDSTATUS = common dso_local global i64 0, align 8
@SD_ERRORSTATUS0 = common dso_local global i64 0, align 8
@SD_STOPINTERNAL = common dso_local global i64 0, align 8
@SDIO_BASE = common dso_local global i64 0, align 8
@SDIO_CLOCKNWAITCTRL = common dso_local global i64 0, align 8
@SD_PCICFG_SDLED_ENABLE1 = common dso_local global i32 0, align 4
@SD_PCICFG_LED_ENABLE1_START = common dso_local global i32 0, align 4
@SD_PCICFG_SDLED_ENABLE2 = common dso_local global i32 0, align 4
@SD_PCICFG_LED_ENABLE2_START = common dso_local global i32 0, align 4
@SD_CARD_RESP_END = common dso_local global i32 0, align 4
@SD_CARD_RW_END = common dso_local global i32 0, align 4
@SD_CARD_CARD_REMOVED_0 = common dso_local global i32 0, align 4
@SD_CARD_CARD_INSERTED_0 = common dso_local global i32 0, align 4
@SD_BUF_READ_ENABLE = common dso_local global i32 0, align 4
@SD_BUF_WRITE_ENABLE = common dso_local global i32 0, align 4
@SD_BUF_CMD_TIMEOUT = common dso_local global i32 0, align 4
@SD_INTMASKCARD = common dso_local global i64 0, align 8
@SD_TRANSACTIONCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.toshsd_host*)* @toshsd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshsd_init(%struct.toshsd_host* %0) #0 {
  %2 = alloca %struct.toshsd_host*, align 8
  store %struct.toshsd_host* %0, %struct.toshsd_host** %2, align 8
  %3 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %4 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @SD_PCICFG_CLKSTOP, align 4
  %7 = load i32, i32* @SD_PCICFG_CLKSTOP_ENABLE_ALL, align 4
  %8 = call i32 @pci_write_config_byte(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %10 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SD_PCICFG_CARDDETECT, align 4
  %13 = call i32 @pci_write_config_byte(i32 %11, i32 %12, i32 2)
  %14 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %15 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SD_SOFTWARERESET, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @iowrite16(i32 0, i64 %18)
  %20 = call i32 @mdelay(i32 2)
  %21 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %22 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SD_SOFTWARERESET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite16(i32 1, i64 %25)
  %27 = call i32 @mdelay(i32 2)
  %28 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %29 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SD_CARDCLOCKCTRL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite16(i32 0, i64 %32)
  %34 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %35 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SD_CARDSTATUS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @iowrite32(i32 0, i64 %38)
  %40 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %41 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SD_ERRORSTATUS0, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @iowrite32(i32 0, i64 %44)
  %46 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %47 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SD_STOPINTERNAL, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @iowrite16(i32 0, i64 %50)
  %52 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %53 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SDIO_BASE, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* @SDIO_CLOCKNWAITCTRL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @iowrite16(i32 256, i64 %58)
  %60 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %61 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SD_PCICFG_SDLED_ENABLE1, align 4
  %64 = load i32, i32* @SD_PCICFG_LED_ENABLE1_START, align 4
  %65 = call i32 @pci_write_config_byte(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %67 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SD_PCICFG_SDLED_ENABLE2, align 4
  %70 = load i32, i32* @SD_PCICFG_LED_ENABLE2_START, align 4
  %71 = call i32 @pci_write_config_byte(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @SD_CARD_RESP_END, align 4
  %73 = load i32, i32* @SD_CARD_RW_END, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @SD_CARD_CARD_REMOVED_0, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SD_CARD_CARD_INSERTED_0, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SD_BUF_READ_ENABLE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SD_BUF_WRITE_ENABLE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SD_BUF_CMD_TIMEOUT, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %87 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SD_INTMASKCARD, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @iowrite32(i32 %85, i64 %90)
  %92 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %93 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SD_TRANSACTIONCTRL, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @iowrite16(i32 4096, i64 %96)
  ret void
}

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
