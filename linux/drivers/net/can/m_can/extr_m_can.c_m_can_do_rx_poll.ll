; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_do_rx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_do_rx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.m_can_classdev = type { i32 }

@M_CAN_RXF0S = common dso_local global i32 0, align 4
@RXFS_FFL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no messages in fifo0\0A\00", align 1
@RXFS_RFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Rx FIFO 0 Message Lost\0A\00", align 1
@CAN_LED_EVENT_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @m_can_do_rx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_do_rx_poll(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_can_classdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %9)
  store %struct.m_can_classdev* %10, %struct.m_can_classdev** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %12 = load i32, i32* @M_CAN_RXF0S, align 4
  %13 = call i32 @m_can_read(%struct.m_can_classdev* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @RXFS_FFL_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @netdev_dbg(%struct.net_device* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @RXFS_FFL_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i1 [ false, %22 ], [ %29, %27 ]
  br i1 %31, label %32, label %51

32:                                               ; preds = %30
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @RXFS_RFL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 @netdev_warn(%struct.net_device* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @m_can_read_fifo(%struct.net_device* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %49 = load i32, i32* @M_CAN_RXF0S, align 4
  %50 = call i32 @m_can_read(%struct.m_can_classdev* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %22

51:                                               ; preds = %30
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load i32, i32* @CAN_LED_EVENT_RX, align 4
  %57 = call i32 @can_led_event(%struct.net_device* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @m_can_read(%struct.m_can_classdev*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @m_can_read_fifo(%struct.net_device*, i32) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
