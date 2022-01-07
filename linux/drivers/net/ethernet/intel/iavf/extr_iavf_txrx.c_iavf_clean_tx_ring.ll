; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_ring = type { i64, i64, i32, i64, i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_clean_tx_ring(%struct.iavf_ring* %0) #0 {
  %2 = alloca %struct.iavf_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.iavf_ring* %0, %struct.iavf_ring** %2, align 8
  %5 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %6 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %5, i32 0, i32 6
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %25, %10
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %14 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %19 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %20 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @iavf_unmap_and_free_tx_resource(%struct.iavf_ring* %18, i32* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %11

28:                                               ; preds = %11
  %29 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %30 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 4, %31
  store i64 %32, i64* %3, align 8
  %33 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %34 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @memset(i32* %35, i32 0, i64 %36)
  %38 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %39 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %42 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @memset(i32* %40, i32 0, i64 %43)
  %45 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %46 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %48 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %50 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %28
  br label %58

54:                                               ; preds = %28
  %55 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %56 = call i32 @txring_txq(%struct.iavf_ring* %55)
  %57 = call i32 @netdev_tx_reset_queue(i32 %56)
  br label %58

58:                                               ; preds = %54, %53, %9
  ret void
}

declare dso_local i32 @iavf_unmap_and_free_tx_resource(%struct.iavf_ring*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @txring_txq(%struct.iavf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
