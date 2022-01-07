; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.virtnet_info* }
%struct.virtnet_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @virtnet_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtnet_remove(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtnet_info*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %4 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %4, i32 0, i32 0
  %6 = load %struct.virtnet_info*, %struct.virtnet_info** %5, align 8
  store %struct.virtnet_info* %6, %struct.virtnet_info** %3, align 8
  %7 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %8 = call i32 @virtnet_cpu_notif_remove(%struct.virtnet_info* %7)
  %9 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %10 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %9, i32 0, i32 2
  %11 = call i32 @flush_work(i32* %10)
  %12 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %13 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @unregister_netdev(i32 %14)
  %16 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %17 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @net_failover_destroy(i32 %18)
  %20 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %21 = call i32 @remove_vq_common(%struct.virtnet_info* %20)
  %22 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %23 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @free_netdev(i32 %24)
  ret void
}

declare dso_local i32 @virtnet_cpu_notif_remove(%struct.virtnet_info*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @net_failover_destroy(i32) #1

declare dso_local i32 @remove_vq_common(%struct.virtnet_info*) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
