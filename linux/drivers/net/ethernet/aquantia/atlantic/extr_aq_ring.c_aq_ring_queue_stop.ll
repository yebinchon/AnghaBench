; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_queue_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_queue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { i32, i32 }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_ring_queue_stop(%struct.aq_ring_s* %0) #0 {
  %2 = alloca %struct.aq_ring_s*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %2, align 8
  %4 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %5 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.net_device* @aq_nic_get_ndev(i32 %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %10 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @__netif_subqueue_stopped(%struct.net_device* %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %17 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netif_stop_subqueue(%struct.net_device* %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.net_device* @aq_nic_get_ndev(i32) #1

declare dso_local i32 @__netif_subqueue_stopped(%struct.net_device*, i32) #1

declare dso_local i32 @netif_stop_subqueue(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
