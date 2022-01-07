; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_dw9807-vcm.c_dw9807_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_dw9807-vcm.c_dw9807_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.dw9807_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw9807_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@dw9807_int_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_LENS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @dw9807_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw9807_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.dw9807_device*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dw9807_device* @devm_kzalloc(i32* %7, i32 32, i32 %8)
  store %struct.dw9807_device* %9, %struct.dw9807_device** %4, align 8
  %10 = load %struct.dw9807_device*, %struct.dw9807_device** %4, align 8
  %11 = icmp eq %struct.dw9807_device* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.dw9807_device*, %struct.dw9807_device** %4, align 8
  %17 = getelementptr inbounds %struct.dw9807_device, %struct.dw9807_device* %16, i32 0, i32 0
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_5__* %17, %struct.i2c_client* %18, i32* @dw9807_ops)
  %20 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %21 = load %struct.dw9807_device*, %struct.dw9807_device** %4, align 8
  %22 = getelementptr inbounds %struct.dw9807_device, %struct.dw9807_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 8
  %26 = load %struct.dw9807_device*, %struct.dw9807_device** %4, align 8
  %27 = getelementptr inbounds %struct.dw9807_device, %struct.dw9807_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32* @dw9807_int_ops, i32** %28, align 8
  %29 = load %struct.dw9807_device*, %struct.dw9807_device** %4, align 8
  %30 = call i32 @dw9807_init_controls(%struct.dw9807_device* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %64

34:                                               ; preds = %15
  %35 = load %struct.dw9807_device*, %struct.dw9807_device** %4, align 8
  %36 = getelementptr inbounds %struct.dw9807_device, %struct.dw9807_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @media_entity_pads_init(%struct.TYPE_6__* %37, i32 0, i32* null)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %64

42:                                               ; preds = %34
  %43 = load i32, i32* @MEDIA_ENT_F_LENS, align 4
  %44 = load %struct.dw9807_device*, %struct.dw9807_device** %4, align 8
  %45 = getelementptr inbounds %struct.dw9807_device, %struct.dw9807_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  %48 = load %struct.dw9807_device*, %struct.dw9807_device** %4, align 8
  %49 = getelementptr inbounds %struct.dw9807_device, %struct.dw9807_device* %48, i32 0, i32 0
  %50 = call i32 @v4l2_async_register_subdev(%struct.TYPE_5__* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %64

54:                                               ; preds = %42
  %55 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call i32 @pm_runtime_set_active(i32* %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = call i32 @pm_runtime_enable(i32* %59)
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 @pm_runtime_idle(i32* %62)
  store i32 0, i32* %2, align 4
  br label %73

64:                                               ; preds = %53, %41, %33
  %65 = load %struct.dw9807_device*, %struct.dw9807_device** %4, align 8
  %66 = getelementptr inbounds %struct.dw9807_device, %struct.dw9807_device* %65, i32 0, i32 1
  %67 = call i32 @v4l2_ctrl_handler_free(i32* %66)
  %68 = load %struct.dw9807_device*, %struct.dw9807_device** %4, align 8
  %69 = getelementptr inbounds %struct.dw9807_device, %struct.dw9807_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i32 @media_entity_cleanup(%struct.TYPE_6__* %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %64, %54, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.dw9807_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_5__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @dw9807_init_controls(%struct.dw9807_device*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_idle(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
