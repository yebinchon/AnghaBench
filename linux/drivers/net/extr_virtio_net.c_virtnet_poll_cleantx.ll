; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_poll_cleantx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_poll_cleantx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_queue = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.virtnet_info* }
%struct.virtnet_info = type { i32, %struct.send_queue* }
%struct.send_queue = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.netdev_queue = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.receive_queue*)* @virtnet_poll_cleantx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtnet_poll_cleantx(%struct.receive_queue* %0) #0 {
  %2 = alloca %struct.receive_queue*, align 8
  %3 = alloca %struct.virtnet_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.send_queue*, align 8
  %6 = alloca %struct.netdev_queue*, align 8
  store %struct.receive_queue* %0, %struct.receive_queue** %2, align 8
  %7 = load %struct.receive_queue*, %struct.receive_queue** %2, align 8
  %8 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.virtnet_info*, %struct.virtnet_info** %12, align 8
  store %struct.virtnet_info* %13, %struct.virtnet_info** %3, align 8
  %14 = load %struct.receive_queue*, %struct.receive_queue** %2, align 8
  %15 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = call i32 @vq2rxq(%struct.TYPE_8__* %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %19 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %18, i32 0, i32 1
  %20 = load %struct.send_queue*, %struct.send_queue** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %20, i64 %22
  store %struct.send_queue* %23, %struct.send_queue** %5, align 8
  %24 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %25 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %26, i32 %27)
  store %struct.netdev_queue* %28, %struct.netdev_queue** %6, align 8
  %29 = load %struct.send_queue*, %struct.send_queue** %5, align 8
  %30 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @is_xdp_raw_buffer_queue(%struct.virtnet_info* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %1
  br label %61

40:                                               ; preds = %34
  %41 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %42 = call i64 @__netif_tx_trylock(%struct.netdev_queue* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.send_queue*, %struct.send_queue** %5, align 8
  %46 = call i32 @free_old_xmit_skbs(%struct.send_queue* %45, i32 1)
  %47 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %48 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %47)
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.send_queue*, %struct.send_queue** %5, align 8
  %51 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %56 = add nsw i64 2, %55
  %57 = icmp sge i64 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %60 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %59)
  br label %61

61:                                               ; preds = %39, %58, %49
  ret void
}

declare dso_local i32 @vq2rxq(%struct.TYPE_8__*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @is_xdp_raw_buffer_queue(%struct.virtnet_info*, i32) #1

declare dso_local i64 @__netif_tx_trylock(%struct.netdev_queue*) #1

declare dso_local i32 @free_old_xmit_skbs(%struct.send_queue*, i32) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
