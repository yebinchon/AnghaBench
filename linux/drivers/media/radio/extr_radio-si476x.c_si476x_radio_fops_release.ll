; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_fops_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_fops_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.si476x_radio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SI476X_POWER_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @si476x_radio_fops_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_fops_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.si476x_radio*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.si476x_radio* @video_drvdata(%struct.file* %5)
  store %struct.si476x_radio* %6, %struct.si476x_radio** %4, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call i64 @v4l2_fh_is_singular_file(%struct.file* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %12 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %19 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* @SI476X_POWER_DOWN, align 4
  %22 = call i32 @si476x_core_set_power_state(%struct.TYPE_2__* %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %10, %1
  %24 = load %struct.file*, %struct.file** %2, align 8
  %25 = call i32 @v4l2_fh_release(%struct.file* %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.si476x_radio* @video_drvdata(%struct.file*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @si476x_core_set_power_state(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
