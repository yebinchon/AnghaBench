; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_wait_spi_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_wait_spi_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_pccard = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@PCC_SPI_MAX_BUSY_WAIT_MS = common dso_local global i32 0, align 4
@PCC_CSR = common dso_local global i32 0, align 4
@PCC_CSR_SPI_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcan_pccard*)* @pcan_wait_spi_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_wait_spi_busy(%struct.pcan_pccard* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcan_pccard*, align 8
  %4 = alloca i64, align 8
  store %struct.pcan_pccard* %0, %struct.pcan_pccard** %3, align 8
  %5 = load i32, i32* @jiffies, align 4
  %6 = load i32, i32* @PCC_SPI_MAX_BUSY_WAIT_MS, align 4
  %7 = call i32 @msecs_to_jiffies(i32 %6)
  %8 = add nsw i32 %5, %7
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %26, %1
  %12 = load %struct.pcan_pccard*, %struct.pcan_pccard** %3, align 8
  %13 = load i32, i32* @PCC_CSR, align 4
  %14 = call i32 @pcan_read_reg(%struct.pcan_pccard* %12, i32 %13)
  %15 = load i32, i32* @PCC_CSR_SPI_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load i32, i32* @jiffies, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @time_after(i32 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %18
  %27 = call i32 (...) @schedule()
  br label %11

28:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pcan_read_reg(%struct.pcan_pccard*, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
