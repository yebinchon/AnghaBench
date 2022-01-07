; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_create_log_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_create_log_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fw_tracer = type { %struct.TYPE_4__, %struct.mlx5_core_dev* }
%struct.TYPE_4__ = type { i32, i8*, i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@TRACE_BUFFER_SIZE_BYTE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"FWTracer: Failed to allocate pages, %d\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"FWTracer: Unable to map DMA: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fw_tracer*)* @mlx5_fw_tracer_create_log_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fw_tracer_create_log_buf(%struct.mlx5_fw_tracer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_fw_tracer*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_fw_tracer* %0, %struct.mlx5_fw_tracer** %3, align 8
  %10 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %10, i32 0, i32 1
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %4, align 8
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load i32, i32* @TRACE_BUFFER_SIZE_BYTE, align 4
  %18 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @__GFP_ZERO, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @get_order(i32 %28)
  %30 = call i64 @__get_free_pages(i32 %24, i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %2, align 4
  br label %84

41:                                               ; preds = %1
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %49 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %53 = call i32 @dma_map_single(%struct.device* %46, i8* %47, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dma_mapping_error(%struct.device* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %41
  %59 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dma_mapping_error(%struct.device* %60, i32 %61)
  %63 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %71

66:                                               ; preds = %41
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %69 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  store i32 0, i32* %2, align 4
  br label %84

71:                                               ; preds = %58
  %72 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %73 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %78 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @get_order(i32 %80)
  %82 = call i32 @free_pages(i64 %76, i32 %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %71, %66, %34
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
