; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netfront_info = type { %struct.netfront_queue* }
%struct.netfront_queue = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xennet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netfront_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.netfront_queue*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.netfront_info* @netdev_priv(%struct.net_device* %8)
  store %struct.netfront_info* %9, %struct.netfront_info** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.netfront_queue* null, %struct.netfront_queue** %7, align 8
  %13 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %14 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %13, i32 0, i32 0
  %15 = load %struct.netfront_queue*, %struct.netfront_queue** %14, align 8
  %16 = icmp ne %struct.netfront_queue* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %73

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %67, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %21
  %26 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %27 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %26, i32 0, i32 0
  %28 = load %struct.netfront_queue*, %struct.netfront_queue** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %28, i64 %30
  store %struct.netfront_queue* %31, %struct.netfront_queue** %7, align 8
  %32 = load %struct.netfront_queue*, %struct.netfront_queue** %7, align 8
  %33 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %32, i32 0, i32 1
  %34 = call i32 @napi_enable(i32* %33)
  %35 = load %struct.netfront_queue*, %struct.netfront_queue** %7, align 8
  %36 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i64 @netif_carrier_ok(%struct.net_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %25
  %42 = load %struct.netfront_queue*, %struct.netfront_queue** %7, align 8
  %43 = call i32 @xennet_alloc_rx_buffers(%struct.netfront_queue* %42)
  %44 = load %struct.netfront_queue*, %struct.netfront_queue** %7, align 8
  %45 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = load %struct.netfront_queue*, %struct.netfront_queue** %7, align 8
  %50 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %48, i64* %53, align 8
  %54 = load %struct.netfront_queue*, %struct.netfront_queue** %7, align 8
  %55 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %54, i32 0, i32 2
  %56 = call i64 @RING_HAS_UNCONSUMED_RESPONSES(%struct.TYPE_4__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %41
  %59 = load %struct.netfront_queue*, %struct.netfront_queue** %7, align 8
  %60 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %59, i32 0, i32 1
  %61 = call i32 @napi_schedule(i32* %60)
  br label %62

62:                                               ; preds = %58, %41
  br label %63

63:                                               ; preds = %62, %25
  %64 = load %struct.netfront_queue*, %struct.netfront_queue** %7, align 8
  %65 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %21

70:                                               ; preds = %21
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 @netif_tx_start_all_queues(%struct.net_device* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %70, %17
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.netfront_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @xennet_alloc_rx_buffers(%struct.netfront_queue*) #1

declare dso_local i64 @RING_HAS_UNCONSUMED_RESPONSES(%struct.TYPE_4__*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
