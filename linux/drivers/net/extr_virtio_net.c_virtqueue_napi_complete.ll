; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtqueue_napi_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtqueue_napi_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.virtqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.napi_struct*, %struct.virtqueue*, i32)* @virtqueue_napi_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtqueue_napi_complete(%struct.napi_struct* %0, %struct.virtqueue* %1, i32 %2) #0 {
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %4, align 8
  store %struct.virtqueue* %1, %struct.virtqueue** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %9 = call i32 @virtqueue_enable_cb_prepare(%struct.virtqueue* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @napi_complete_done(%struct.napi_struct* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @virtqueue_poll(%struct.virtqueue* %15, i32 %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %22 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %23 = call i32 @virtqueue_napi_schedule(%struct.napi_struct* %21, %struct.virtqueue* %22)
  br label %24

24:                                               ; preds = %20, %14
  br label %28

25:                                               ; preds = %3
  %26 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %27 = call i32 @virtqueue_disable_cb(%struct.virtqueue* %26)
  br label %28

28:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @virtqueue_enable_cb_prepare(%struct.virtqueue*) #1

declare dso_local i64 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @virtqueue_poll(%struct.virtqueue*, i32) #1

declare dso_local i32 @virtqueue_napi_schedule(%struct.napi_struct*, %struct.virtqueue*) #1

declare dso_local i32 @virtqueue_disable_cb(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
