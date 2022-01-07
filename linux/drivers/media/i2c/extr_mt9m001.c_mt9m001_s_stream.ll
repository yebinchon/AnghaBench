; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m001 = type { i32, i32, i32 }

@MT9M001_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @mt9m001_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mt9m001*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = call %struct.mt9m001* @to_mt9m001(%struct.i2c_client* %11)
  store %struct.mt9m001* %12, %struct.mt9m001** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %14 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %17 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %64

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 @pm_runtime_get_sync(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %68

32:                                               ; preds = %25
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %34 = call i32 @mt9m001_apply_selection(%struct.v4l2_subdev* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %68

38:                                               ; preds = %32
  %39 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %40 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %39, i32 0, i32 2
  %41 = call i32 @__v4l2_ctrl_handler_setup(i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %68

45:                                               ; preds = %38
  %46 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %47 = load i32, i32* @MT9M001_OUTPUT_CONTROL, align 4
  %48 = call i32 @reg_write(%struct.i2c_client* %46, i32 %47, i32 2)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %68

52:                                               ; preds = %45
  br label %60

53:                                               ; preds = %22
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = load i32, i32* @MT9M001_OUTPUT_CONTROL, align 4
  %56 = call i32 @reg_write(%struct.i2c_client* %54, i32 %55, i32 0)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32 @pm_runtime_put(i32* %58)
  br label %60

60:                                               ; preds = %53, %52
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %63 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %21
  %65 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %66 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  store i32 0, i32* %3, align 4
  br label %76

68:                                               ; preds = %51, %44, %37, %31
  %69 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = call i32 @pm_runtime_put(i32* %70)
  %72 = load %struct.mt9m001*, %struct.mt9m001** %7, align 8
  %73 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %68, %64
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m001* @to_mt9m001(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @mt9m001_apply_selection(%struct.v4l2_subdev*) #1

declare dso_local i32 @__v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
