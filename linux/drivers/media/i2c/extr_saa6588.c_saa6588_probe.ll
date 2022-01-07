; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6588.c_saa6588_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6588.c_saa6588_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.saa6588 = type { i32, i32, i32, i64, i32, i64, i64, i64, i32, %struct.v4l2_subdev, i32* }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"saa6588 found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bufblocks = common dso_local global i32 0, align 4
@saa6588_ops = common dso_local global i32 0, align 4
@saa6588_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @saa6588_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa6588_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.saa6588*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = shl i32 %11, 1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @v4l_info(%struct.i2c_client* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(i32* %20, i32 72, i32 %21)
  %23 = bitcast i8* %22 to %struct.saa6588*
  store %struct.saa6588* %23, %struct.saa6588** %6, align 8
  %24 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %25 = icmp eq %struct.saa6588* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %82

29:                                               ; preds = %2
  %30 = load i32, i32* @bufblocks, align 4
  %31 = mul nsw i32 %30, 3
  %32 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %33 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %37 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kzalloc(i32* %35, i32 %38, i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %43 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %42, i32 0, i32 10
  store i32* %41, i32** %43, align 8
  %44 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %45 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %44, i32 0, i32 10
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %82

51:                                               ; preds = %29
  %52 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %53 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %52, i32 0, i32 9
  store %struct.v4l2_subdev* %53, %struct.v4l2_subdev** %7, align 8
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %54, %struct.i2c_client* %55, i32* @saa6588_ops)
  %57 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %58 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %57, i32 0, i32 8
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %61 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %60, i32 0, i32 7
  store i64 0, i64* %61, align 8
  %62 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %63 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %65 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %67 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %66, i32 0, i32 1
  store i32 255, i32* %67, align 4
  %68 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %69 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %68, i32 0, i32 4
  %70 = call i32 @init_waitqueue_head(i32* %69)
  %71 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %72 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %74 = call i32 @saa6588_configure(%struct.saa6588* %73)
  %75 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %76 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %75, i32 0, i32 2
  %77 = load i32, i32* @saa6588_work, align 4
  %78 = call i32 @INIT_DELAYED_WORK(i32* %76, i32 %77)
  %79 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %80 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %79, i32 0, i32 2
  %81 = call i32 @schedule_delayed_work(i32* %80, i32 0)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %51, %48, %26
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @saa6588_configure(%struct.saa6588*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
