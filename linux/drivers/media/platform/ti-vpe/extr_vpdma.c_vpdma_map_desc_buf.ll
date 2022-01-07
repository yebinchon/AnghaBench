; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_map_desc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_map_desc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.vpdma_buf = type { i32, i32, i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to map buffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpdma_map_desc_buf(%struct.vpdma_data* %0, %struct.vpdma_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpdma_data*, align 8
  %5 = alloca %struct.vpdma_buf*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.vpdma_data* %0, %struct.vpdma_data** %4, align 8
  store %struct.vpdma_buf* %1, %struct.vpdma_buf** %5, align 8
  %7 = load %struct.vpdma_data*, %struct.vpdma_data** %4, align 8
  %8 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.vpdma_buf*, %struct.vpdma_buf** %5, align 8
  %12 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load %struct.vpdma_buf*, %struct.vpdma_buf** %5, align 8
  %17 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vpdma_buf*, %struct.vpdma_buf** %5, align 8
  %20 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %23 = call i32 @dma_map_single(%struct.device* %15, i32 %18, i32 %21, i32 %22)
  %24 = load %struct.vpdma_buf*, %struct.vpdma_buf** %5, align 8
  %25 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.vpdma_buf*, %struct.vpdma_buf** %5, align 8
  %28 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @dma_mapping_error(%struct.device* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load %struct.vpdma_buf*, %struct.vpdma_buf** %5, align 8
  %39 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
