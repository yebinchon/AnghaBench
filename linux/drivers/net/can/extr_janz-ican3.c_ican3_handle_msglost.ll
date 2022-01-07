; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_handle_msglost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_handle_msglost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { %struct.net_device* }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.ican3_msg = type { i64, i32* }
%struct.can_frame = type { i32*, i32 }
%struct.sk_buff = type { i32 }

@MSG_MSGLOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"lost %d control messages\0A\00", align 1
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ican3_dev*, %struct.ican3_msg*)* @ican3_handle_msglost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ican3_handle_msglost(%struct.ican3_dev* %0, %struct.ican3_msg* %1) #0 {
  %3 = alloca %struct.ican3_dev*, align 8
  %4 = alloca %struct.ican3_msg*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.ican3_dev* %0, %struct.ican3_dev** %3, align 8
  store %struct.ican3_msg* %1, %struct.ican3_msg** %4, align 8
  %9 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %10 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %6, align 8
  %14 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %15 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MSG_MSGLOST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %21 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %24 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netdev_err(%struct.net_device* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %55

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %30, %struct.can_frame** %7)
  store %struct.sk_buff* %31, %struct.sk_buff** %8, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load i32, i32* @CAN_ERR_CRTL, align 4
  %36 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %37 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %41 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %42 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %46 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %50 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = call i32 @netif_rx(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %19, %34, %29
  ret void
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
