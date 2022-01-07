; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { i64, i32, i32, i64, i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_clean_tx_ring(%struct.ice_ring* %0) #0 {
  %2 = alloca %struct.ice_ring*, align 8
  %3 = alloca i64, align 8
  store %struct.ice_ring* %0, %struct.ice_ring** %2, align 8
  %4 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %5 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %4, i32 0, i32 6
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %57

9:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %24, %9
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %13 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %18 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %19 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @ice_unmap_and_free_tx_buf(%struct.ice_ring* %17, i32* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %10

27:                                               ; preds = %10
  %28 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %29 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %32 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32* %30, i32 0, i32 %35)
  %37 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %38 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %41 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(i32* %39, i32 0, i32 %42)
  %44 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %45 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %47 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %49 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %27
  br label %57

53:                                               ; preds = %27
  %54 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %55 = call i32 @txring_txq(%struct.ice_ring* %54)
  %56 = call i32 @netdev_tx_reset_queue(i32 %55)
  br label %57

57:                                               ; preds = %53, %52, %8
  ret void
}

declare dso_local i32 @ice_unmap_and_free_tx_buf(%struct.ice_ring*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @txring_txq(%struct.ice_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
