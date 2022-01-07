; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c___tmio_mmc_sdcard_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c___tmio_mmc_sdcard_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32 }

@TMIO_STAT_CMDRESPEND = common dso_local global i32 0, align 4
@TMIO_STAT_CMDTIMEOUT = common dso_local global i32 0, align 4
@TMIO_STAT_RXRDY = common dso_local global i32 0, align 4
@TMIO_STAT_TXRQ = common dso_local global i32 0, align 4
@TMIO_STAT_DATAEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*, i32, i32)* @__tmio_mmc_sdcard_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tmio_mmc_sdcard_irq(%struct.tmio_mmc_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tmio_mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @TMIO_STAT_CMDRESPEND, align 4
  %10 = load i32, i32* @TMIO_STAT_CMDTIMEOUT, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %16 = load i32, i32* @TMIO_STAT_CMDRESPEND, align 4
  %17 = load i32, i32* @TMIO_STAT_CMDTIMEOUT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @tmio_mmc_ack_mmc_irqs(%struct.tmio_mmc_host* %15, i32 %18)
  %20 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @tmio_mmc_cmd_irq(%struct.tmio_mmc_host* %20, i32 %21)
  store i32 1, i32* %4, align 4
  br label %51

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TMIO_STAT_RXRDY, align 4
  %26 = load i32, i32* @TMIO_STAT_TXRQ, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %32 = load i32, i32* @TMIO_STAT_RXRDY, align 4
  %33 = load i32, i32* @TMIO_STAT_TXRQ, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @tmio_mmc_ack_mmc_irqs(%struct.tmio_mmc_host* %31, i32 %34)
  %36 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %37 = call i32 @tmio_mmc_pio_irq(%struct.tmio_mmc_host* %36)
  store i32 1, i32* %4, align 4
  br label %51

38:                                               ; preds = %23
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @TMIO_STAT_DATAEND, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %45 = load i32, i32* @TMIO_STAT_DATAEND, align 4
  %46 = call i32 @tmio_mmc_ack_mmc_irqs(%struct.tmio_mmc_host* %44, i32 %45)
  %47 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @tmio_mmc_data_irq(%struct.tmio_mmc_host* %47, i32 %48)
  store i32 1, i32* %4, align 4
  br label %51

50:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %43, %30, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @tmio_mmc_ack_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_cmd_irq(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_pio_irq(%struct.tmio_mmc_host*) #1

declare dso_local i32 @tmio_mmc_data_irq(%struct.tmio_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
