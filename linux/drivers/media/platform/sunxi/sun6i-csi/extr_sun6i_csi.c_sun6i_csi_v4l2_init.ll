; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_v4l2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_v4l2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi = type { %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_12__* }

@.str = private unnamed_addr constant [31 x i8] c"Allwinner Video Capture Device\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"V4L2 controls handler init failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"V4L2 device registration failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sun6i-csi\00", align 1
@sun6i_csi_fwnode_parse = common dso_local global i32 0, align 4
@sun6i_csi_async_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"notifier registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_csi*)* @sun6i_csi_v4l2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_csi_v4l2_init(%struct.sun6i_csi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sun6i_csi*, align 8
  %4 = alloca i32, align 4
  store %struct.sun6i_csi* %0, %struct.sun6i_csi** %3, align 8
  %5 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %6 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %9 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %12 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @strscpy(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %17 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %20 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %19, i32 0, i32 0
  %21 = call i32 @media_device_init(%struct.TYPE_12__* %20)
  %22 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %23 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %22, i32 0, i32 1
  %24 = call i32 @v4l2_async_notifier_init(%struct.TYPE_11__* %23)
  %25 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %26 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %25, i32 0, i32 2
  %27 = call i32 @v4l2_ctrl_handler_init(i32* %26, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %32 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %109

36:                                               ; preds = %1
  %37 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %38 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %37, i32 0, i32 0
  %39 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %40 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %41, align 8
  %42 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %43 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %42, i32 0, i32 2
  %44 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %45 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %48 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %51 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %50, i32 0, i32 3
  %52 = call i32 @v4l2_device_register(i32 %49, %struct.TYPE_10__* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %36
  %56 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %57 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %105

61:                                               ; preds = %36
  %62 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %63 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %62, i32 0, i32 4
  %64 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %65 = call i32 @sun6i_video_init(i32* %63, %struct.sun6i_csi* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %101

69:                                               ; preds = %61
  %70 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %71 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %74 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %73, i32 0, i32 1
  %75 = load i32, i32* @sun6i_csi_fwnode_parse, align 4
  %76 = call i32 @v4l2_async_notifier_parse_fwnode_endpoints(i32 %72, %struct.TYPE_11__* %74, i32 4, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %97

80:                                               ; preds = %69
  %81 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %82 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32* @sun6i_csi_async_ops, i32** %83, align 8
  %84 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %85 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %84, i32 0, i32 3
  %86 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %87 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %86, i32 0, i32 1
  %88 = call i32 @v4l2_async_notifier_register(%struct.TYPE_10__* %85, %struct.TYPE_11__* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %93 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %97

96:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %117

97:                                               ; preds = %91, %79
  %98 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %99 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %98, i32 0, i32 4
  %100 = call i32 @sun6i_video_cleanup(i32* %99)
  br label %101

101:                                              ; preds = %97, %68
  %102 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %103 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %102, i32 0, i32 3
  %104 = call i32 @v4l2_device_unregister(%struct.TYPE_10__* %103)
  br label %105

105:                                              ; preds = %101, %55
  %106 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %107 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %106, i32 0, i32 2
  %108 = call i32 @v4l2_ctrl_handler_free(i32* %107)
  br label %109

109:                                              ; preds = %105, %30
  %110 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %111 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %110, i32 0, i32 1
  %112 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_11__* %111)
  %113 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %114 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %113, i32 0, i32 0
  %115 = call i32 @media_device_cleanup(%struct.TYPE_12__* %114)
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %109, %96
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @media_device_init(%struct.TYPE_12__*) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @v4l2_device_register(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @sun6i_video_init(i32*, %struct.sun6i_csi*, i8*) #1

declare dso_local i32 @v4l2_async_notifier_parse_fwnode_endpoints(i32, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @v4l2_async_notifier_register(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @sun6i_video_cleanup(i32*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_11__*) #1

declare dso_local i32 @media_device_cleanup(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
