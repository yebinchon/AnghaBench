; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_dma_pkt_no_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_dma_pkt_no_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_cs_parser = type { i32 }
%struct.packet_lin_dma = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"DMA packet details:\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"source == 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"destination == 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"size == %u\0A\00", align 1
@GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK = common dso_local global i32 0, align 4
@GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Got DMA with size 0, might reset the device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_DRAM_TO_SRAM = common dso_local global i32 0, align 4
@DMA_SRAM_TO_DRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_lin_dma*)* @goya_validate_dma_pkt_no_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_validate_dma_pkt_no_mmu(%struct.hl_device* %0, %struct.hl_cs_parser* %1, %struct.packet_lin_dma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_cs_parser*, align 8
  %7 = alloca %struct.packet_lin_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %6, align 8
  store %struct.packet_lin_dma* %2, %struct.packet_lin_dma** %7, align 8
  %11 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %19 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le64_to_cpu(i32 %20)
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %24 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %27 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @le64_to_cpu(i32 %28)
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %32 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %35 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @le32_to_cpu(i64 %36)
  %38 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %40 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @le32_to_cpu(i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %49 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %3
  %53 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %54 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %79

59:                                               ; preds = %3
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @DMA_DRAM_TO_SRAM, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @DMA_SRAM_TO_DRAM, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63, %59
  %68 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %69 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %6, align 8
  %70 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %71 = call i32 @goya_validate_dma_pkt_no_host(%struct.hl_device* %68, %struct.hl_cs_parser* %69, %struct.packet_lin_dma* %70)
  store i32 %71, i32* %10, align 4
  br label %77

72:                                               ; preds = %63
  %73 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %74 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %6, align 8
  %75 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %76 = call i32 @goya_validate_dma_pkt_host(%struct.hl_device* %73, %struct.hl_cs_parser* %74, %struct.packet_lin_dma* %75)
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %52
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @goya_validate_dma_pkt_no_host(%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_lin_dma*) #1

declare dso_local i32 @goya_validate_dma_pkt_host(%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_lin_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
