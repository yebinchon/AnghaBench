; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_adapter = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.pt3_board* }
%struct.pt3_board = type { i64* }

@OFST_DMA_CTL = common dso_local global i64 0, align 8
@OFST_DMA_DESC_L = common dso_local global i64 0, align 8
@OFST_DMA_DESC_H = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt3_start_dma(%struct.pt3_adapter* %0) #0 {
  %2 = alloca %struct.pt3_adapter*, align 8
  %3 = alloca %struct.pt3_board*, align 8
  %4 = alloca i64, align 8
  store %struct.pt3_adapter* %0, %struct.pt3_adapter** %2, align 8
  %5 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.pt3_board*, %struct.pt3_board** %7, align 8
  store %struct.pt3_board* %8, %struct.pt3_board** %3, align 8
  %9 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @get_dma_base(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %14 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @OFST_DMA_CTL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @iowrite32(i32 2, i64 %21)
  %23 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lower_32_bits(i32 %28)
  %30 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %31 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* @OFST_DMA_DESC_L, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @iowrite32(i32 %29, i64 %38)
  %40 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %48 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* @OFST_DMA_DESC_H, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @iowrite32(i32 %46, i64 %55)
  %57 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %58 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i64, i64* @OFST_DMA_CTL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @iowrite32(i32 1, i64 %65)
  ret i32 0
}

declare dso_local i64 @get_dma_base(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
