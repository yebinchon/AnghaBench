; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtqueue_napi_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtqueue_napi_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.virtqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.napi_struct*, %struct.virtqueue*)* @virtqueue_napi_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtqueue_napi_schedule(%struct.napi_struct* %0, %struct.virtqueue* %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca %struct.virtqueue*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store %struct.virtqueue* %1, %struct.virtqueue** %4, align 8
  %5 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %6 = call i64 @napi_schedule_prep(%struct.napi_struct* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %10 = call i32 @virtqueue_disable_cb(%struct.virtqueue* %9)
  %11 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %12 = call i32 @__napi_schedule(%struct.napi_struct* %11)
  br label %13

13:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @napi_schedule_prep(%struct.napi_struct*) #1

declare dso_local i32 @virtqueue_disable_cb(%struct.virtqueue*) #1

declare dso_local i32 @__napi_schedule(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
