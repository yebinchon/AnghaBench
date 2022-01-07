; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_dma_pkt_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_dma_pkt_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.hl_cs_parser = type { i32, i64 }
%struct.packet_lin_dma = type { i32, i32, i32, i32 }

@GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK = common dso_local global i32 0, align 4
@GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT = common dso_local global i32 0, align 4
@GOYA_PKT_LIN_DMA_CTL_MEMSET_MASK = common dso_local global i32 0, align 4
@GOYA_PKT_LIN_DMA_CTL_MEMSET_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DMA direction is HOST --> DRAM\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"DMA direction is DRAM --> HOST\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"DMA direction is HOST --> SRAM\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"DMA direction is SRAM --> HOST\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"DMA direction is undefined\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"SRAM address 0x%llx + 0x%x is invalid\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"DRAM address 0x%llx + 0x%x is invalid\0A\00", align 1
@GOYA_QUEUE_ID_DMA_1 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"Can't DMA from host on queue other then 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_lin_dma*)* @goya_validate_dma_pkt_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_validate_dma_pkt_host(%struct.hl_device* %0, %struct.hl_cs_parser* %1, %struct.packet_lin_dma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_cs_parser*, align 8
  %7 = alloca %struct.packet_lin_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %6, align 8
  store %struct.packet_lin_dma* %2, %struct.packet_lin_dma** %7, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %18 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* @GOYA_PKT_LIN_DMA_CTL_MEMSET_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @GOYA_PKT_LIN_DMA_CTL_MEMSET_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %11, align 4
  switch i32 %31, label %96 [
    i32 130, label %32
    i32 131, label %50
    i32 129, label %64
    i32 128, label %82
  ]

32:                                               ; preds = %3
  %33 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %34 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %38 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %39 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le64_to_cpu(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %43 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le64_to_cpu(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  store i32 1, i32* %13, align 4
  br label %49

49:                                               ; preds = %48, %32
  br label %103

50:                                               ; preds = %3
  %51 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %52 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %55, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %56 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %57 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le64_to_cpu(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %61 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le64_to_cpu(i32 %62)
  store i32 %63, i32* %8, align 4
  br label %103

64:                                               ; preds = %3
  %65 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %66 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %69, i32* %10, align 4
  %70 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %71 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le64_to_cpu(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %75 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le64_to_cpu(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  store i32 1, i32* %13, align 4
  br label %81

81:                                               ; preds = %80, %64
  br label %103

82:                                               ; preds = %3
  %83 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %84 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %87, i32* %10, align 4
  %88 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %89 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le64_to_cpu(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %93 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le64_to_cpu(i32 %94)
  store i32 %95, i32* %8, align 4
  br label %103

96:                                               ; preds = %3
  %97 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %98 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* @EFAULT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %198

103:                                              ; preds = %82, %81, %50, %49
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %109 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le32_to_cpu(i32 %110)
  %112 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %113 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %117 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @hl_mem_area_inside_range(i32 %107, i32 %111, i32 %115, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %106
  %123 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %124 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %128 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 %129)
  %131 = load i32, i32* @EFAULT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %198

133:                                              ; preds = %106
  br label %162

134:                                              ; preds = %103
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %137 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @le32_to_cpu(i32 %138)
  %140 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %141 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %145 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @hl_mem_area_inside_range(i32 %135, i32 %139, i32 %143, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %134
  %151 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %152 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %156 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i8*, ...) @dev_err(i32 %153, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %154, i32 %157)
  %159 = load i32, i32* @EFAULT, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %198

161:                                              ; preds = %134
  br label %162

162:                                              ; preds = %161, %133
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %6, align 8
  %167 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = add i64 %169, 16
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 8
  br label %196

172:                                              ; preds = %162
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @DMA_TO_DEVICE, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %189

176:                                              ; preds = %172
  %177 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %6, align 8
  %178 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @GOYA_QUEUE_ID_DMA_1, align 8
  %181 = icmp sgt i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %184 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i32, i8*, ...) @dev_err(i32 %185, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %187 = load i32, i32* @EFAULT, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %4, align 4
  br label %198

189:                                              ; preds = %176, %172
  %190 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %191 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %6, align 8
  %192 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %7, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @goya_pin_memory_before_cs(%struct.hl_device* %190, %struct.hl_cs_parser* %191, %struct.packet_lin_dma* %192, i32 %193, i32 %194)
  store i32 %195, i32* %16, align 4
  br label %196

196:                                              ; preds = %189, %165
  %197 = load i32, i32* %16, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %196, %182, %150, %122, %96
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @hl_mem_area_inside_range(i32, i32, i32, i32) #1

declare dso_local i32 @goya_pin_memory_before_cs(%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_lin_dma*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
