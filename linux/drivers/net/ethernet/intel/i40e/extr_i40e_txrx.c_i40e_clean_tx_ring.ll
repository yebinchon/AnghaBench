; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, i64, i32, i64, i64, i32*, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_clean_tx_ring(%struct.i40e_ring* %0) #0 {
  %2 = alloca %struct.i40e_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %2, align 8
  %5 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %6 = call i64 @ring_is_xdp(%struct.i40e_ring* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %15 = call i32 @i40e_xsk_clean_tx_ring(%struct.i40e_ring* %14)
  br label %41

16:                                               ; preds = %8, %1
  %17 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %71

22:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %31 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %32 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i32 @i40e_unmap_and_free_tx_resource(%struct.i40e_ring* %30, i32* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %23

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %13
  %42 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %43 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = mul i64 4, %44
  store i64 %45, i64* %3, align 8
  %46 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %47 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @memset(i32* %48, i32 0, i64 %49)
  %51 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %52 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %55 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @memset(i32* %53, i32 0, i64 %56)
  %58 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %59 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %61 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %63 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %41
  br label %71

67:                                               ; preds = %41
  %68 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %69 = call i32 @txring_txq(%struct.i40e_ring* %68)
  %70 = call i32 @netdev_tx_reset_queue(i32 %69)
  br label %71

71:                                               ; preds = %67, %66, %21
  ret void
}

declare dso_local i64 @ring_is_xdp(%struct.i40e_ring*) #1

declare dso_local i32 @i40e_xsk_clean_tx_ring(%struct.i40e_ring*) #1

declare dso_local i32 @i40e_unmap_and_free_tx_resource(%struct.i40e_ring*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @txring_txq(%struct.i40e_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
