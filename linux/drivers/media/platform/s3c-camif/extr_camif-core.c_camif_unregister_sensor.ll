; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_camif_unregister_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_camif_unregister_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camif_dev*)* @camif_unregister_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camif_unregister_sensor(%struct.camif_dev* %0) #0 {
  %2 = alloca %struct.camif_dev*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  store %struct.camif_dev* %0, %struct.camif_dev** %2, align 8
  %6 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %7 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %3, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = icmp ne %struct.v4l2_subdev* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi %struct.i2c_client* [ %14, %12 ], [ null, %15 ]
  store %struct.i2c_client* %17, %struct.i2c_client** %4, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = icmp eq %struct.i2c_client* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %34

21:                                               ; preds = %16
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %23, align 8
  store %struct.i2c_adapter* %24, %struct.i2c_adapter** %5, align 8
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %26 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %25)
  %27 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %28 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @i2c_unregister_device(%struct.i2c_client* %30)
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %33 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %32)
  br label %34

34:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
