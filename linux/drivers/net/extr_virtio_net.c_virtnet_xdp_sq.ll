; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_xdp_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_xdp_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_queue = type { i32 }
%struct.virtnet_info = type { i32, i32, %struct.send_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.send_queue* (%struct.virtnet_info*)* @virtnet_xdp_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.send_queue* @virtnet_xdp_sq(%struct.virtnet_info* %0) #0 {
  %2 = alloca %struct.virtnet_info*, align 8
  %3 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %2, align 8
  %4 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %5 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %8 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub i32 %6, %9
  %11 = call i32 (...) @smp_processor_id()
  %12 = add i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %14 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %13, i32 0, i32 2
  %15 = load %struct.send_queue*, %struct.send_queue** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %15, i64 %17
  ret %struct.send_queue* %18
}

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
