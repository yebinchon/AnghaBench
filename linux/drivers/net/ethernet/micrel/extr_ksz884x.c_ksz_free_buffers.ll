; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_ksz_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_ksz_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { i32 }
%struct.ksz_desc_info = type { i32, %struct.ksz_desc* }
%struct.ksz_desc = type { i32 }
%struct.ksz_dma_buf = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_info*, %struct.ksz_desc_info*, i32)* @ksz_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz_free_buffers(%struct.dev_info* %0, %struct.ksz_desc_info* %1, i32 %2) #0 {
  %4 = alloca %struct.dev_info*, align 8
  %5 = alloca %struct.ksz_desc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ksz_dma_buf*, align 8
  %9 = alloca %struct.ksz_desc*, align 8
  store %struct.dev_info* %0, %struct.dev_info** %4, align 8
  store %struct.ksz_desc_info* %1, %struct.ksz_desc_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %5, align 8
  %11 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %10, i32 0, i32 1
  %12 = load %struct.ksz_desc*, %struct.ksz_desc** %11, align 8
  store %struct.ksz_desc* %12, %struct.ksz_desc** %9, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %34, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %5, align 8
  %16 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %21 = call %struct.ksz_dma_buf* @DMA_BUFFER(%struct.ksz_desc* %20)
  store %struct.ksz_dma_buf* %21, %struct.ksz_dma_buf** %8, align 8
  %22 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %8, align 8
  %23 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %28 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @free_dma_buf(%struct.dev_info* %27, %struct.ksz_dma_buf* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %33 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %32, i32 1
  store %struct.ksz_desc* %33, %struct.ksz_desc** %9, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %13

37:                                               ; preds = %13
  ret void
}

declare dso_local %struct.ksz_dma_buf* @DMA_BUFFER(%struct.ksz_desc*) #1

declare dso_local i32 @free_dma_buf(%struct.dev_info*, %struct.ksz_dma_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
