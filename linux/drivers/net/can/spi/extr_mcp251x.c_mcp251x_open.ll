; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mcp251x_priv = type { i32, i32, i32, i32, i32, i64, i32*, i64, %struct.spi_device* }
%struct.spi_device = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"unable to set initial baudrate!\0A\00", align 1
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@mcp251x_can_ist = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to acquire irq %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mcp251x_wq\00", align 1
@WQ_FREEZABLE = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mcp251x_tx_work_handler = common dso_local global i32 0, align 4
@mcp251x_restart_work_handler = common dso_local global i32 0, align 4
@CAN_LED_EVENT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mcp251x_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp251x_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mcp251x_priv*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.mcp251x_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mcp251x_priv* %9, %struct.mcp251x_priv** %4, align 8
  %10 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %10, i32 0, i32 8
  %12 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  store %struct.spi_device* %12, %struct.spi_device** %5, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @open_candev(%struct.net_device* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 1
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %138

22:                                               ; preds = %1
  %23 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %24 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mcp251x_power_enable(i32 %28, i32 1)
  %30 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %31 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %32, i32 0, i32 6
  store i32* null, i32** %33, align 8
  %34 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %35 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 1
  %38 = call i32 @dev_fwnode(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %22
  %41 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %22
  %43 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @mcp251x_can_ist, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @IRQF_ONESHOT, align 8
  %49 = or i64 %47, %48
  %50 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 1
  %52 = call i32 @dev_name(i32* %51)
  %53 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %54 = call i32 @request_threaded_irq(i32 %45, i32* null, i32 %46, i64 %49, i32 %52, %struct.mcp251x_priv* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 1
  %60 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %127

64:                                               ; preds = %42
  %65 = load i32, i32* @WQ_FREEZABLE, align 4
  %66 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 0)
  %69 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %70 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %72 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %119

78:                                               ; preds = %64
  %79 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %80 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %79, i32 0, i32 4
  %81 = load i32, i32* @mcp251x_tx_work_handler, align 4
  %82 = call i32 @INIT_WORK(i32* %80, i32 %81)
  %83 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %84 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %83, i32 0, i32 3
  %85 = load i32, i32* @mcp251x_restart_work_handler, align 4
  %86 = call i32 @INIT_WORK(i32* %84, i32 %85)
  %87 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %88 = call i32 @mcp251x_hw_reset(%struct.spi_device* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %114

92:                                               ; preds = %78
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %95 = call i32 @mcp251x_setup(%struct.net_device* %93, %struct.spi_device* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %114

99:                                               ; preds = %92
  %100 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %101 = call i32 @mcp251x_set_normal_mode(%struct.spi_device* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %114

105:                                              ; preds = %99
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = load i32, i32* @CAN_LED_EVENT_OPEN, align 4
  %108 = call i32 @can_led_event(%struct.net_device* %106, i32 %107)
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call i32 @netif_wake_queue(%struct.net_device* %109)
  %111 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %112 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  store i32 0, i32* %2, align 4
  br label %138

114:                                              ; preds = %104, %98, %91
  %115 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %116 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @destroy_workqueue(i32 %117)
  br label %119

119:                                              ; preds = %114, %75
  %120 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %121 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %124 = call i32 @free_irq(i32 %122, %struct.mcp251x_priv* %123)
  %125 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %126 = call i32 @mcp251x_hw_sleep(%struct.spi_device* %125)
  br label %127

127:                                              ; preds = %119, %57
  %128 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %129 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @mcp251x_power_enable(i32 %130, i32 0)
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = call i32 @close_candev(%struct.net_device* %132)
  %134 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %4, align 8
  %135 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %127, %105, %17
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.mcp251x_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mcp251x_power_enable(i32, i32) #1

declare dso_local i32 @dev_fwnode(i32*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i64, i32, %struct.mcp251x_priv*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mcp251x_hw_reset(%struct.spi_device*) #1

declare dso_local i32 @mcp251x_setup(%struct.net_device*, %struct.spi_device*) #1

declare dso_local i32 @mcp251x_set_normal_mode(%struct.spi_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @free_irq(i32, %struct.mcp251x_priv*) #1

declare dso_local i32 @mcp251x_hw_sleep(%struct.spi_device*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
