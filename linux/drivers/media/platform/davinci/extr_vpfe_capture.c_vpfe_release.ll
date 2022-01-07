; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.file = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { i32, i64 }
%struct.vpfe_device = type { i32, i32, i64, i32, i32, i32, i64, i32, %struct.vpfe_subdev_info*, i64 }
%struct.vpfe_subdev_info = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vpfe_release\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"stream off failed in subdev\0A\00", align 1
@config_params = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ccdc_dev = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vpfe_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca %struct.vpfe_fh*, align 8
  %5 = alloca %struct.vpfe_subdev_info*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.vpfe_device* @video_drvdata(%struct.file* %7)
  store %struct.vpfe_device* %8, %struct.vpfe_device** %3, align 8
  %9 = load %struct.file*, %struct.file** %2, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.vpfe_fh*, %struct.vpfe_fh** %10, align 8
  store %struct.vpfe_fh* %11, %struct.vpfe_fh** %4, align 8
  %12 = load i32, i32* @debug, align 4
  %13 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %14 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %13, i32 0, i32 7
  %15 = call i32 @v4l2_dbg(i32 1, i32 %12, i32* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %17 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.vpfe_fh*, %struct.vpfe_fh** %4, align 8
  %20 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %1
  %24 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %25 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %23
  %29 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %30 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %29, i32 0, i32 8
  %31 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %30, align 8
  store %struct.vpfe_subdev_info* %31, %struct.vpfe_subdev_info** %5, align 8
  %32 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %33 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %32, i32 0, i32 7
  %34 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %5, align 8
  %35 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @video, align 4
  %38 = load i32, i32* @s_stream, align 4
  %39 = call i32 @v4l2_device_call_until_err(i32* %33, i32 %36, i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ENOIOCTLCMD, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %49 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %48, i32 0, i32 7
  %50 = call i32 @v4l2_err(i32* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %42, %28
  %52 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %53 = call i32 @vpfe_stop_ccdc_capture(%struct.vpfe_device* %52)
  %54 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %55 = call i32 @vpfe_detach_irq(%struct.vpfe_device* %54)
  %56 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %57 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %56, i32 0, i32 4
  %58 = call i32 @videobuf_streamoff(i32* %57)
  br label %59

59:                                               ; preds = %51, %23
  %60 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %61 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config_params, i32 0, i32 0), align 4
  %63 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %64 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %66 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %65, i32 0, i32 4
  %67 = call i32 @videobuf_stop(i32* %66)
  %68 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %69 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %68, i32 0, i32 4
  %70 = call i32 @videobuf_mmap_free(i32* %69)
  br label %71

71:                                               ; preds = %59, %1
  %72 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %73 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.vpfe_fh*, %struct.vpfe_fh** %4, align 8
  %77 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %76, i32 0, i32 0
  %78 = call i32 @v4l2_fh_del(i32* %77)
  %79 = load %struct.vpfe_fh*, %struct.vpfe_fh** %4, align 8
  %80 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %79, i32 0, i32 0
  %81 = call i32 @v4l2_fh_exit(i32* %80)
  %82 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %83 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %71
  %87 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %88 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ccdc_dev, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (i32)*, i32 (i32)** %91, align 8
  %93 = icmp ne i32 (i32)* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ccdc_dev, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32 (i32)*, i32 (i32)** %97, align 8
  %99 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %100 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 %98(i32 %101)
  br label %103

103:                                              ; preds = %94, %86
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ccdc_dev, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @module_put(i32 %106)
  br label %108

108:                                              ; preds = %103, %71
  %109 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %110 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load %struct.file*, %struct.file** %2, align 8
  %113 = getelementptr inbounds %struct.file, %struct.file* %112, i32 0, i32 0
  store %struct.vpfe_fh* null, %struct.vpfe_fh** %113, align 8
  %114 = load %struct.vpfe_fh*, %struct.vpfe_fh** %4, align 8
  %115 = call i32 @kfree(%struct.vpfe_fh* %114)
  ret i32 0
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @vpfe_stop_ccdc_capture(%struct.vpfe_device*) #1

declare dso_local i32 @vpfe_detach_irq(%struct.vpfe_device*) #1

declare dso_local i32 @videobuf_streamoff(i32*) #1

declare dso_local i32 @videobuf_stop(i32*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.vpfe_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
