; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.rvin_dev* }
%struct.rvin_dev = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @rvin_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.rvin_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.rvin_dev* @video_drvdata(%struct.file* %6)
  store %struct.rvin_dev* %7, %struct.rvin_dev** %4, align 8
  %8 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pm_runtime_get_sync(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %101

16:                                               ; preds = %1
  %17 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %18 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock_interruptible(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %95

23:                                               ; preds = %16
  %24 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %25 = load %struct.file*, %struct.file** %3, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  store %struct.rvin_dev* %24, %struct.rvin_dev** %26, align 8
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = call i32 @v4l2_fh_open(%struct.file* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %91

32:                                               ; preds = %23
  %33 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %34 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %41 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @v4l2_pipeline_pm_use(i32* %42, i32 1)
  store i32 %43, i32* %5, align 4
  br label %52

44:                                               ; preds = %32
  %45 = load %struct.file*, %struct.file** %3, align 8
  %46 = call i64 @v4l2_fh_is_singular_file(%struct.file* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %50 = call i32 @rvin_power_parallel(%struct.rvin_dev* %49, i32 1)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %88

56:                                               ; preds = %52
  %57 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %58 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %57, i32 0, i32 4
  %59 = call i32 @v4l2_ctrl_handler_setup(i32* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %67

63:                                               ; preds = %56
  %64 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %65 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %2, align 4
  br label %101

67:                                               ; preds = %62
  %68 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %69 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %76 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @v4l2_pipeline_pm_use(i32* %77, i32 0)
  br label %87

79:                                               ; preds = %67
  %80 = load %struct.file*, %struct.file** %3, align 8
  %81 = call i64 @v4l2_fh_is_singular_file(%struct.file* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %85 = call i32 @rvin_power_parallel(%struct.rvin_dev* %84, i32 0)
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86, %74
  br label %88

88:                                               ; preds = %87, %55
  %89 = load %struct.file*, %struct.file** %3, align 8
  %90 = call i32 @v4l2_fh_release(%struct.file* %89)
  br label %91

91:                                               ; preds = %88, %31
  %92 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %93 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %95

95:                                               ; preds = %91, %22
  %96 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %97 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @pm_runtime_put(i32 %98)
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %63, %14
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.rvin_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @v4l2_pipeline_pm_use(i32*, i32) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @rvin_power_parallel(%struct.rvin_dev*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
