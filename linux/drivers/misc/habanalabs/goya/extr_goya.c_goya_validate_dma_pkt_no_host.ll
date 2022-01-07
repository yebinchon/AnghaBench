; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_dma_pkt_no_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_dma_pkt_no_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.hl_cs_parser = type { i32 }
%struct.packet_lin_dma = type { i32, i32, i32, i32 }

@GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK = common dso_local global i32 0, align 4
@GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT = common dso_local global i32 0, align 4
@DMA_DRAM_TO_SRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DMA direction is DRAM --> SRAM\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"DMA direction is SRAM --> DRAM\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"SRAM address 0x%llx + 0x%x is invalid\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"DRAM address 0x%llx + 0x%x is invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_lin_dma*)* @goya_validate_dma_pkt_no_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_validate_dma_pkt_no_host(%struct.hl_device* %0, %struct.hl_cs_parser* %1, %struct.packet_lin_dma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_cs_parser*, align 8
  %7 = alloca %struct.packet_lin_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %6, align 8
  store %struct.packet_lin_dma* %2, %struct.packet_lin_dma** %7, align 8
  %12 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %13 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @DMA_DRAM_TO_SRAM, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %30 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le64_to_cpu(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %34 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le64_to_cpu(i32 %35)
  store i32 %36, i32* %8, align 4
  br label %50

37:                                               ; preds = %3
  %38 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %39 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %43 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le64_to_cpu(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %47 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le64_to_cpu(i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %37, %24
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %53 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %57 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %61 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hl_mem_area_inside_range(i32 %51, i32 %55, i32 %59, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %50
  %67 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %68 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %72 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load i32, i32* @EFAULT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %111

77:                                               ; preds = %50
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %80 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %84 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %88 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @hl_mem_area_inside_range(i32 %78, i32 %82, i32 %86, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %77
  %94 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %95 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %99 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load i32, i32* @EFAULT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %111

104:                                              ; preds = %77
  %105 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %6, align 8
  %106 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, 16
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %104, %93, %66
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @hl_mem_area_inside_range(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
