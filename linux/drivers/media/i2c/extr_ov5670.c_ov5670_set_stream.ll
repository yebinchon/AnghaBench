; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5670.c_ov5670_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5670.c_ov5670_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov5670 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov5670_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5670_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ov5670*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.ov5670* @to_ov5670(%struct.v4l2_subdev* %8)
  store %struct.ov5670* %9, %struct.ov5670** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ov5670*, %struct.ov5670** %5, align 8
  %13 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ov5670*, %struct.ov5670** %5, align 8
  %16 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %55

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @pm_runtime_get_sync(i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @pm_runtime_put_noidle(i32* %32)
  br label %55

34:                                               ; preds = %24
  %35 = load %struct.ov5670*, %struct.ov5670** %5, align 8
  %36 = call i32 @ov5670_start_streaming(%struct.ov5670* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %51

40:                                               ; preds = %34
  br label %47

41:                                               ; preds = %21
  %42 = load %struct.ov5670*, %struct.ov5670** %5, align 8
  %43 = call i32 @ov5670_stop_streaming(%struct.ov5670* %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = call i32 @pm_runtime_put(i32* %45)
  br label %47

47:                                               ; preds = %41, %40
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.ov5670*, %struct.ov5670** %5, align 8
  %50 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %55

51:                                               ; preds = %39
  %52 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i32 @pm_runtime_put(i32* %53)
  br label %55

55:                                               ; preds = %51, %47, %30, %20
  %56 = load %struct.ov5670*, %struct.ov5670** %5, align 8
  %57 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.ov5670* @to_ov5670(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @ov5670_start_streaming(%struct.ov5670*) #1

declare dso_local i32 @ov5670_stop_streaming(%struct.ov5670*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
