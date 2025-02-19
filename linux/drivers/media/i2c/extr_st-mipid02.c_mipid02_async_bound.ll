; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_async_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_async_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32, i32, i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.mipid02_dev = type { %struct.v4l2_subdev*, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"sensor_async_bound call %p\00", align 1
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't find output pad for subdev %s\0A\00", align 1
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_IMMUTABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Couldn't create media link %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @mipid02_async_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_async_bound(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_async_notifier*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca %struct.mipid02_dev*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %12 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mipid02_dev* @to_mipid02_dev(i32 %14)
  store %struct.mipid02_dev* %15, %struct.mipid02_dev** %8, align 8
  %16 = load %struct.mipid02_dev*, %struct.mipid02_dev** %8, align 8
  %17 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %16, i32 0, i32 2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %9, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %22 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.v4l2_subdev* %21)
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %23, i32 0, i32 1
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %29 = call i32 @media_entity_get_fwnode_pad(i32* %24, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %3
  %33 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %63

40:                                               ; preds = %3
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %41, i32 0, i32 1
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.mipid02_dev*, %struct.mipid02_dev** %8, align 8
  %45 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %48 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @media_create_pad_link(i32* %42, i32 %43, i32* %46, i32 0, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %40
  %54 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %63

59:                                               ; preds = %40
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %61 = load %struct.mipid02_dev*, %struct.mipid02_dev** %8, align 8
  %62 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %61, i32 0, i32 0
  store %struct.v4l2_subdev* %60, %struct.v4l2_subdev** %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %53, %32
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.mipid02_dev* @to_mipid02_dev(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_get_fwnode_pad(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @media_create_pad_link(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
