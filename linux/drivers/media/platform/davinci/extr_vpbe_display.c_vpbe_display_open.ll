; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vpbe_layer = type { i32, i32, %struct.TYPE_4__, %struct.vpbe_display* }
%struct.TYPE_4__ = type { i32 }
%struct.vpbe_display = type { %struct.osd_state*, %struct.vpbe_device* }
%struct.osd_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.osd_state*, i32)* }
%struct.vpbe_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"v4l2_fh_open failed\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Display Manager failed to allocate layer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"vpbe display device opened successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vpbe_display_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vpbe_layer*, align 8
  %5 = alloca %struct.vpbe_display*, align 8
  %6 = alloca %struct.vpbe_device*, align 8
  %7 = alloca %struct.osd_state*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.vpbe_layer* @video_drvdata(%struct.file* %9)
  store %struct.vpbe_layer* %10, %struct.vpbe_layer** %4, align 8
  %11 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %12 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %11, i32 0, i32 3
  %13 = load %struct.vpbe_display*, %struct.vpbe_display** %12, align 8
  store %struct.vpbe_display* %13, %struct.vpbe_display** %5, align 8
  %14 = load %struct.vpbe_display*, %struct.vpbe_display** %5, align 8
  %15 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %14, i32 0, i32 1
  %16 = load %struct.vpbe_device*, %struct.vpbe_device** %15, align 8
  store %struct.vpbe_device* %16, %struct.vpbe_device** %6, align 8
  %17 = load %struct.vpbe_display*, %struct.vpbe_display** %5, align 8
  %18 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %17, i32 0, i32 0
  %19 = load %struct.osd_state*, %struct.osd_state** %18, align 8
  store %struct.osd_state* %19, %struct.osd_state** %7, align 8
  %20 = load %struct.file*, %struct.file** %3, align 8
  %21 = call i32 @v4l2_fh_open(%struct.file* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.vpbe_device*, %struct.vpbe_device** %6, align 8
  %26 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %25, i32 0, i32 0
  %27 = call i32 @v4l2_err(i32* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %82

29:                                               ; preds = %1
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = call i32 @v4l2_fh_is_singular_file(%struct.file* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  br label %82

35:                                               ; preds = %29
  %36 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %37 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %73, label %40

40:                                               ; preds = %35
  %41 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %42 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %41, i32 0, i32 1
  %43 = call i64 @mutex_lock_interruptible(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @ERESTARTSYS, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %82

48:                                               ; preds = %40
  %49 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %50 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %51, align 8
  %53 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %54 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %55 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %52(%struct.osd_state* %53, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %60 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %48
  %65 = load %struct.vpbe_device*, %struct.vpbe_device** %6, align 8
  %66 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %65, i32 0, i32 0
  %67 = call i32 @v4l2_err(i32* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.file*, %struct.file** %3, align 8
  %69 = call i32 @v4l2_fh_release(%struct.file* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %82

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72, %35
  %74 = load %struct.vpbe_layer*, %struct.vpbe_layer** %4, align 8
  %75 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @debug, align 4
  %79 = load %struct.vpbe_device*, %struct.vpbe_device** %6, align 8
  %80 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %79, i32 0, i32 0
  %81 = call i32 @v4l2_dbg(i32 1, i32 %78, i32* %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %73, %64, %45, %33, %24
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.vpbe_layer* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
