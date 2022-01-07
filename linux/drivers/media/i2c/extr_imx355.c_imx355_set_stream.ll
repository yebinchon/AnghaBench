; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.imx355 = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @imx355_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx355_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx355*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.imx355* @to_imx355(%struct.v4l2_subdev* %9)
  store %struct.imx355* %10, %struct.imx355** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.imx355*, %struct.imx355** %6, align 8
  %14 = getelementptr inbounds %struct.imx355, %struct.imx355* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.imx355*, %struct.imx355** %6, align 8
  %17 = getelementptr inbounds %struct.imx355, %struct.imx355* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.imx355*, %struct.imx355** %6, align 8
  %23 = getelementptr inbounds %struct.imx355, %struct.imx355* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  store i32 0, i32* %3, align 4
  br label %78

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @pm_runtime_get_sync(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i32 @pm_runtime_put_noidle(i32* %36)
  br label %73

38:                                               ; preds = %28
  %39 = load %struct.imx355*, %struct.imx355** %6, align 8
  %40 = call i32 @imx355_start_streaming(%struct.imx355* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %69

44:                                               ; preds = %38
  br label %51

45:                                               ; preds = %25
  %46 = load %struct.imx355*, %struct.imx355** %6, align 8
  %47 = call i32 @imx355_stop_streaming(%struct.imx355* %46)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = call i32 @pm_runtime_put(i32* %49)
  br label %51

51:                                               ; preds = %45, %44
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.imx355*, %struct.imx355** %6, align 8
  %54 = getelementptr inbounds %struct.imx355, %struct.imx355* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.imx355*, %struct.imx355** %6, align 8
  %56 = getelementptr inbounds %struct.imx355, %struct.imx355* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @__v4l2_ctrl_grab(i32 %57, i32 %58)
  %60 = load %struct.imx355*, %struct.imx355** %6, align 8
  %61 = getelementptr inbounds %struct.imx355, %struct.imx355* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @__v4l2_ctrl_grab(i32 %62, i32 %63)
  %65 = load %struct.imx355*, %struct.imx355** %6, align 8
  %66 = getelementptr inbounds %struct.imx355, %struct.imx355* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %78

69:                                               ; preds = %43
  %70 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = call i32 @pm_runtime_put(i32* %71)
  br label %73

73:                                               ; preds = %69, %34
  %74 = load %struct.imx355*, %struct.imx355** %6, align 8
  %75 = getelementptr inbounds %struct.imx355, %struct.imx355* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %51, %21
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.imx355* @to_imx355(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @imx355_start_streaming(%struct.imx355*) #1

declare dso_local i32 @imx355_stop_streaming(%struct.imx355*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @__v4l2_ctrl_grab(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
