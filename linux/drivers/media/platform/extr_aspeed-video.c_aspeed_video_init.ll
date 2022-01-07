; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i8*, i8*, i32, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Unable to find IRQ\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@aspeed_video_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to request IRQ %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"eclk\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unable to get ECLK\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vclk\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Unable to get VCLK\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed to set DMA mask\0A\00", align 1
@VE_JPEG_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Failed to allocate DMA for JPEG header\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_video*)* @aspeed_video_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_video_init(%struct.aspeed_video* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aspeed_video*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.aspeed_video* %0, %struct.aspeed_video** %3, align 8
  %7 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %8 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %7, i32 0, i32 4
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @irq_of_parse_and_map(i32 %12, i32 0)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %132

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @aspeed_video_irq, align 4
  %25 = load i32, i32* @IRQF_ONESHOT, align 4
  %26 = load i32, i32* @DEVICE_NAME, align 4
  %27 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %28 = call i32 @devm_request_threaded_irq(%struct.device* %22, i32 %23, i32* null, i32 %24, i32 %25, i32 %26, %struct.aspeed_video* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %132

36:                                               ; preds = %21
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i8* @devm_clk_get(%struct.device* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %40 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %42 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %50 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %2, align 4
  br label %132

53:                                               ; preds = %36
  %54 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %55 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @clk_prepare(i8* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %132

62:                                               ; preds = %53
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i8* @devm_clk_get(%struct.device* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %66 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %68 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %76 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  store i32 %78, i32* %5, align 4
  br label %126

79:                                               ; preds = %62
  %80 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %81 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @clk_prepare(i8* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %126

87:                                               ; preds = %79
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = call i32 @of_reserved_mem_device_init(%struct.device* %88)
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = call i32 @DMA_BIT_MASK(i32 32)
  %92 = call i32 @dma_set_mask_and_coherent(%struct.device* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %119

98:                                               ; preds = %87
  %99 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %100 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %101 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %100, i32 0, i32 3
  %102 = load i32, i32* @VE_JPEG_HEADER_SIZE, align 4
  %103 = call i32 @aspeed_video_alloc_buf(%struct.aspeed_video* %99, %struct.TYPE_2__* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %98
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %119

110:                                              ; preds = %98
  %111 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %112 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %116 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @aspeed_video_init_jpeg_table(i32 %114, i32 %117)
  store i32 0, i32* %2, align 4
  br label %132

119:                                              ; preds = %105, %95
  %120 = load %struct.device*, %struct.device** %6, align 8
  %121 = call i32 @of_reserved_mem_device_release(%struct.device* %120)
  %122 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %123 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @clk_unprepare(i8* %124)
  br label %126

126:                                              ; preds = %119, %86, %72
  %127 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %128 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @clk_unprepare(i8* %129)
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %126, %110, %60, %46, %31, %16
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.aspeed_video*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare(i8*) #1

declare dso_local i32 @of_reserved_mem_device_init(%struct.device*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @aspeed_video_alloc_buf(%struct.aspeed_video*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @aspeed_video_init_jpeg_table(i32, i32) #1

declare dso_local i32 @of_reserved_mem_device_release(%struct.device*) #1

declare dso_local i32 @clk_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
