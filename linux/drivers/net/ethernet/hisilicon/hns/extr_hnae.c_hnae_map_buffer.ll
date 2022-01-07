; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_map_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_map_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { i32 }
%struct.hnae_desc_cb = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)* @hnae_map_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hnae_map_buffer(%struct.hnae_ring* %0, %struct.hnae_desc_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae_ring*, align 8
  %5 = alloca %struct.hnae_desc_cb*, align 8
  store %struct.hnae_ring* %0, %struct.hnae_ring** %4, align 8
  store %struct.hnae_desc_cb* %1, %struct.hnae_desc_cb** %5, align 8
  %6 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %7 = call i32 @ring_to_dev(%struct.hnae_ring* %6)
  %8 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %5, align 8
  %9 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %5, align 8
  %12 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %15 = call i32 @ring_to_dma_dir(%struct.hnae_ring* %14)
  %16 = call i32 @dma_map_page(i32 %7, i32 %10, i32 0, i32 %13, i32 %15)
  %17 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %5, align 8
  %18 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %20 = call i32 @ring_to_dev(%struct.hnae_ring* %19)
  %21 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %5, align 8
  %22 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @dma_mapping_error(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @dma_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ring_to_dev(%struct.hnae_ring*) #1

declare dso_local i32 @ring_to_dma_dir(%struct.hnae_ring*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
