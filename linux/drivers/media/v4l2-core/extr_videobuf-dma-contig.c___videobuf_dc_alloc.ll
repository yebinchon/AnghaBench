; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-contig.c___videobuf_dc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-contig.c___videobuf_dc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.videobuf_dma_contig_memory = type { i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"memory alloc size %ld failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"dma mapped data is at %p (%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.videobuf_dma_contig_memory*, i64, i32)* @__videobuf_dc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__videobuf_dc_alloc(%struct.device* %0, %struct.videobuf_dma_contig_memory* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.videobuf_dma_contig_memory*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.videobuf_dma_contig_memory* %1, %struct.videobuf_dma_contig_memory** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %7, align 8
  %12 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %7, align 8
  %15 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %7, align 8
  %18 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %17, i32 0, i32 2
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @dma_alloc_coherent(%struct.device* %13, i64 %16, i32* %18, i32 %19)
  %21 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %7, align 8
  %22 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %7, align 8
  %24 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %4
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %7, align 8
  %30 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %44

35:                                               ; preds = %4
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %7, align 8
  %38 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %7, align 8
  %41 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dev_dbg(%struct.device* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39, i64 %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %35, %27
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
