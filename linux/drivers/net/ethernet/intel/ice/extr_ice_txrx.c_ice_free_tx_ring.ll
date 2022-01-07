; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { i32*, i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_free_tx_ring(%struct.ice_ring* %0) #0 {
  %2 = alloca %struct.ice_ring*, align 8
  store %struct.ice_ring* %0, %struct.ice_ring** %2, align 8
  %3 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %4 = call i32 @ice_clean_tx_ring(%struct.ice_ring* %3)
  %5 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %6 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %9 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @devm_kfree(i32 %7, i32* %10)
  %12 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %13 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %12, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %15 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %20 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %23 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %26 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %29 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dmam_free_coherent(i32 %21, i32 %24, i32* %27, i32 %30)
  %32 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %33 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @ice_clean_tx_ring(%struct.ice_ring*) #1

declare dso_local i32 @devm_kfree(i32, i32*) #1

declare dso_local i32 @dmam_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
