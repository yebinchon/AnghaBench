; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { i32, i64, %struct.vpfe_device* }
%struct.vpfe_device = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.video_device = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vpfe_open\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"No decoder registered\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vpfe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vpfe_device*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.vpfe_fh*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.vpfe_device* @video_drvdata(%struct.file* %7)
  store %struct.vpfe_device* %8, %struct.vpfe_device** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.video_device* @video_devdata(%struct.file* %9)
  store %struct.video_device* %10, %struct.video_device** %5, align 8
  %11 = load i32, i32* @debug, align 4
  %12 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %13 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %12, i32 0, i32 3
  %14 = call i32 @v4l2_dbg(i32 1, i32 %11, i32* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %16 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %23 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %22, i32 0, i32 3
  %24 = call i32 @v4l2_err(i32* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %82

27:                                               ; preds = %1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.vpfe_fh* @kmalloc(i32 24, i32 %28)
  store %struct.vpfe_fh* %29, %struct.vpfe_fh** %6, align 8
  %30 = load %struct.vpfe_fh*, %struct.vpfe_fh** %6, align 8
  %31 = icmp ne %struct.vpfe_fh* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %82

35:                                               ; preds = %27
  %36 = load %struct.vpfe_fh*, %struct.vpfe_fh** %6, align 8
  %37 = load %struct.file*, %struct.file** %3, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  store %struct.vpfe_fh* %36, %struct.vpfe_fh** %38, align 8
  %39 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %40 = load %struct.vpfe_fh*, %struct.vpfe_fh** %6, align 8
  %41 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %40, i32 0, i32 2
  store %struct.vpfe_device* %39, %struct.vpfe_device** %41, align 8
  %42 = load %struct.vpfe_fh*, %struct.vpfe_fh** %6, align 8
  %43 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %42, i32 0, i32 0
  %44 = load %struct.video_device*, %struct.video_device** %5, align 8
  %45 = call i32 @v4l2_fh_init(i32* %43, %struct.video_device* %44)
  %46 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %47 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %50 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %35
  %54 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %55 = call i64 @vpfe_initialize_device(%struct.vpfe_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %59 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.vpfe_fh*, %struct.vpfe_fh** %6, align 8
  %62 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %61, i32 0, i32 0
  %63 = call i32 @v4l2_fh_exit(i32* %62)
  %64 = load %struct.vpfe_fh*, %struct.vpfe_fh** %6, align 8
  %65 = call i32 @kfree(%struct.vpfe_fh* %64)
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %82

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %35
  %70 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %71 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.vpfe_fh*, %struct.vpfe_fh** %6, align 8
  %75 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.vpfe_fh*, %struct.vpfe_fh** %6, align 8
  %77 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %76, i32 0, i32 0
  %78 = call i32 @v4l2_fh_add(i32* %77)
  %79 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %80 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %69, %57, %32, %21
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.vpfe_fh* @kmalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(i32*, %struct.video_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vpfe_initialize_device(%struct.vpfe_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @kfree(%struct.vpfe_fh*) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
