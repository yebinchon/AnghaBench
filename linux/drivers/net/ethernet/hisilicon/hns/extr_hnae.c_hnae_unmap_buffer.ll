; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_unmap_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_unmap_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { i32 }
%struct.hnae_desc_cb = type { i64, i64, i32 }

@DESC_TYPE_SKB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_ring*, %struct.hnae_desc_cb*)* @hnae_unmap_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hnae_unmap_buffer(%struct.hnae_ring* %0, %struct.hnae_desc_cb* %1) #0 {
  %3 = alloca %struct.hnae_ring*, align 8
  %4 = alloca %struct.hnae_desc_cb*, align 8
  store %struct.hnae_ring* %0, %struct.hnae_ring** %3, align 8
  store %struct.hnae_desc_cb* %1, %struct.hnae_desc_cb** %4, align 8
  %5 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %4, align 8
  %6 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DESC_TYPE_SKB, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %12 = call i32 @ring_to_dev(%struct.hnae_ring* %11)
  %13 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %4, align 8
  %14 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %4, align 8
  %17 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %20 = call i32 @ring_to_dma_dir(%struct.hnae_ring* %19)
  %21 = call i32 @dma_unmap_single(i32 %12, i32 %15, i64 %18, i32 %20)
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %4, align 8
  %24 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %29 = call i32 @ring_to_dev(%struct.hnae_ring* %28)
  %30 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %4, align 8
  %31 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %4, align 8
  %34 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %37 = call i32 @ring_to_dma_dir(%struct.hnae_ring* %36)
  %38 = call i32 @dma_unmap_page(i32 %29, i32 %32, i64 %35, i32 %37)
  br label %39

39:                                               ; preds = %27, %22
  br label %40

40:                                               ; preds = %39, %10
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @ring_to_dev(%struct.hnae_ring*) #1

declare dso_local i32 @ring_to_dma_dir(%struct.hnae_ring*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
