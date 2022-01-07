; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_deinit_p2p_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_deinit_p2p_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { %struct.scif_hw_dev* }
%struct.scif_hw_dev = type { i32 }
%struct.scif_p2p_info = type { i32*, i32* }

@SCIF_PPI_MMIO = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@SCIF_PPI_APER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scif_dev*, %struct.scif_p2p_info*)* @scif_deinit_p2p_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_deinit_p2p_info(%struct.scif_dev* %0, %struct.scif_p2p_info* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scif_p2p_info*, align 8
  %5 = alloca %struct.scif_hw_dev*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scif_p2p_info* %1, %struct.scif_p2p_info** %4, align 8
  %6 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %7 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %6, i32 0, i32 0
  %8 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %7, align 8
  store %struct.scif_hw_dev* %8, %struct.scif_hw_dev** %5, align 8
  %9 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %5, align 8
  %10 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %9, i32 0, i32 0
  %11 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %4, align 8
  %12 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %4, align 8
  %18 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %24 = call i32 @dma_unmap_sg(i32* %10, i32 %16, i32 %22, i32 %23)
  %25 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %5, align 8
  %26 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %25, i32 0, i32 0
  %27 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %4, align 8
  %28 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @SCIF_PPI_APER, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %4, align 8
  %34 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @SCIF_PPI_APER, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %40 = call i32 @dma_unmap_sg(i32* %26, i32 %32, i32 %38, i32 %39)
  %41 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %4, align 8
  %42 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @scif_p2p_freesg(i32 %46)
  %48 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %4, align 8
  %49 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @SCIF_PPI_APER, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @scif_p2p_freesg(i32 %53)
  %55 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %4, align 8
  %56 = call i32 @kfree(%struct.scif_p2p_info* %55)
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @scif_p2p_freesg(i32) #1

declare dso_local i32 @kfree(%struct.scif_p2p_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
