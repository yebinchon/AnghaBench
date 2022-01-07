; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_dma_pkt_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_dma_pkt_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hl_cs_parser = type { i64, i32 }
%struct.packet_lin_dma = type { i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"DMA packet details:\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"source == 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"destination == 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"size == %u\0A\00", align 1
@GOYA_QUEUE_ID_DMA_1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Can't DMA from host on queue other then 1\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Got DMA with size 0, might reset the device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_lin_dma*)* @goya_validate_dma_pkt_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_validate_dma_pkt_mmu(%struct.hl_device* %0, %struct.hl_cs_parser* %1, %struct.packet_lin_dma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_cs_parser*, align 8
  %7 = alloca %struct.packet_lin_dma*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %6, align 8
  store %struct.packet_lin_dma* %2, %struct.packet_lin_dma** %7, align 8
  %8 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %9 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i32, i8*, ...) @dev_dbg(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %16 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @le64_to_cpu(i32 %17)
  %19 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %21 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %24 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le64_to_cpu(i32 %25)
  %27 = call i32 (i32, i8*, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %32 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @le32_to_cpu(i64 %33)
  %35 = call i32 (i32, i8*, ...) @dev_dbg(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %6, align 8
  %37 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GOYA_QUEUE_ID_DMA_1, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %3
  %42 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %43 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le64_to_cpu(i32 %44)
  %46 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %47 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @le32_to_cpu(i64 %48)
  %50 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %51 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %55 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @hl_mem_area_inside_range(i32 %45, i32 %49, i32 %53, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %41
  %61 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %62 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* @EFAULT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %86

67:                                               ; preds = %41, %3
  %68 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %69 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %74 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %86

79:                                               ; preds = %67
  %80 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %6, align 8
  %81 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 16
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 8
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %79, %72, %60
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i64 @hl_mem_area_inside_range(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
