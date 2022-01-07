; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c___s5c73m3_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c___s5c73m3_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i64, i32, i64, i64 }
%struct.v4l2_subdev = type { i32 }

@S5C73M3_JPEG_FMT = common dso_local global i64 0, align 8
@COMM_IMG_OUTPUT_INTERLEAVED = common dso_local global i32 0, align 4
@COMM_IMG_OUTPUT_YUV = common dso_local global i32 0, align 4
@COMM_IMG_OUTPUT = common dso_local global i32 0, align 4
@COMM_SENSOR_STREAMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error setting frame rate(%d)\0A\00", align 1
@REG_STATUS_ISP_COMMAND_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*, %struct.v4l2_subdev*, i32)* @__s5c73m3_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5c73m3_s_stream(%struct.s5c73m3* %0, %struct.v4l2_subdev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5c73m3*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %3
  %13 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %14 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %12
  %18 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %19 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @S5C73M3_JPEG_FMT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @COMM_IMG_OUTPUT_INTERLEAVED, align 4
  store i32 %24, i32* %8, align 4
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @COMM_IMG_OUTPUT_YUV, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %29 = load i32, i32* @COMM_IMG_OUTPUT, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %28, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %36 = call i32 @s5c73m3_set_frame_size(%struct.s5c73m3* %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %89

42:                                               ; preds = %37
  %43 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %44 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %12, %3
  %46 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %47 = load i32, i32* @COMM_SENSOR_STREAMING, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %46, i32 %47, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %89

58:                                               ; preds = %45
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %65 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %89

70:                                               ; preds = %58
  %71 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %72 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %77 = call i32 @s5c73m3_set_frame_rate(%struct.s5c73m3* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @v4l2_err(%struct.v4l2_subdev* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %80, %75
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %87 = load i32, i32* @REG_STATUS_ISP_COMMAND_COMPLETED, align 4
  %88 = call i32 @s5c73m3_check_status(%struct.s5c73m3* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %68, %56, %40
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @s5c73m3_isp_command(%struct.s5c73m3*, i32, i32) #1

declare dso_local i32 @s5c73m3_set_frame_size(%struct.s5c73m3*) #1

declare dso_local i32 @s5c73m3_set_frame_rate(%struct.s5c73m3*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @s5c73m3_check_status(%struct.s5c73m3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
