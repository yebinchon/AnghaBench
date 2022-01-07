; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_free_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_free_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { i32*, i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_free_tx_resources(%struct.fm10k_ring* %0) #0 {
  %2 = alloca %struct.fm10k_ring*, align 8
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %2, align 8
  %3 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %4 = call i32 @fm10k_clean_tx_ring(%struct.fm10k_ring* %3)
  %5 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %6 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @vfree(i32* %7)
  %9 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %10 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %9, i32 0, i32 4
  store i32* null, i32** %10, align 8
  %11 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %12 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %18 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %21 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %24 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %27 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dma_free_coherent(i32 %19, i32 %22, i32* %25, i32 %28)
  %30 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %31 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @fm10k_clean_tx_ring(%struct.fm10k_ring*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
