; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.c_xvip_of_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.c_xvip_of_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_video_format = type { i32, i64, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"xlnx,video-format\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"xlnx,video-width\00", align 1
@XVIP_VF_MONO_SENSOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"xlnx,cfa-pattern\00", align 1
@xvip_video_formats = common dso_local global %struct.xvip_video_format* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xvip_video_format* @xvip_of_get_format(%struct.device_node* %0) #0 {
  %2 = alloca %struct.xvip_video_format*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xvip_video_format*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = call i32 (%struct.device_node*, i8*, ...) @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.xvip_video_format* @ERR_PTR(i32 %15)
  store %struct.xvip_video_format* %16, %struct.xvip_video_format** %2, align 8
  br label %76

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = call i32 (%struct.device_node*, i8*, ...) @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.xvip_video_format* @ERR_PTR(i32 %23)
  store %struct.xvip_video_format* %24, %struct.xvip_video_format** %2, align 8
  br label %76

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @XVIP_VF_MONO_SENSOR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.device_node*, %struct.device_node** %3, align 8
  %31 = call i32 @of_property_read_string(%struct.device_node* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %4)
  br label %32

32:                                               ; preds = %29, %25
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %69, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.xvip_video_format*, %struct.xvip_video_format** @xvip_video_formats, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.xvip_video_format* %35)
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = load %struct.xvip_video_format*, %struct.xvip_video_format** @xvip_video_formats, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.xvip_video_format, %struct.xvip_video_format* %39, i64 %41
  store %struct.xvip_video_format* %42, %struct.xvip_video_format** %9, align 8
  %43 = load %struct.xvip_video_format*, %struct.xvip_video_format** %9, align 8
  %44 = getelementptr inbounds %struct.xvip_video_format, %struct.xvip_video_format* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = load %struct.xvip_video_format*, %struct.xvip_video_format** %9, align 8
  %50 = getelementptr inbounds %struct.xvip_video_format, %struct.xvip_video_format* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %38
  br label %69

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @XVIP_VF_MONO_SENSOR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = load %struct.xvip_video_format*, %struct.xvip_video_format** %9, align 8
  %62 = getelementptr inbounds %struct.xvip_video_format, %struct.xvip_video_format* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @strcmp(i8* %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %69

67:                                               ; preds = %59, %55
  %68 = load %struct.xvip_video_format*, %struct.xvip_video_format** %9, align 8
  store %struct.xvip_video_format* %68, %struct.xvip_video_format** %2, align 8
  br label %76

69:                                               ; preds = %66, %54
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %33

72:                                               ; preds = %33
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.xvip_video_format* @ERR_PTR(i32 %74)
  store %struct.xvip_video_format* %75, %struct.xvip_video_format** %2, align 8
  br label %76

76:                                               ; preds = %72, %67, %22, %14
  %77 = load %struct.xvip_video_format*, %struct.xvip_video_format** %2, align 8
  ret %struct.xvip_video_format* %77
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, ...) #1

declare dso_local %struct.xvip_video_format* @ERR_PTR(i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @ARRAY_SIZE(%struct.xvip_video_format*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
