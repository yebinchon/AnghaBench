; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_config_xps_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_config_xps_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@__I40E_TX_XPS_INIT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_ring*)* @i40e_config_xps_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_config_xps_tx_ring(%struct.i40e_ring* %0) #0 {
  %2 = alloca %struct.i40e_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %2, align 8
  %4 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %15 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %8, %1
  br label %43

19:                                               ; preds = %13
  %20 = load i32, i32* @__I40E_TX_XPS_INIT_DONE, align 4
  %21 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @test_and_set_bit(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %43

27:                                               ; preds = %19
  %28 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cpumask_local_spread(i32 %32, i32 -1)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %35 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @get_cpu_mask(i32 %37)
  %39 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %40 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @netif_set_xps_queue(i32 %36, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %27, %26, %18
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

declare dso_local i32 @netif_set_xps_queue(i32, i32, i32) #1

declare dso_local i32 @get_cpu_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
