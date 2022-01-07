; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vipp.c_xvip_graph_dma_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vipp.c_xvip_graph_dma_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_composite_device = type { i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.xvip_dma = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%pOF initialization failed\0A\00", align 1
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvip_composite_device*, %struct.device_node*)* @xvip_graph_dma_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvip_graph_dma_init_one(%struct.xvip_composite_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xvip_composite_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.xvip_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xvip_composite_device* %0, %struct.xvip_composite_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = call i32 @of_property_read_string(%struct.device_node* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %3, align 4
  br label %80

17:                                               ; preds = %2
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %22, i32* %7, align 4
  br label %33

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  store i32 %28, i32* %7, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %80

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = call i32 @of_property_read_u32(%struct.device_node* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %36 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %37 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.xvip_dma* @devm_kzalloc(i32 %38, i32 4, i32 %39)
  store %struct.xvip_dma* %40, %struct.xvip_dma** %6, align 8
  %41 = load %struct.xvip_dma*, %struct.xvip_dma** %6, align 8
  %42 = icmp eq %struct.xvip_dma* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %80

46:                                               ; preds = %33
  %47 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %48 = load %struct.xvip_dma*, %struct.xvip_dma** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @xvip_dma_init(%struct.xvip_composite_device* %47, %struct.xvip_dma* %48, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %56 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %80

61:                                               ; preds = %46
  %62 = load %struct.xvip_dma*, %struct.xvip_dma** %6, align 8
  %63 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %62, i32 0, i32 0
  %64 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %65 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %64, i32 0, i32 1
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  br label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %4, align 8
  %77 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %54, %43, %29, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.xvip_dma* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @xvip_dma_init(%struct.xvip_composite_device*, %struct.xvip_dma*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
