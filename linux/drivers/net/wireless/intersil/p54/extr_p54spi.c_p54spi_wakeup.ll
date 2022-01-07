; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54s_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SPI_ADRS_ARM_INTERRUPTS = common dso_local global i32 0, align 4
@SPI_TARGET_INT_WAKEUP = common dso_local global i32 0, align 4
@SPI_ADRS_HOST_INTERRUPTS = common dso_local global i32 0, align 4
@SPI_HOST_INT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"INT_READY timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54s_priv*)* @p54spi_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54spi_wakeup(%struct.p54s_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54s_priv*, align 8
  store %struct.p54s_priv* %0, %struct.p54s_priv** %3, align 8
  %4 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %5 = load i32, i32* @SPI_ADRS_ARM_INTERRUPTS, align 4
  %6 = load i32, i32* @SPI_TARGET_INT_WAKEUP, align 4
  %7 = call i32 @cpu_to_le32(i32 %6)
  %8 = call i32 @p54spi_write32(%struct.p54s_priv* %4, i32 %5, i32 %7)
  %9 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %10 = load i32, i32* @SPI_ADRS_HOST_INTERRUPTS, align 4
  %11 = load i32, i32* @SPI_HOST_INT_READY, align 4
  %12 = call i32 @p54spi_wait_bit(%struct.p54s_priv* %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %16 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %24 = load i32, i32* @SPI_HOST_INT_READY, align 4
  %25 = call i32 @p54spi_int_ack(%struct.p54s_priv* %23, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @p54spi_write32(%struct.p54s_priv*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @p54spi_wait_bit(%struct.p54s_priv*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @p54spi_int_ack(%struct.p54s_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
