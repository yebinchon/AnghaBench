; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_wake_queue_if_stopped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_wake_queue_if_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i64, i32, %struct.jme_ring* }
%struct.jme_ring = type { i32 }

@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"TX Queue Waked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_wake_queue_if_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_wake_queue_if_stopped(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca %struct.jme_ring*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %4 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %4, i32 0, i32 2
  %6 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %7 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %6, i64 0
  store %struct.jme_ring* %7, %struct.jme_ring** %3, align 8
  %8 = call i32 (...) @smp_wmb()
  %9 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @netif_queue_stopped(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.jme_ring*, %struct.jme_ring** %3, align 8
  %16 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %15, i32 0, i32 0
  %17 = call i64 @atomic_read(i32* %16)
  %18 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br label %22

22:                                               ; preds = %14, %1
  %23 = phi i1 [ false, %1 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %29 = load i32, i32* @tx_done, align 4
  %30 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @netif_info(%struct.jme_adapter* %28, i32 %29, i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @netif_wake_queue(i32 %36)
  br label %38

38:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @netif_info(%struct.jme_adapter*, i32, i32, i8*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
