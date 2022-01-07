; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_rx_overflow_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_rx_overflow_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i64, i32*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"RX buffer overflow\0A\00", align 1
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @at91_rx_overflow_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_rx_overflow_err(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device_stats*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.can_frame*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  store %struct.net_device_stats* %7, %struct.net_device_stats** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netdev_dbg(%struct.net_device* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %11 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %15 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %18, %struct.can_frame** %5)
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %53

27:                                               ; preds = %1
  %28 = load i32, i32* @CAN_ERR_CRTL, align 4
  %29 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %30 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %34 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %35 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %39 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %43 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %46 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @netif_receive_skb(%struct.sk_buff* %51)
  br label %53

53:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
