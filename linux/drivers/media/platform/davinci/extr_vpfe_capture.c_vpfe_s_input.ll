; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (i32*)* }
%struct.TYPE_9__ = type { i32 }
%struct.file = type { i32 }
%struct.vpfe_device = type { i32, i64, i32, %struct.TYPE_10__, %struct.vpfe_subdev_info*, %struct.v4l2_subdev**, %struct.TYPE_7__*, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.vpfe_subdev_info = type { i32, i64, %struct.vpfe_route* }
%struct.vpfe_route = type { i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.TYPE_7__ = type { %struct.vpfe_subdev_info* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vpfe_s_input\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Streaming is on\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid input index\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"vpfe_doioctl:error in setting input in decoder\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ccdc_dev = common dso_local global %struct.TYPE_11__* null, align 8
@vpfe_standards = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vpfe_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.vpfe_subdev_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vpfe_route*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call %struct.vpfe_device* @video_drvdata(%struct.file* %17)
  store %struct.vpfe_device* %18, %struct.vpfe_device** %8, align 8
  %19 = load i32, i32* @debug, align 4
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 3
  %22 = call i32 @v4l2_dbg(i32 1, i32 %19, %struct.TYPE_10__* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %24 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock_interruptible(i32* %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %4, align 4
  br label %151

30:                                               ; preds = %3
  %31 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %32 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %37 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %36, i32 0, i32 3
  %38 = call i32 @v4l2_err(%struct.TYPE_10__* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %16, align 4
  br label %146

41:                                               ; preds = %30
  %42 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @vpfe_get_subdev_input_index(%struct.vpfe_device* %42, i32* %11, i32* %12, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %49 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %48, i32 0, i32 3
  %50 = call i32 @v4l2_err(%struct.TYPE_10__* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %146

51:                                               ; preds = %41
  %52 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %53 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %52, i32 0, i32 6
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %56, i64 %58
  store %struct.vpfe_subdev_info* %59, %struct.vpfe_subdev_info** %10, align 8
  %60 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %61 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %60, i32 0, i32 5
  %62 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %62, i64 %64
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %65, align 8
  store %struct.v4l2_subdev* %66, %struct.v4l2_subdev** %9, align 8
  %67 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %10, align 8
  %68 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %67, i32 0, i32 2
  %69 = load %struct.vpfe_route*, %struct.vpfe_route** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.vpfe_route, %struct.vpfe_route* %69, i64 %71
  store %struct.vpfe_route* %72, %struct.vpfe_route** %13, align 8
  %73 = load %struct.vpfe_route*, %struct.vpfe_route** %13, align 8
  %74 = icmp ne %struct.vpfe_route* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %51
  %76 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %10, align 8
  %77 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.vpfe_route*, %struct.vpfe_route** %13, align 8
  %82 = getelementptr inbounds %struct.vpfe_route, %struct.vpfe_route* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %14, align 8
  %84 = load %struct.vpfe_route*, %struct.vpfe_route** %13, align 8
  %85 = getelementptr inbounds %struct.vpfe_route, %struct.vpfe_route* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %15, align 8
  br label %88

87:                                               ; preds = %75, %51
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %88

88:                                               ; preds = %87, %80
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %90 = icmp ne %struct.v4l2_subdev* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %93 = load i32, i32* @video, align 4
  %94 = load i32, i32* @s_routing, align 4
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %15, align 8
  %97 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %92, i32 %93, i32 %94, i64 %95, i64 %96, i32 0)
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %91, %88
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %103 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %102, i32 0, i32 3
  %104 = call i32 @v4l2_err(%struct.TYPE_10__* %103, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %16, align 4
  br label %146

107:                                              ; preds = %98
  %108 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %10, align 8
  %109 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %110 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %109, i32 0, i32 4
  store %struct.vpfe_subdev_info* %108, %struct.vpfe_subdev_info** %110, align 8
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %112 = icmp ne %struct.v4l2_subdev* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %115 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %118 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %113, %107
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %123 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %125 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ccdc_dev, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32 (i32*)*, i32 (i32*)** %128, align 8
  %130 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %10, align 8
  %131 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %130, i32 0, i32 0
  %132 = call i32 %129(i32* %131)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %120
  br label %146

136:                                              ; preds = %120
  %137 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vpfe_standards, align 8
  %139 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %140 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @vpfe_config_image_format(%struct.vpfe_device* %137, i32 %144)
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %136, %135, %101, %47, %35
  %147 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %148 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %147, i32 0, i32 2
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load i32, i32* %16, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %146, %28
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @vpfe_get_subdev_input_index(%struct.vpfe_device*, i32*, i32*, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @vpfe_config_image_format(%struct.vpfe_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
