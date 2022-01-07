; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_skb_xmit_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_skb_xmit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.virtnet_info* }
%struct.virtnet_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.napi_struct }
%struct.napi_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @skb_xmit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skb_xmit_done(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtnet_info*, align 8
  %4 = alloca %struct.napi_struct*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %5 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %6 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  store %struct.virtnet_info* %9, %struct.virtnet_info** %3, align 8
  %10 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %11 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %14 = call i64 @vq2txq(%struct.virtqueue* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.napi_struct* %16, %struct.napi_struct** %4, align 8
  %17 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %18 = call i32 @virtqueue_disable_cb(%struct.virtqueue* %17)
  %19 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %20 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %25 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %26 = call i32 @virtqueue_napi_schedule(%struct.napi_struct* %24, %struct.virtqueue* %25)
  br label %34

27:                                               ; preds = %1
  %28 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %29 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %32 = call i64 @vq2txq(%struct.virtqueue* %31)
  %33 = call i32 @netif_wake_subqueue(i32 %30, i64 %32)
  br label %34

34:                                               ; preds = %27, %23
  ret void
}

declare dso_local i64 @vq2txq(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_disable_cb(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_napi_schedule(%struct.napi_struct*, %struct.virtqueue*) #1

declare dso_local i32 @netif_wake_subqueue(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
