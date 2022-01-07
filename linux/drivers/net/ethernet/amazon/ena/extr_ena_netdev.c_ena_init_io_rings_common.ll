; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_init_io_rings_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_init_io_rings_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ena_ring = type { i64, i32, i32, i64, i64, i64, i32, %struct.ena_adapter*, i32*, i32, i32*, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, %struct.ena_ring*, i64)* @ena_init_io_rings_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_init_io_rings_common(%struct.ena_adapter* %0, %struct.ena_ring* %1, i64 %2) #0 {
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca %struct.ena_ring*, align 8
  %6 = alloca i64, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store %struct.ena_ring* %1, %struct.ena_ring** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %9 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %14 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %13, i32 0, i32 11
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %14, align 8
  %15 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %20 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %19, i32 0, i32 10
  store i32* %18, i32** %20, align 8
  %21 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %25 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %33 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %32, i32 0, i32 8
  store i32* %31, i32** %33, align 8
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %35 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %36 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %35, i32 0, i32 7
  store %struct.ena_adapter* %34, %struct.ena_adapter** %36, align 8
  %37 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %41 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %43 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %45 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %47 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %46, i32 0, i32 1
  store i32 0, i32* %47, align 8
  %48 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %49 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %51 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %50, i32 0, i32 2
  %52 = call i32 @u64_stats_init(i32* %51)
  ret void
}

declare dso_local i32 @u64_stats_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
