; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_clean_alloc_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_clean_alloc_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.atl1_rfd_ring }
%struct.atl1_rfd_ring = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rx_return_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*, %struct.rx_return_desc*, i64)* @atl1_clean_alloc_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_clean_alloc_flag(%struct.atl1_adapter* %0, %struct.rx_return_desc* %1, i64 %2) #0 {
  %4 = alloca %struct.atl1_adapter*, align 8
  %5 = alloca %struct.rx_return_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.atl1_rfd_ring*, align 8
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %4, align 8
  store %struct.rx_return_desc* %1, %struct.rx_return_desc** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %8, i32 0, i32 0
  store %struct.atl1_rfd_ring* %9, %struct.atl1_rfd_ring** %7, align 8
  br label %10

10:                                               ; preds = %40, %3
  %11 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %7, align 8
  %12 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rx_return_desc*, %struct.rx_return_desc** %5, align 8
  %15 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %16, %17
  %19 = icmp ne i64 %13, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %10
  %21 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %7, align 8
  %22 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %7, align 8
  %25 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %7, align 8
  %30 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %7, align 8
  %34 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %7, align 8
  %39 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %20
  br label %10

41:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
