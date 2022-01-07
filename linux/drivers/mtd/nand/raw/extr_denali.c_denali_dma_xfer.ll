; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_dma_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_dma_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denali_controller = type { i32, i32, i64, i32 (%struct.denali_controller*, i32, i32, i32)* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to DMA-map buffer. Trying PIO.\0A\00", align 1
@INTR__DMA_CMD_COMP = common dso_local global i32 0, align 4
@INTR__PROGRAM_FAIL = common dso_local global i32 0, align 4
@DENALI_CAP_HW_ECC_FIXUP = common dso_local global i32 0, align 4
@INTR__ECC_UNCOR_ERR = common dso_local global i32 0, align 4
@INTR__ECC_ERR = common dso_local global i32 0, align 4
@DMA_ENABLE__FLAG = common dso_local global i32 0, align 4
@DMA_ENABLE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@INTR__ERASED_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.denali_controller*, i8*, i64, i32, i32)* @denali_dma_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_dma_xfer(%struct.denali_controller* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.denali_controller*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.denali_controller* %0, %struct.denali_controller** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %27 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @dma_map_single(i32 %28, i8* %29, i64 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %34 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @dma_mapping_error(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %24
  %40 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %41 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @denali_pio_xfer(%struct.denali_controller* %44, i8* %45, i64 %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %138

50:                                               ; preds = %24
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @INTR__DMA_CMD_COMP, align 4
  %55 = load i32, i32* @INTR__PROGRAM_FAIL, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %71

57:                                               ; preds = %50
  %58 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %59 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DENALI_CAP_HW_ECC_FIXUP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @INTR__DMA_CMD_COMP, align 4
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* @INTR__ECC_UNCOR_ERR, align 4
  store i32 %66, i32* %15, align 4
  br label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @INTR__DMA_CMD_COMP, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* @INTR__ECC_ERR, align 4
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %53
  %72 = load i32, i32* @DMA_ENABLE__FLAG, align 4
  %73 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %74 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DMA_ENABLE, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @iowrite32(i32 %72, i64 %77)
  %79 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %80 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DMA_ENABLE, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @ioread32(i64 %83)
  %85 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %86 = call i32 @denali_reset_irq(%struct.denali_controller* %85)
  %87 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %88 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %87, i32 0, i32 3
  %89 = load i32 (%struct.denali_controller*, i32, i32, i32)*, i32 (%struct.denali_controller*, i32, i32, i32)** %88, align 8
  %90 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 %89(%struct.denali_controller* %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @denali_wait_for_irq(%struct.denali_controller* %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @INTR__DMA_CMD_COMP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %71
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %17, align 4
  br label %114

105:                                              ; preds = %71
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* @EBADMSG, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %17, align 4
  br label %113

113:                                              ; preds = %110, %105
  br label %114

114:                                              ; preds = %113, %102
  %115 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %116 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DMA_ENABLE, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @iowrite32(i32 0, i64 %119)
  %121 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %122 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i64, i64* %9, align 8
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @dma_unmap_single(i32 %123, i32 %124, i64 %125, i32 %126)
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @INTR__ERASED_PAGE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %114
  %133 = load i8*, i8** %8, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @memset(i8* %133, i32 255, i64 %134)
  br label %136

136:                                              ; preds = %132, %114
  %137 = load i32, i32* %17, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %39
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @dma_map_single(i32, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @denali_pio_xfer(%struct.denali_controller*, i8*, i64, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @denali_reset_irq(%struct.denali_controller*) #1

declare dso_local i32 @denali_wait_for_irq(%struct.denali_controller*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
