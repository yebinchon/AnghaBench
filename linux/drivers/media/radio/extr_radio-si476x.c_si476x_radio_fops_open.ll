; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_fops_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_fops_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.si476x_radio = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SI476X_POWER_UP_FULL = common dso_local global i32 0, align 4
@SI476X_POWER_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @si476x_radio_fops_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_fops_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.si476x_radio*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.si476x_radio* @video_drvdata(%struct.file* %6)
  store %struct.si476x_radio* %7, %struct.si476x_radio** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call i32 @v4l2_fh_open(%struct.file* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %79

14:                                               ; preds = %1
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = call i64 @v4l2_fh_is_singular_file(%struct.file* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %20 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @si476x_core_lock(%struct.TYPE_6__* %21)
  %23 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %24 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* @SI476X_POWER_UP_FULL, align 4
  %27 = call i32 @si476x_core_set_power_state(%struct.TYPE_6__* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %71

31:                                               ; preds = %18
  %32 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %33 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %34 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @si476x_radio_do_post_powerup_init(%struct.si476x_radio* %32, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %65

43:                                               ; preds = %31
  %44 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %45 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %46 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @si476x_radio_pretune(%struct.si476x_radio* %44, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %65

55:                                               ; preds = %43
  %56 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %57 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @si476x_core_unlock(%struct.TYPE_6__* %58)
  %60 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %61 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %60, i32 0, i32 1
  %62 = call i32 @v4l2_ctrl_handler_setup(i32* %61)
  br label %63

63:                                               ; preds = %55, %14
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %79

65:                                               ; preds = %54, %42
  %66 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %67 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* @SI476X_POWER_DOWN, align 4
  %70 = call i32 @si476x_core_set_power_state(%struct.TYPE_6__* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %30
  %72 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %73 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = call i32 @si476x_core_unlock(%struct.TYPE_6__* %74)
  %76 = load %struct.file*, %struct.file** %3, align 8
  %77 = call i32 @v4l2_fh_release(%struct.file* %76)
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %71, %63, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.si476x_radio* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @si476x_core_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @si476x_core_set_power_state(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @si476x_radio_do_post_powerup_init(%struct.si476x_radio*, i32) #1

declare dso_local i32 @si476x_radio_pretune(%struct.si476x_radio*, i32) #1

declare dso_local i32 @si476x_core_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
