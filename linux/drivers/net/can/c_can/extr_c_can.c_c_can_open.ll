; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.c_can_priv = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to open can device\0A\00", align 1
@c_can_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to request interrupt\0A\00", align 1
@CAN_LED_EVENT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @c_can_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c_can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.c_can_priv* %7, %struct.c_can_priv** %5, align 8
  %8 = load %struct.c_can_priv*, %struct.c_can_priv** %5, align 8
  %9 = call i32 @c_can_pm_runtime_get_sync(%struct.c_can_priv* %8)
  %10 = load %struct.c_can_priv*, %struct.c_can_priv** %5, align 8
  %11 = call i32 @c_can_reset_ram(%struct.c_can_priv* %10, i32 1)
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @open_candev(%struct.net_device* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %60

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IRQF_SHARED, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @request_irq(i32 %22, i32* @c_can_isr, i32 %23, i32 %26, %struct.net_device* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %57

34:                                               ; preds = %19
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @c_can_start(%struct.net_device* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %51

40:                                               ; preds = %34
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load i32, i32* @CAN_LED_EVENT_OPEN, align 4
  %43 = call i32 @can_led_event(%struct.net_device* %41, i32 %42)
  %44 = load %struct.c_can_priv*, %struct.c_can_priv** %5, align 8
  %45 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %44, i32 0, i32 0
  %46 = call i32 @napi_enable(i32* %45)
  %47 = load %struct.c_can_priv*, %struct.c_can_priv** %5, align 8
  %48 = call i32 @c_can_irq_control(%struct.c_can_priv* %47, i32 1)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 @netif_start_queue(%struct.net_device* %49)
  store i32 0, i32* %2, align 4
  br label %66

51:                                               ; preds = %39
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @free_irq(i32 %54, %struct.net_device* %55)
  br label %57

57:                                               ; preds = %51, %31
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @close_candev(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %57, %16
  %61 = load %struct.c_can_priv*, %struct.c_can_priv** %5, align 8
  %62 = call i32 @c_can_reset_ram(%struct.c_can_priv* %61, i32 0)
  %63 = load %struct.c_can_priv*, %struct.c_can_priv** %5, align 8
  %64 = call i32 @c_can_pm_runtime_put_sync(%struct.c_can_priv* %63)
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %40
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @c_can_pm_runtime_get_sync(%struct.c_can_priv*) #1

declare dso_local i32 @c_can_reset_ram(%struct.c_can_priv*, i32) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @c_can_start(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @c_can_irq_control(%struct.c_can_priv*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @c_can_pm_runtime_put_sync(%struct.c_can_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
