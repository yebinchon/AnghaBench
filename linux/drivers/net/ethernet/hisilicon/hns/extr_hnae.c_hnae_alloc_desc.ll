; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_alloc_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_alloc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { i32, i32*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_ring*)* @hnae_alloc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hnae_alloc_desc(%struct.hnae_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.hnae_ring* %0, %struct.hnae_ring** %3, align 8
  %5 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %6 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kzalloc(i32 %11, i32 %12)
  %14 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %15 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %17 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %25 = call i32 @ring_to_dev(%struct.hnae_ring* %24)
  %26 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %27 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %31 = call i32 @ring_to_dma_dir(%struct.hnae_ring* %30)
  %32 = call i64 @dma_map_single(i32 %25, i32* %28, i32 %29, i32 %31)
  %33 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %34 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %36 = call i32 @ring_to_dev(%struct.hnae_ring* %35)
  %37 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %38 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @dma_mapping_error(i32 %36, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %23
  %43 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %44 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %46 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %50 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %42, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i32 @ring_to_dev(%struct.hnae_ring*) #1

declare dso_local i32 @ring_to_dma_dir(%struct.hnae_ring*) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
