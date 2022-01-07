; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_memset_device_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_memset_device_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32 }
%struct.packet_lin_dma = type { i8*, i8*, i8*, i8* }
%struct.hl_cs_job = type { i32, i32, %struct.hl_cb*, %struct.hl_cb*, i32, i64 }
%struct.hl_cb = type { i32, i32, i64 }

@SZ_2G = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PACKET_LIN_DMA = common dso_local global i32 0, align 4
@GOYA_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@GOYA_PKT_LIN_DMA_CTL_MEMSET_SHIFT = common dso_local global i32 0, align 4
@GOYA_PKT_LIN_DMA_CTL_WO_SHIFT = common dso_local global i32 0, align 4
@GOYA_PKT_CTL_RB_SHIFT = common dso_local global i32 0, align 4
@GOYA_PKT_CTL_MB_SHIFT = common dso_local global i32 0, align 4
@DMA_HOST_TO_DRAM = common dso_local global i32 0, align 4
@DMA_HOST_TO_SRAM = common dso_local global i32 0, align 4
@GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate a new job\0A\00", align 1
@GOYA_QUEUE_ID_DMA_0 = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i32, i32, i32, i32)* @goya_memset_device_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_memset_device_memory(%struct.hl_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hl_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.packet_lin_dma*, align 8
  %13 = alloca %struct.hl_cs_job*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hl_cb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @SZ_2G, align 4
  %21 = call i32 @DIV_ROUND_UP_ULL(i32 %19, i32 %20)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 32
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %28 = load i32, i32* %14, align 4
  %29 = call %struct.hl_cb* @hl_cb_kernel_create(%struct.hl_device* %27, i32 %28)
  store %struct.hl_cb* %29, %struct.hl_cb** %16, align 8
  %30 = load %struct.hl_cb*, %struct.hl_cb** %16, align 8
  %31 = icmp ne %struct.hl_cb* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %179

35:                                               ; preds = %5
  %36 = load %struct.hl_cb*, %struct.hl_cb** %16, align 8
  %37 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.packet_lin_dma*
  store %struct.packet_lin_dma* %39, %struct.packet_lin_dma** %12, align 8
  br label %40

40:                                               ; preds = %103, %35
  %41 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %12, align 8
  %42 = call i32 @memset(%struct.packet_lin_dma* %41, i32 0, i32 32)
  %43 = load i32, i32* @PACKET_LIN_DMA, align 4
  %44 = load i32, i32* @GOYA_PKT_CTL_OPCODE_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @GOYA_PKT_LIN_DMA_CTL_MEMSET_SHIFT, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = load i32, i32* @GOYA_PKT_LIN_DMA_CTL_WO_SHIFT, align 4
  %50 = shl i32 1, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @GOYA_PKT_CTL_RB_SHIFT, align 4
  %53 = shl i32 1, %52
  %54 = or i32 %51, %53
  %55 = load i32, i32* @GOYA_PKT_CTL_MB_SHIFT, align 4
  %56 = shl i32 1, %55
  %57 = or i32 %54, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = load i32, i32* @DMA_HOST_TO_DRAM, align 4
  br label %64

62:                                               ; preds = %40
  %63 = load i32, i32* @DMA_HOST_TO_SRAM, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load i32, i32* @GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %15, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %12, align 8
  %73 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i8* @cpu_to_le64(i32 %74)
  %76 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %12, align 8
  %77 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i8* @cpu_to_le64(i32 %78)
  %80 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %12, align 8
  %81 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %18, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %89

84:                                               ; preds = %64
  %85 = load i32, i32* @SZ_2G, align 4
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %12, align 8
  %88 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  br label %94

89:                                               ; preds = %64
  %90 = load i32, i32* %9, align 4
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %12, align 8
  %93 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* @SZ_2G, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* @SZ_2G, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %12, align 8
  %102 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %101, i32 1
  store %struct.packet_lin_dma* %102, %struct.packet_lin_dma** %12, align 8
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %40, label %107

107:                                              ; preds = %103
  %108 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %109 = call %struct.hl_cs_job* @hl_cs_allocate_job(%struct.hl_device* %108, i32 1)
  store %struct.hl_cs_job* %109, %struct.hl_cs_job** %13, align 8
  %110 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %111 = icmp ne %struct.hl_cs_job* %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %107
  %113 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %114 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %17, align 4
  br label %166

119:                                              ; preds = %107
  %120 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %121 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %120, i32 0, i32 5
  store i64 0, i64* %121, align 8
  %122 = load %struct.hl_cb*, %struct.hl_cb** %16, align 8
  %123 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %124 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %123, i32 0, i32 3
  store %struct.hl_cb* %122, %struct.hl_cb** %124, align 8
  %125 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %126 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %125, i32 0, i32 3
  %127 = load %struct.hl_cb*, %struct.hl_cb** %126, align 8
  %128 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %133 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @GOYA_QUEUE_ID_DMA_0, align 4
  %135 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %136 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %138 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %137, i32 0, i32 3
  %139 = load %struct.hl_cb*, %struct.hl_cb** %138, align 8
  %140 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %141 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %140, i32 0, i32 2
  store %struct.hl_cb* %139, %struct.hl_cb** %141, align 8
  %142 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %143 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %146 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %148 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %149 = call i32 @hl_debugfs_add_job(%struct.hl_device* %147, %struct.hl_cs_job* %148)
  %150 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %151 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %152 = call i32 @goya_send_job_on_qman0(%struct.hl_device* %150, %struct.hl_cs_job* %151)
  store i32 %152, i32* %17, align 4
  %153 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %154 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %153, i32 0, i32 2
  %155 = load %struct.hl_cb*, %struct.hl_cb** %154, align 8
  %156 = call i32 @hl_cb_put(%struct.hl_cb* %155)
  %157 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %158 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %159 = call i32 @hl_debugfs_remove_job(%struct.hl_device* %157, %struct.hl_cs_job* %158)
  %160 = load %struct.hl_cs_job*, %struct.hl_cs_job** %13, align 8
  %161 = call i32 @kfree(%struct.hl_cs_job* %160)
  %162 = load %struct.hl_cb*, %struct.hl_cb** %16, align 8
  %163 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %119, %112
  %167 = load %struct.hl_cb*, %struct.hl_cb** %16, align 8
  %168 = call i32 @hl_cb_put(%struct.hl_cb* %167)
  %169 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %170 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %171 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %170, i32 0, i32 0
  %172 = load %struct.hl_cb*, %struct.hl_cb** %16, align 8
  %173 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @PAGE_SHIFT, align 4
  %176 = shl i32 %174, %175
  %177 = call i32 @hl_cb_destroy(%struct.hl_device* %169, i32* %171, i32 %176)
  %178 = load i32, i32* %17, align 4
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %166, %32
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local %struct.hl_cb* @hl_cb_kernel_create(%struct.hl_device*, i32) #1

declare dso_local i32 @memset(%struct.packet_lin_dma*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local %struct.hl_cs_job* @hl_cs_allocate_job(%struct.hl_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hl_debugfs_add_job(%struct.hl_device*, %struct.hl_cs_job*) #1

declare dso_local i32 @goya_send_job_on_qman0(%struct.hl_device*, %struct.hl_cs_job*) #1

declare dso_local i32 @hl_cb_put(%struct.hl_cb*) #1

declare dso_local i32 @hl_debugfs_remove_job(%struct.hl_device*, %struct.hl_cs_job*) #1

declare dso_local i32 @kfree(%struct.hl_cs_job*) #1

declare dso_local i32 @hl_cb_destroy(%struct.hl_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
