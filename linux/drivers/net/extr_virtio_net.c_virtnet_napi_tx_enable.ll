; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_napi_tx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_napi_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32 }
%struct.virtqueue = type { i32 }
%struct.napi_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtnet_info*, %struct.virtqueue*, %struct.napi_struct*)* @virtnet_napi_tx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtnet_napi_tx_enable(%struct.virtnet_info* %0, %struct.virtqueue* %1, %struct.napi_struct* %2) #0 {
  %4 = alloca %struct.virtnet_info*, align 8
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  store %struct.virtnet_info* %0, %struct.virtnet_info** %4, align 8
  store %struct.virtqueue* %1, %struct.virtqueue** %5, align 8
  store %struct.napi_struct* %2, %struct.napi_struct** %6, align 8
  %7 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %8 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %23

12:                                               ; preds = %3
  %13 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %14 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %19 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %23

20:                                               ; preds = %12
  %21 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %22 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  call void @virtnet_napi_enable(%struct.virtqueue* %21, %struct.napi_struct* %22)
  br label %23

23:                                               ; preds = %20, %17, %11
  ret void
}

declare dso_local void @virtnet_napi_enable(%struct.virtqueue*, %struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
