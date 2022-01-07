; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_hw_rx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_hw_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.hi3110_priv = type { i64, i32* }

@HI3110_READ_FIFO_WOTIME = common dso_local global i32 0, align 4
@HI3110_RX_BUF_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32*)* @hi3110_hw_rx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hi3110_hw_rx_frame(%struct.spi_device* %0, i32* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hi3110_priv*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.hi3110_priv* @spi_get_drvdata(%struct.spi_device* %6)
  store %struct.hi3110_priv* %7, %struct.hi3110_priv** %5, align 8
  %8 = load i32, i32* @HI3110_READ_FIFO_WOTIME, align 4
  %9 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %10 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = load i64, i64* @HI3110_RX_BUF_LEN, align 8
  %15 = call i32 @hi3110_spi_trans(%struct.spi_device* %13, i64 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %18 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = load i64, i64* @HI3110_RX_BUF_LEN, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i32 @memcpy(i32* %16, i64 %20, i64 %22)
  ret void
}

declare dso_local %struct.hi3110_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @hi3110_spi_trans(%struct.spi_device*, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
