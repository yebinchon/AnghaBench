; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_dma_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r852_device = type { i64, i64, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@R852_DMA_IRQ_STA = common dso_local global i32 0, align 4
@R852_DMA_SETTINGS = common dso_local global i32 0, align 4
@R852_DMA_IRQ_ENABLE = common dso_local global i32 0, align 4
@R852_DMA_ADDR = common dso_local global i32 0, align 4
@R852_DMA_LEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r852_device*, i32)* @r852_dma_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_dma_done(%struct.r852_device* %0, i32 %1) #0 {
  %3 = alloca %struct.r852_device*, align 8
  %4 = alloca i32, align 4
  store %struct.r852_device* %0, %struct.r852_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %6 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %12 = load i32, i32* @R852_DMA_IRQ_STA, align 4
  %13 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %14 = load i32, i32* @R852_DMA_IRQ_STA, align 4
  %15 = call i32 @r852_read_reg_dword(%struct.r852_device* %13, i32 %14)
  %16 = call i32 @r852_write_reg_dword(%struct.r852_device* %11, i32 %12, i32 %15)
  %17 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %18 = load i32, i32* @R852_DMA_SETTINGS, align 4
  %19 = call i32 @r852_write_reg_dword(%struct.r852_device* %17, i32 %18, i32 0)
  %20 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %21 = load i32, i32* @R852_DMA_IRQ_ENABLE, align 4
  %22 = call i32 @r852_write_reg_dword(%struct.r852_device* %20, i32 %21, i32 0)
  %23 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %24 = load i32, i32* @R852_DMA_ADDR, align 4
  %25 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %26 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @cpu_to_le32(i64 %27)
  %29 = call i32 @r852_write_reg_dword(%struct.r852_device* %23, i32 %24, i32 %28)
  %30 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %31 = load i32, i32* @R852_DMA_ADDR, align 4
  %32 = call i32 @r852_read_reg_dword(%struct.r852_device* %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %35 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %37 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %39 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %2
  %43 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %44 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %47 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %42
  %51 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %52 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %51, i32 0, i32 5
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %56 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @R852_DMA_LEN, align 4
  %59 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %60 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %67

65:                                               ; preds = %50
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = call i32 @dma_unmap_single(i32* %54, i64 %57, i32 %58, i32 %68)
  br label %70

70:                                               ; preds = %67, %42, %2
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @r852_write_reg_dword(%struct.r852_device*, i32, i32) #1

declare dso_local i32 @r852_read_reg_dword(%struct.r852_device*, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
