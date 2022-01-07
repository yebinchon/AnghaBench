; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_free_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_free_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { i32 }
%struct.ksz_dma_buf = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_info*, %struct.ksz_dma_buf*, i32)* @free_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dma_buf(%struct.dev_info* %0, %struct.ksz_dma_buf* %1, i32 %2) #0 {
  %4 = alloca %struct.dev_info*, align 8
  %5 = alloca %struct.ksz_dma_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.dev_info* %0, %struct.dev_info** %4, align 8
  store %struct.ksz_dma_buf* %1, %struct.ksz_dma_buf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %8 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %11 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %14 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @pci_unmap_single(i32 %9, i64 %12, i32 %15, i32 %16)
  %18 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %19 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @dev_kfree_skb(i32* %20)
  %22 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %23 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %25 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
