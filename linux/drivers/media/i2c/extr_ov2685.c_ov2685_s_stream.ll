; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2685.c_ov2685_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2685.c_ov2685_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov2685 = type { i32, i32, %struct.i2c_client*, i32 }
%struct.i2c_client = type { i32 }

@REG_SC_CTRL_MODE = common dso_local global i32 0, align 4
@OV2685_REG_VALUE_08BIT = common dso_local global i32 0, align 4
@SC_CTRL_MODE_STREAMING = common dso_local global i32 0, align 4
@SC_CTRL_MODE_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov2685_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2685_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ov2685*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.ov2685* @to_ov2685(%struct.v4l2_subdev* %8)
  store %struct.ov2685* %9, %struct.ov2685** %5, align 8
  %10 = load %struct.ov2685*, %struct.ov2685** %5, align 8
  %11 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %10, i32 0, i32 2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.ov2685*, %struct.ov2685** %5, align 8
  %14 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ov2685*, %struct.ov2685** %5, align 8
  %23 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %80

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %27
  %31 = load %struct.ov2685*, %struct.ov2685** %5, align 8
  %32 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %31, i32 0, i32 2
  %33 = load %struct.i2c_client*, %struct.i2c_client** %32, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call i32 @pm_runtime_get_sync(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call i32 @pm_runtime_put_noidle(i32* %40)
  br label %80

42:                                               ; preds = %30
  %43 = load %struct.ov2685*, %struct.ov2685** %5, align 8
  %44 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %43, i32 0, i32 3
  %45 = call i32 @__v4l2_ctrl_handler_setup(i32* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @pm_runtime_put(i32* %50)
  br label %80

52:                                               ; preds = %42
  %53 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %54 = load i32, i32* @REG_SC_CTRL_MODE, align 4
  %55 = load i32, i32* @OV2685_REG_VALUE_08BIT, align 4
  %56 = load i32, i32* @SC_CTRL_MODE_STREAMING, align 4
  %57 = call i32 @ov2685_write_reg(%struct.i2c_client* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 @pm_runtime_put(i32* %62)
  br label %80

64:                                               ; preds = %52
  br label %76

65:                                               ; preds = %27
  %66 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %67 = load i32, i32* @REG_SC_CTRL_MODE, align 4
  %68 = load i32, i32* @OV2685_REG_VALUE_08BIT, align 4
  %69 = load i32, i32* @SC_CTRL_MODE_STANDBY, align 4
  %70 = call i32 @ov2685_write_reg(%struct.i2c_client* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.ov2685*, %struct.ov2685** %5, align 8
  %72 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %71, i32 0, i32 2
  %73 = load %struct.i2c_client*, %struct.i2c_client** %72, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = call i32 @pm_runtime_put(i32* %74)
  br label %76

76:                                               ; preds = %65, %64
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.ov2685*, %struct.ov2685** %5, align 8
  %79 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %60, %48, %38, %26
  %81 = load %struct.ov2685*, %struct.ov2685** %5, align 8
  %82 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local %struct.ov2685* @to_ov2685(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @__v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @ov2685_write_reg(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
