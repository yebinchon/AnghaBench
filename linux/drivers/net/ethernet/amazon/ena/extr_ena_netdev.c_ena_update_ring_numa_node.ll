; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_update_ring_numa_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_update_ring_numa_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i32, i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_ring*, %struct.ena_ring*)* @ena_update_ring_numa_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_update_ring_numa_node(%struct.ena_ring* %0, %struct.ena_ring* %1) #0 {
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ena_ring* %0, %struct.ena_ring** %3, align 8
  store %struct.ena_ring* %1, %struct.ena_ring** %4, align 8
  %7 = call i32 (...) @get_cpu()
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %9 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %42

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @cpu_to_node(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = call i32 (...) @put_cpu()
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NUMA_NO_NODE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %26 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ena_com_update_numa_node(i32 %27, i32 %28)
  %30 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %31 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ena_com_update_numa_node(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %24, %17
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %38 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %41 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %44

42:                                               ; preds = %16
  %43 = call i32 (...) @put_cpu()
  br label %44

44:                                               ; preds = %42, %35
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @ena_com_update_numa_node(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
