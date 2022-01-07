; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_set_normal_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_set_normal_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.hi3110_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@HI3110_WRITE_INTE = common dso_local global i32 0, align 4
@HI3110_INT_BUSERR = common dso_local global i32 0, align 4
@HI3110_INT_RXFIFO = common dso_local global i32 0, align 4
@HI3110_INT_TXCPLT = common dso_local global i32 0, align 4
@HI3110_WRITE_CTRL1 = common dso_local global i32 0, align 4
@HI3110_CTRL1_TXEN = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@HI3110_CTRL0_LOOPBACK_MODE = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@HI3110_CTRL0_MONITOR_MODE = common dso_local global i32 0, align 4
@HI3110_CTRL0_NORMAL_MODE = common dso_local global i32 0, align 4
@HI3110_WRITE_CTRL0 = common dso_local global i32 0, align 4
@HI3110_OST_DELAY_MS = common dso_local global i32 0, align 4
@HI3110_READ_CTRL0 = common dso_local global i32 0, align 4
@HI3110_CTRL0_MODE_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @hi3110_set_normal_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3110_set_normal_mode(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.hi3110_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.hi3110_priv* @spi_get_drvdata(%struct.spi_device* %6)
  store %struct.hi3110_priv* %7, %struct.hi3110_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = load i32, i32* @HI3110_WRITE_INTE, align 4
  %10 = load i32, i32* @HI3110_INT_BUSERR, align 4
  %11 = load i32, i32* @HI3110_INT_RXFIFO, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @HI3110_INT_TXCPLT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @hi3110_write(%struct.spi_device* %8, i32 %9, i32 %14)
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load i32, i32* @HI3110_WRITE_CTRL1, align 4
  %18 = load i32, i32* @HI3110_CTRL1_TXEN, align 4
  %19 = call i32 @hi3110_write(%struct.spi_device* %16, i32 %17, i32 %18)
  %20 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %21 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @HI3110_CTRL0_LOOPBACK_MODE, align 4
  store i32 %28, i32* %5, align 4
  br label %42

29:                                               ; preds = %1
  %30 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %31 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @HI3110_CTRL0_MONITOR_MODE, align 4
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @HI3110_CTRL0_NORMAL_MODE, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = load i32, i32* @HI3110_WRITE_CTRL0, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @hi3110_write(%struct.spi_device* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @HI3110_OST_DELAY_MS, align 4
  %48 = call i32 @mdelay(i32 %47)
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = load i32, i32* @HI3110_READ_CTRL0, align 4
  %51 = call i32 @hi3110_read(%struct.spi_device* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @HI3110_CTRL0_MODE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %42
  %61 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %62 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %63 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.hi3110_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @hi3110_write(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @hi3110_read(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
