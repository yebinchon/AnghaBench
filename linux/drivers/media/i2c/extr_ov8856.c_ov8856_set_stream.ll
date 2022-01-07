; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov8856.c_ov8856_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov8856.c_ov8856_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov8856 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov8856_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov8856_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov8856*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.ov8856* @to_ov8856(%struct.v4l2_subdev* %9)
  store %struct.ov8856* %10, %struct.ov8856** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ov8856*, %struct.ov8856** %6, align 8
  %14 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.ov8856*, %struct.ov8856** %6, align 8
  %21 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 @pm_runtime_get_sync(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call i32 @pm_runtime_put_noidle(i32* %33)
  %35 = load %struct.ov8856*, %struct.ov8856** %6, align 8
  %36 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %25
  %40 = load %struct.ov8856*, %struct.ov8856** %6, align 8
  %41 = call i32 @ov8856_start_streaming(%struct.ov8856* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  %45 = load %struct.ov8856*, %struct.ov8856** %6, align 8
  %46 = call i32 @ov8856_stop_streaming(%struct.ov8856* %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @pm_runtime_put(i32* %48)
  br label %50

50:                                               ; preds = %44, %39
  br label %57

51:                                               ; preds = %19
  %52 = load %struct.ov8856*, %struct.ov8856** %6, align 8
  %53 = call i32 @ov8856_stop_streaming(%struct.ov8856* %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = call i32 @pm_runtime_put(i32* %55)
  br label %57

57:                                               ; preds = %51, %50
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ov8856*, %struct.ov8856** %6, align 8
  %60 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ov8856*, %struct.ov8856** %6, align 8
  %62 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %57, %31, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ov8856* @to_ov8856(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ov8856_start_streaming(%struct.ov8856*) #1

declare dso_local i32 @ov8856_stop_streaming(%struct.ov8856*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
