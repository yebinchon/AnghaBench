; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_set_normal_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_set_normal_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mcp251x_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CANINTE = common dso_local global i32 0, align 4
@CANINTE_ERRIE = common dso_local global i32 0, align 4
@CANINTE_TX2IE = common dso_local global i32 0, align 4
@CANINTE_TX1IE = common dso_local global i32 0, align 4
@CANINTE_TX0IE = common dso_local global i32 0, align 4
@CANINTE_RX1IE = common dso_local global i32 0, align 4
@CANINTE_RX0IE = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@CANCTRL = common dso_local global i32 0, align 4
@CANCTRL_REQOP_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@CANCTRL_REQOP_LISTEN_ONLY = common dso_local global i32 0, align 4
@CANCTRL_REQOP_NORMAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@CANSTAT = common dso_local global i32 0, align 4
@CANCTRL_REQOP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MCP251x didn't enter in normal mode\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mcp251x_set_normal_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp251x_set_normal_mode(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.mcp251x_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device* %6)
  store %struct.mcp251x_priv* %7, %struct.mcp251x_priv** %4, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = load i32, i32* @CANINTE, align 4
  %10 = load i32, i32* @CANINTE_ERRIE, align 4
  %11 = load i32, i32* @CANINTE_TX2IE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CANINTE_TX1IE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CANINTE_TX0IE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CANINTE_RX1IE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CANINTE_RX0IE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @mcp251x_write_reg(%struct.spi_device* %8, i32 %9, i32 %20)
  %22 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = load i32, i32* @CANCTRL, align 4
  %32 = load i32, i32* @CANCTRL_REQOP_LOOPBACK, align 4
  %33 = call i32 @mcp251x_write_reg(%struct.spi_device* %30, i32 %31, i32 %32)
  br label %77

34:                                               ; preds = %1
  %35 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = load i32, i32* @CANCTRL, align 4
  %45 = load i32, i32* @CANCTRL_REQOP_LISTEN_ONLY, align 4
  %46 = call i32 @mcp251x_write_reg(%struct.spi_device* %43, i32 %44, i32 %45)
  br label %76

47:                                               ; preds = %34
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = load i32, i32* @CANCTRL, align 4
  %50 = load i32, i32* @CANCTRL_REQOP_NORMAL, align 4
  %51 = call i32 @mcp251x_write_reg(%struct.spi_device* %48, i32 %49, i32 %50)
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* @HZ, align 8
  %54 = add i64 %52, %53
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %74, %47
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = load i32, i32* @CANSTAT, align 4
  %58 = call i32 @mcp251x_read_reg(%struct.spi_device* %56, i32 %57)
  %59 = load i32, i32* @CANCTRL_REQOP_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = call i32 (...) @schedule()
  %64 = load i64, i64* @jiffies, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i64 @time_after(i64 %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %82

74:                                               ; preds = %62
  br label %55

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %75, %42
  br label %77

77:                                               ; preds = %76, %29
  %78 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %79 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %80 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %68
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @mcp251x_write_reg(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @mcp251x_read_reg(%struct.spi_device*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
