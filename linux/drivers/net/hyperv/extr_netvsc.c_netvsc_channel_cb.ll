; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_channel_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_channel_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_channel = type { i32, %struct.vmbus_channel* }
%struct.vmbus_channel = type { %struct.hv_ring_buffer_info }
%struct.hv_ring_buffer_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netvsc_channel_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.netvsc_channel*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca %struct.hv_ring_buffer_info*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.netvsc_channel*
  store %struct.netvsc_channel* %7, %struct.netvsc_channel** %3, align 8
  %8 = load %struct.netvsc_channel*, %struct.netvsc_channel** %3, align 8
  %9 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %8, i32 0, i32 1
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %9, align 8
  store %struct.vmbus_channel* %10, %struct.vmbus_channel** %4, align 8
  %11 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %12 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %11, i32 0, i32 0
  store %struct.hv_ring_buffer_info* %12, %struct.hv_ring_buffer_info** %5, align 8
  %13 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %14 = call i64 @hv_get_ring_buffer(%struct.hv_ring_buffer_info* %13)
  %15 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %16 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = call i32 @prefetch(i64 %18)
  %20 = load %struct.netvsc_channel*, %struct.netvsc_channel** %3, align 8
  %21 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %20, i32 0, i32 0
  %22 = call i64 @napi_schedule_prep(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %26 = call i32 @hv_begin_read(%struct.hv_ring_buffer_info* %25)
  %27 = load %struct.netvsc_channel*, %struct.netvsc_channel** %3, align 8
  %28 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %27, i32 0, i32 0
  %29 = call i32 @__napi_schedule_irqoff(i32* %28)
  br label %30

30:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @prefetch(i64) #1

declare dso_local i64 @hv_get_ring_buffer(%struct.hv_ring_buffer_info*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @hv_begin_read(%struct.hv_ring_buffer_info*) #1

declare dso_local i32 @__napi_schedule_irqoff(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
