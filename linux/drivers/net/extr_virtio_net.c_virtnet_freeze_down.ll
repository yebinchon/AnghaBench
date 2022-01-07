; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_freeze_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_freeze_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.virtnet_info* }
%struct.virtnet_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @virtnet_freeze_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtnet_freeze_down(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtnet_info*, align 8
  %4 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %5 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %6 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %5, i32 0, i32 0
  %7 = load %struct.virtnet_info*, %struct.virtnet_info** %6, align 8
  store %struct.virtnet_info* %7, %struct.virtnet_info** %3, align 8
  %8 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %9 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %8, i32 0, i32 5
  %10 = call i32 @flush_work(i32* %9)
  %11 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %12 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @netif_tx_lock_bh(i32 %13)
  %15 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %16 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @netif_device_detach(i32 %17)
  %19 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %20 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netif_tx_unlock_bh(i32 %21)
  %23 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %24 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %23, i32 0, i32 4
  %25 = call i32 @cancel_delayed_work_sync(i32* %24)
  %26 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %27 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @netif_running(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %55, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %35 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  %39 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %40 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @napi_disable(i32* %45)
  %47 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %48 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @virtnet_napi_tx_disable(i32* %53)
  br label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %32

58:                                               ; preds = %32
  br label %59

59:                                               ; preds = %58, %1
  ret void
}

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @virtnet_napi_tx_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
