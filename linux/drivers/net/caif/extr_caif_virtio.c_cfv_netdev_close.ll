; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_netdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_netdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cfv_info = type { i32, i32, i32, i32 }
%struct.buf_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cfv_netdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfv_netdev_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cfv_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.buf_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cfv_info* @netdev_priv(%struct.net_device* %6)
  store %struct.cfv_info* %7, %struct.cfv_info** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_carrier_off(%struct.net_device* %8)
  %10 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %11 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @virtqueue_disable_cb(i32 %12)
  %14 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %15 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vringh_notify_disable_kern(i32 %16)
  %18 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %19 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %18, i32 0, i32 2
  %20 = call i32 @napi_disable(i32* %19)
  %21 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %22 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cfv_release_used_buf(i32 %23)
  %25 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %26 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %35, %1
  %30 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %31 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.buf_info* @virtqueue_detach_unused_buf(i32 %32)
  store %struct.buf_info* %33, %struct.buf_info** %5, align 8
  %34 = icmp ne %struct.buf_info* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %37 = load %struct.buf_info*, %struct.buf_info** %5, align 8
  %38 = call i32 @free_buf_info(%struct.cfv_info* %36, %struct.buf_info* %37)
  br label %29

39:                                               ; preds = %29
  %40 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %41 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %40, i32 0, i32 0
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %45 = call i32 @cfv_destroy_genpool(%struct.cfv_info* %44)
  ret i32 0
}

declare dso_local %struct.cfv_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @virtqueue_disable_cb(i32) #1

declare dso_local i32 @vringh_notify_disable_kern(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @cfv_release_used_buf(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.buf_info* @virtqueue_detach_unused_buf(i32) #1

declare dso_local i32 @free_buf_info(%struct.cfv_info*, %struct.buf_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cfv_destroy_genpool(%struct.cfv_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
