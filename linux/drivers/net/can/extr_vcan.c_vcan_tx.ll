; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_vcan.c_vcan_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_vcan.c_vcan_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.canfd_frame = type { i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@echo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @vcan_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcan_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.canfd_frame*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.canfd_frame*
  store %struct.canfd_frame* %12, %struct.canfd_frame** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i64 @can_dropped_invalid_skb(%struct.net_device* %15, %struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %23 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %27 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %30 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PACKET_LOOPBACK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @echo, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %21
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %48 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %52 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %55 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  br label %60

60:                                               ; preds = %46, %43
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @consume_skb(%struct.sk_buff* %61)
  %63 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %21
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call %struct.sk_buff* @can_create_echo_skb(%struct.sk_buff* %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %4, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %83

74:                                               ; preds = %67
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = call i32 @vcan_rx(%struct.sk_buff* %75, %struct.net_device* %76)
  br label %81

78:                                               ; preds = %64
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call i32 @consume_skb(%struct.sk_buff* %79)
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %72, %60, %19
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @can_create_echo_skb(%struct.sk_buff*) #1

declare dso_local i32 @vcan_rx(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
