; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_free_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_free_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_ring*)* @hnae_free_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hnae_free_desc(%struct.hnae_ring* %0) #0 {
  %2 = alloca %struct.hnae_ring*, align 8
  store %struct.hnae_ring* %0, %struct.hnae_ring** %2, align 8
  %3 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %4 = call i32 @ring_to_dev(%struct.hnae_ring* %3)
  %5 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %6 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %9 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %15 = call i32 @ring_to_dma_dir(%struct.hnae_ring* %14)
  %16 = call i32 @dma_unmap_single(i32 %4, i64 %7, i32 %13, i32 %15)
  %17 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %18 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %20 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %24 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @ring_to_dev(%struct.hnae_ring*) #1

declare dso_local i32 @ring_to_dma_dir(%struct.hnae_ring*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
