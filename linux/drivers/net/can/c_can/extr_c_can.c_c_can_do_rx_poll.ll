; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_do_rx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_do_rx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.c_can_priv = type { i32 }

@C_CAN_MSG_OBJ_RX_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Implementation does not support more message objects than 16\00", align 1
@CAN_LED_EVENT_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @c_can_do_rx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_do_rx_poll(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c_can_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.c_can_priv* %11, %struct.c_can_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @C_CAN_MSG_OBJ_RX_LAST, align 4
  %13 = icmp sgt i32 %12, 16
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON_MSG(i32 %14, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %33, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load %struct.c_can_priv*, %struct.c_can_priv** %5, align 8
  %24 = call i32 @c_can_get_pending(%struct.c_can_priv* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %49

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @c_can_adjust_pending(i32 %29)
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %8, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load %struct.c_can_priv*, %struct.c_can_priv** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @c_can_read_objects(%struct.net_device* %38, %struct.c_can_priv* %39, i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %16

49:                                               ; preds = %27, %16
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = load i32, i32* @CAN_LED_EVENT_RX, align 4
  %55 = call i32 @can_led_event(%struct.net_device* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUILD_BUG_ON_MSG(i32, i8*) #1

declare dso_local i32 @c_can_get_pending(%struct.c_can_priv*) #1

declare dso_local i32 @c_can_adjust_pending(i32) #1

declare dso_local i32 @c_can_read_objects(%struct.net_device*, %struct.c_can_priv*, i32, i32) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
