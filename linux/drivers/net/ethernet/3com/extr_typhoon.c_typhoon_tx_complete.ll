; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32 }
%struct.transmit_ring = type { i32, i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@TXLO_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.typhoon*, %struct.transmit_ring*, i32*)* @typhoon_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_tx_complete(%struct.typhoon* %0, %struct.transmit_ring* %1, i32* %2) #0 {
  %4 = alloca %struct.typhoon*, align 8
  %5 = alloca %struct.transmit_ring*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.typhoon* %0, %struct.typhoon** %4, align 8
  store %struct.transmit_ring* %1, %struct.transmit_ring** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %12 = load %struct.transmit_ring*, %struct.transmit_ring** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @typhoon_clean_tx(%struct.typhoon* %11, %struct.transmit_ring* %12, i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %16 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @netif_queue_stopped(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.transmit_ring*, %struct.transmit_ring** %5, align 8
  %22 = getelementptr inbounds %struct.transmit_ring, %struct.transmit_ring* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @TXLO_ENTRIES, align 4
  %26 = call i32 @typhoon_num_free(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 2
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %32 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_wake_queue(i32 %33)
  br label %35

35:                                               ; preds = %30, %20, %3
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.transmit_ring*, %struct.transmit_ring** %5, align 8
  %38 = getelementptr inbounds %struct.transmit_ring, %struct.transmit_ring* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = call i32 (...) @smp_wmb()
  ret void
}

declare dso_local i32 @typhoon_clean_tx(%struct.typhoon*, %struct.transmit_ring*, i32*) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @typhoon_num_free(i32, i32, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
