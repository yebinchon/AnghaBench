; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.rcar_can_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"failed to enable peripheral clock, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to enable CAN clock, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"open_candev() failed, error %d\0A\00", align 1
@rcar_can_interrupt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"request_irq(%d) failed, error %d\0A\00", align 1
@CAN_LED_EVENT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rcar_can_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_can_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rcar_can_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.rcar_can_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.rcar_can_priv* %7, %struct.rcar_can_priv** %4, align 8
  %8 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %4, align 8
  %9 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %84

18:                                               ; preds = %1
  %19 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %4, align 8
  %20 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_prepare_enable(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %79

29:                                               ; preds = %18
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @open_candev(%struct.net_device* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %74

38:                                               ; preds = %29
  %39 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %4, align 8
  %40 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %39, i32 0, i32 2
  %41 = call i32 @napi_enable(i32* %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @rcar_can_interrupt, align 4
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 @request_irq(i32 %44, i32 %45, i32 0, i32 %48, %struct.net_device* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %38
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58)
  br label %68

60:                                               ; preds = %38
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = load i32, i32* @CAN_LED_EVENT_OPEN, align 4
  %63 = call i32 @can_led_event(%struct.net_device* %61, i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @rcar_can_start(%struct.net_device* %64)
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @netif_start_queue(%struct.net_device* %66)
  store i32 0, i32* %2, align 4
  br label %86

68:                                               ; preds = %53
  %69 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %4, align 8
  %70 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %69, i32 0, i32 2
  %71 = call i32 @napi_disable(i32* %70)
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = call i32 @close_candev(%struct.net_device* %72)
  br label %74

74:                                               ; preds = %68, %34
  %75 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %4, align 8
  %76 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @clk_disable_unprepare(i32 %77)
  br label %79

79:                                               ; preds = %74, %25
  %80 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %4, align 8
  %81 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clk_disable_unprepare(i32 %82)
  br label %84

84:                                               ; preds = %79, %14
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %60
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.rcar_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @rcar_can_start(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
