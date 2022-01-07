; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_framesizes_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_framesizes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dcmi = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_frame_size = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Sensor supports %u frame sizes:\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%ux%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dcmi*)* @dcmi_framesizes_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_framesizes_init(%struct.stm32_dcmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_dcmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stm32_dcmi* %0, %struct.stm32_dcmi** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 3
  %17 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 4
  %23 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %23, i32* %22, align 4
  br label %24

24:                                               ; preds = %31, %1
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %26 = load i32, i32* @pad, align 4
  %27 = load i32, i32* @enum_frame_size, align 4
  %28 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %25, i32 %26, i32 %27, i32* null, %struct.v4l2_subdev_frame_size_enum* %6)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %24

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %120

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %44 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %46 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.TYPE_6__* @devm_kcalloc(i32 %47, i32 %48, i32 4, i32 %49)
  %51 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %52 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %51, i32 0, i32 2
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %52, align 8
  %53 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %54 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %41
  %58 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %59 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %120

64:                                               ; preds = %41
  %65 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %66 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %116, %64
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %73 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %119

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %80 = load i32, i32* @pad, align 4
  %81 = load i32, i32* @enum_frame_size, align 4
  %82 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %79, i32 %80, i32 %81, i32* null, %struct.v4l2_subdev_frame_size_enum* %6)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %120

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %91 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 %89, i32* %97, align 4
  %98 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %101 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %99, i32* %107, align 4
  %108 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %109 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %6, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %114)
  br label %116

116:                                              ; preds = %87
  %117 = load i32, i32* %8, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %70

119:                                              ; preds = %70
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %85, %57, %40
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_frame_size_enum*) #1

declare dso_local %struct.TYPE_6__* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
