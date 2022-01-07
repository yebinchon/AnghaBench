; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.rvin_dev = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @rvin_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call %struct.rvin_dev* @video_drvdata(%struct.file* %6)
  store %struct.rvin_dev* %7, %struct.rvin_dev** %3, align 8
  %8 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.file*, %struct.file** %2, align 8
  %12 = call i32 @v4l2_fh_is_singular_file(%struct.file* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.file*, %struct.file** %2, align 8
  %14 = call i32 @_vb2_fop_release(%struct.file* %13, i32* null)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %16 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %23 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @v4l2_pipeline_pm_use(i32* %24, i32 0)
  br label %33

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %31 = call i32 @rvin_power_parallel(%struct.rvin_dev* %30, i32 0)
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %35 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %38 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pm_runtime_put(i32 %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.rvin_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @_vb2_fop_release(%struct.file*, i32*) #1

declare dso_local i32 @v4l2_pipeline_pm_use(i32*, i32) #1

declare dso_local i32 @rvin_power_parallel(%struct.rvin_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
