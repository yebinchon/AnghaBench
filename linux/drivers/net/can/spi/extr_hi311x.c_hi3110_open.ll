; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hi3110_priv = type { i32, i32, i32, i32, i32, i64, i32*, i64, %struct.spi_device* }
%struct.spi_device = type { i32, i32 }

@IRQF_ONESHOT = common dso_local global i64 0, align 8
@IRQF_TRIGGER_HIGH = common dso_local global i64 0, align 8
@hi3110_can_ist = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to acquire irq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"hi3110_wq\00", align 1
@WQ_FREEZABLE = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hi3110_tx_work_handler = common dso_local global i32 0, align 4
@hi3110_restart_work_handler = common dso_local global i32 0, align 4
@CAN_LED_EVENT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hi3110_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3110_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hi3110_priv*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.hi3110_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.hi3110_priv* %9, %struct.hi3110_priv** %4, align 8
  %10 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %11 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %10, i32 0, i32 8
  %12 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  store %struct.spi_device* %12, %struct.spi_device** %5, align 8
  %13 = load i64, i64* @IRQF_ONESHOT, align 8
  %14 = load i64, i64* @IRQF_TRIGGER_HIGH, align 8
  %15 = or i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @open_candev(%struct.net_device* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %126

22:                                               ; preds = %1
  %23 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %24 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %27 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hi3110_power_enable(i32 %28, i32 1)
  %30 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %31 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %33 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %32, i32 0, i32 6
  store i32* null, i32** %33, align 8
  %34 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %35 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @hi3110_can_ist, align 4
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @DEVICE_NAME, align 4
  %42 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %43 = call i32 @request_threaded_irq(i32 %38, i32* null, i32 %39, i64 %40, i32 %41, %struct.hi3110_priv* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %22
  %47 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 1
  %49 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %115

53:                                               ; preds = %22
  %54 = load i32, i32* @WQ_FREEZABLE, align 4
  %55 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 0)
  %58 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %59 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %61 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %53
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %107

67:                                               ; preds = %53
  %68 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %69 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %68, i32 0, i32 4
  %70 = load i32, i32* @hi3110_tx_work_handler, align 4
  %71 = call i32 @INIT_WORK(i32* %69, i32 %70)
  %72 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %73 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %72, i32 0, i32 3
  %74 = load i32, i32* @hi3110_restart_work_handler, align 4
  %75 = call i32 @INIT_WORK(i32* %73, i32 %74)
  %76 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %77 = call i32 @hi3110_hw_reset(%struct.spi_device* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %102

81:                                               ; preds = %67
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i32 @hi3110_setup(%struct.net_device* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %102

87:                                               ; preds = %81
  %88 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %89 = call i32 @hi3110_set_normal_mode(%struct.spi_device* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %102

93:                                               ; preds = %87
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = load i32, i32* @CAN_LED_EVENT_OPEN, align 4
  %96 = call i32 @can_led_event(%struct.net_device* %94, i32 %95)
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = call i32 @netif_wake_queue(%struct.net_device* %97)
  %99 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %100 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  store i32 0, i32* %2, align 4
  br label %126

102:                                              ; preds = %92, %86, %80
  %103 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %104 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @destroy_workqueue(i32 %105)
  br label %107

107:                                              ; preds = %102, %64
  %108 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %109 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %112 = call i32 @free_irq(i32 %110, %struct.hi3110_priv* %111)
  %113 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %114 = call i32 @hi3110_hw_sleep(%struct.spi_device* %113)
  br label %115

115:                                              ; preds = %107, %46
  %116 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %117 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @hi3110_power_enable(i32 %118, i32 0)
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = call i32 @close_candev(%struct.net_device* %120)
  %122 = load %struct.hi3110_priv*, %struct.hi3110_priv** %4, align 8
  %123 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %115, %93, %20
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.hi3110_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hi3110_power_enable(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i64, i32, %struct.hi3110_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @hi3110_hw_reset(%struct.spi_device*) #1

declare dso_local i32 @hi3110_setup(%struct.net_device*) #1

declare dso_local i32 @hi3110_set_normal_mode(%struct.spi_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @free_irq(i32, %struct.hi3110_priv*) #1

declare dso_local i32 @hi3110_hw_sleep(%struct.spi_device*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
