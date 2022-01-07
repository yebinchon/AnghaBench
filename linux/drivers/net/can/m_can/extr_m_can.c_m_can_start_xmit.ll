; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.m_can_classdev = type { %struct.sk_buff*, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"hard_xmit called while tx busy\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @m_can_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.m_can_classdev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %7)
  store %struct.m_can_classdev* %8, %struct.m_can_classdev** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i64 @can_dropped_invalid_skb(%struct.net_device* %9, %struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %17 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %15
  %21 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %22 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %20
  %30 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %31 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @m_can_clean(%struct.net_device* %37)
  br label %53

39:                                               ; preds = %29
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %42 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %41, i32 0, i32 0
  store %struct.sk_buff* %40, %struct.sk_buff** %42, align 8
  %43 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %44 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @netif_stop_queue(i32 %45)
  %47 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %48 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %51 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %50, i32 0, i32 1
  %52 = call i32 @queue_work(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %39, %36
  br label %60

54:                                               ; preds = %15
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %57 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %56, i32 0, i32 0
  store %struct.sk_buff* %55, %struct.sk_buff** %57, align 8
  %58 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %59 = call i32 @m_can_tx_handler(%struct.m_can_classdev* %58)
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %54, %25, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @m_can_clean(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @m_can_tx_handler(%struct.m_can_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
