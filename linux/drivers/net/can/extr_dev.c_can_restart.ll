; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.can_priv = type { i32 (%struct.net_device*, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CAN_ERR_RESTARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"restarted\0A\00", align 1
@CAN_MODE_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error %d during restart\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @can_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_restart(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.can_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.can_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.can_priv* %9, %struct.can_priv** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_carrier_ok(%struct.net_device* %12)
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @can_flush_echo_skb(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %17, %struct.can_frame** %6)
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load i32, i32* @CAN_ERR_RESTARTED, align 4
  %26 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %27 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @netif_rx(%struct.sk_buff* %30)
  %32 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %33 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %37 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %40 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  br label %45

45:                                               ; preds = %24, %21
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @netdev_dbg(%struct.net_device* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %49 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %54 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %53, i32 0, i32 0
  %55 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %54, align 8
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load i32, i32* @CAN_MODE_START, align 4
  %58 = call i32 %55(%struct.net_device* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = call i32 @netif_carrier_on(%struct.net_device* %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %45
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @netdev_err(%struct.net_device* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %45
  ret void
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @can_flush_echo_skb(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
