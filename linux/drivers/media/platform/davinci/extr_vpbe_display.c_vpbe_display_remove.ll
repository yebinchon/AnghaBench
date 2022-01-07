; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vpbe_layer = type { i32 }
%struct.vpbe_display = type { %struct.vpbe_layer**, %struct.vpbe_device* }
%struct.vpbe_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (i32*, %struct.vpbe_device*)* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vpbe_display_remove\0A\00", align 1
@VPBE_DISPLAY_MAX_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vpbe_display_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.vpbe_layer*, align 8
  %4 = alloca %struct.vpbe_display*, align 8
  %5 = alloca %struct.vpbe_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.vpbe_display* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.vpbe_display* %8, %struct.vpbe_display** %4, align 8
  %9 = load %struct.vpbe_display*, %struct.vpbe_display** %4, align 8
  %10 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %9, i32 0, i32 1
  %11 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  store %struct.vpbe_device* %11, %struct.vpbe_device** %5, align 8
  %12 = load i32, i32* @debug, align 4
  %13 = load %struct.vpbe_device*, %struct.vpbe_device** %5, align 8
  %14 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %13, i32 0, i32 1
  %15 = call i32 @v4l2_dbg(i32 1, i32 %12, i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vpbe_device*, %struct.vpbe_device** %5, align 8
  %17 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32*, %struct.vpbe_device*)*, i32 (i32*, %struct.vpbe_device*)** %18, align 8
  %20 = icmp ne i32 (i32*, %struct.vpbe_device*)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.vpbe_device*, %struct.vpbe_device** %5, align 8
  %23 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32*, %struct.vpbe_device*)*, i32 (i32*, %struct.vpbe_device*)** %24, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.vpbe_device*, %struct.vpbe_device** %5, align 8
  %29 = call i32 %25(i32* %27, %struct.vpbe_device* %28)
  br label %30

30:                                               ; preds = %21, %1
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @VPBE_DISPLAY_MAX_DEVICES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.vpbe_display*, %struct.vpbe_display** %4, align 8
  %37 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %36, i32 0, i32 0
  %38 = load %struct.vpbe_layer**, %struct.vpbe_layer*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.vpbe_layer*, %struct.vpbe_layer** %38, i64 %40
  %42 = load %struct.vpbe_layer*, %struct.vpbe_layer** %41, align 8
  store %struct.vpbe_layer* %42, %struct.vpbe_layer** %3, align 8
  %43 = load %struct.vpbe_layer*, %struct.vpbe_layer** %3, align 8
  %44 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %43, i32 0, i32 0
  %45 = call i32 @video_unregister_device(i32* %44)
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %31

49:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %69, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @VPBE_DISPLAY_MAX_DEVICES, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.vpbe_display*, %struct.vpbe_display** %4, align 8
  %56 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %55, i32 0, i32 0
  %57 = load %struct.vpbe_layer**, %struct.vpbe_layer*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.vpbe_layer*, %struct.vpbe_layer** %57, i64 %59
  %61 = load %struct.vpbe_layer*, %struct.vpbe_layer** %60, align 8
  %62 = call i32 @kfree(%struct.vpbe_layer* %61)
  %63 = load %struct.vpbe_display*, %struct.vpbe_display** %4, align 8
  %64 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %63, i32 0, i32 0
  %65 = load %struct.vpbe_layer**, %struct.vpbe_layer*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.vpbe_layer*, %struct.vpbe_layer** %65, i64 %67
  store %struct.vpbe_layer* null, %struct.vpbe_layer** %68, align 8
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %50

72:                                               ; preds = %50
  ret i32 0
}

declare dso_local %struct.vpbe_display* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @kfree(%struct.vpbe_layer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
