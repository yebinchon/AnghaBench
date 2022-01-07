; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4ican_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4ican_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sun4ican_priv = type { i32 }

@sun4i_can_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"request_irq err: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"could not enable CAN peripheral clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"could not start CAN peripheral\0A\00", align 1
@CAN_LED_EVENT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sun4ican_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4ican_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sun4ican_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.sun4ican_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.sun4ican_priv* %7, %struct.sun4ican_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @open_candev(%struct.net_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %69

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @sun4i_can_interrupt, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @request_irq(i32 %17, i32 %18, i32 0, i32 %21, %struct.net_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %65

30:                                               ; preds = %14
  %31 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %32 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_prepare_enable(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %59

40:                                               ; preds = %30
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @sun4i_can_start(%struct.net_device* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %54

48:                                               ; preds = %40
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = load i32, i32* @CAN_LED_EVENT_OPEN, align 4
  %51 = call i32 @can_led_event(%struct.net_device* %49, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @netif_start_queue(%struct.net_device* %52)
  store i32 0, i32* %2, align 4
  br label %69

54:                                               ; preds = %45
  %55 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %56 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clk_disable_unprepare(i32 %57)
  br label %59

59:                                               ; preds = %54, %37
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @free_irq(i32 %62, %struct.net_device* %63)
  br label %65

65:                                               ; preds = %59, %26
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @close_candev(%struct.net_device* %66)
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %48, %12
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.sun4ican_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @sun4i_can_start(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
