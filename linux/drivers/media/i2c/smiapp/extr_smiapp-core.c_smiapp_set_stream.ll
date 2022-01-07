; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.smiapp_sensor = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @smiapp_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smiapp_sensor*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev* %9)
  store %struct.smiapp_sensor* %10, %struct.smiapp_sensor** %6, align 8
  %11 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %12 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %7, align 8
  %16 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %17 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %22
  %26 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 @pm_runtime_get_sync(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @pm_runtime_set_active(i32* %43)
  br label %45

45:                                               ; preds = %41, %36, %31
  %46 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 @pm_runtime_put(i32* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %74

50:                                               ; preds = %25
  %51 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %52 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %54 = call i32 @smiapp_start_streaming(%struct.smiapp_sensor* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %59 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %50
  br label %72

61:                                               ; preds = %22
  %62 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %63 = call i32 @smiapp_stop_streaming(%struct.smiapp_sensor* %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %65 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = call i32 @pm_runtime_mark_last_busy(i32* %67)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = call i32 @pm_runtime_put_autosuspend(i32* %70)
  br label %72

72:                                               ; preds = %61, %60
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %45, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @smiapp_start_streaming(%struct.smiapp_sensor*) #1

declare dso_local i32 @smiapp_stop_streaming(%struct.smiapp_sensor*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
