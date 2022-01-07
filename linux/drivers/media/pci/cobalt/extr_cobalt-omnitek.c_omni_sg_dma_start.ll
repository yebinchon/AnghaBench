; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-omnitek.c_omni_sg_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-omnitek.c_omni_sg_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt_stream = type { i32, %struct.cobalt* }
%struct.cobalt = type { i32 }
%struct.sg_dma_desc_info = type { i64 }

@NEXT_ADRS_MSK = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@SCATTER_GATHER_MODE = common dso_local global i32 0, align 4
@START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omni_sg_dma_start(%struct.cobalt_stream* %0, %struct.sg_dma_desc_info* %1) #0 {
  %3 = alloca %struct.cobalt_stream*, align 8
  %4 = alloca %struct.sg_dma_desc_info*, align 8
  %5 = alloca %struct.cobalt*, align 8
  store %struct.cobalt_stream* %0, %struct.cobalt_stream** %3, align 8
  store %struct.sg_dma_desc_info* %1, %struct.sg_dma_desc_info** %4, align 8
  %6 = load %struct.cobalt_stream*, %struct.cobalt_stream** %3, align 8
  %7 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %6, i32 0, i32 1
  %8 = load %struct.cobalt*, %struct.cobalt** %7, align 8
  store %struct.cobalt* %8, %struct.cobalt** %5, align 8
  %9 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %4, align 8
  %10 = getelementptr inbounds %struct.sg_dma_desc_info, %struct.sg_dma_desc_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = ashr i32 %12, 32
  %14 = load %struct.cobalt_stream*, %struct.cobalt_stream** %3, align 8
  %15 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @DESCRIPTOR(i32 %16)
  %18 = add nsw i64 %17, 4
  %19 = call i32 @iowrite32(i32 %13, i64 %18)
  %20 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %4, align 8
  %21 = getelementptr inbounds %struct.sg_dma_desc_info, %struct.sg_dma_desc_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @NEXT_ADRS_MSK, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.cobalt_stream*, %struct.cobalt_stream** %3, align 8
  %27 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @DESCRIPTOR(i32 %28)
  %30 = call i32 @iowrite32(i32 %25, i64 %29)
  %31 = load i32, i32* @ENABLE, align 4
  %32 = load i32, i32* @SCATTER_GATHER_MODE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @START, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.cobalt_stream*, %struct.cobalt_stream** %3, align 8
  %37 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @CS_REG(i32 %38)
  %40 = call i32 @iowrite32(i32 %35, i64 %39)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @DESCRIPTOR(i32) #1

declare dso_local i64 @CS_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
