; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c___ice_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c___ice_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_ring*, i32)* @__ice_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ice_maybe_stop_tx(%struct.ice_ring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.ice_ring* %0, %struct.ice_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %7 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %10 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netif_stop_subqueue(i32 %8, i32 %11)
  %13 = call i32 (...) @smp_mb()
  %14 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %15 = call i32 @ICE_DESC_UNUSED(%struct.ice_ring* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %26 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %29 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netif_start_subqueue(i32 %27, i32 %30)
  %32 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %33 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @netif_stop_subqueue(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ICE_DESC_UNUSED(%struct.ice_ring*) #1

declare dso_local i32 @netif_start_subqueue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
