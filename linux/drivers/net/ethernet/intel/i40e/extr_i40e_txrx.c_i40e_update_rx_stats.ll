; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_update_rx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_update_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_update_rx_stats(%struct.i40e_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %8 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %7, i32 0, i32 1
  %9 = call i32 @u64_stats_update_begin(i32* %8)
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add i32 %14, %10
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, %16
  store i32 %21, i32* %19, align 4
  %22 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %23 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %22, i32 0, i32 1
  %24 = call i32 @u64_stats_update_end(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, %25
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %35 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, %33
  store i32 %40, i32* %38, align 4
  ret void
}

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
