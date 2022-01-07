; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rcar_canfd_channel = type { i32, %struct.rcar_canfd_global* }
%struct.rcar_canfd_global = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to enable CAN clock, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"open_candev() failed, error %d\0A\00", align 1
@CAN_LED_EVENT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rcar_canfd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_canfd_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rcar_canfd_channel*, align 8
  %5 = alloca %struct.rcar_canfd_global*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device* %7)
  store %struct.rcar_canfd_channel* %8, %struct.rcar_canfd_channel** %4, align 8
  %9 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %10 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %9, i32 0, i32 1
  %11 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %10, align 8
  store %struct.rcar_canfd_global* %11, %struct.rcar_canfd_global** %5, align 8
  %12 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %5, align 8
  %13 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_prepare_enable(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @netdev_err(%struct.net_device* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %57

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @open_candev(%struct.net_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @netdev_err(%struct.net_device* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %52

31:                                               ; preds = %22
  %32 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %33 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %32, i32 0, i32 0
  %34 = call i32 @napi_enable(i32* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @rcar_canfd_start(%struct.net_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %46

40:                                               ; preds = %31
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @netif_start_queue(%struct.net_device* %41)
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load i32, i32* @CAN_LED_EVENT_OPEN, align 4
  %45 = call i32 @can_led_event(%struct.net_device* %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %59

46:                                               ; preds = %39
  %47 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %48 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %47, i32 0, i32 0
  %49 = call i32 @napi_disable(i32* %48)
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @close_candev(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %46, %27
  %53 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %5, align 8
  %54 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_disable_unprepare(i32 %55)
  br label %57

57:                                               ; preds = %52, %18
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %40
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @rcar_canfd_start(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
