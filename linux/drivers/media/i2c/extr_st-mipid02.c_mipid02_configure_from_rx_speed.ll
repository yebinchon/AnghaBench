; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_configure_from_rx_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_configure_from_rx_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid02_dev = type { %struct.TYPE_2__, %struct.v4l2_subdev*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to get link frequency\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"detect link_freq = %d Hz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid02_dev*)* @mipid02_configure_from_rx_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_configure_from_rx_speed(%struct.mipid02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipid02_dev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.mipid02_dev* %0, %struct.mipid02_dev** %3, align 8
  %7 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %7, i32 0, i32 2
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %10, i32 0, i32 1
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %5, align 8
  %13 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call i32 @mipid02_get_link_freq_from_cid_link_freq(%struct.mipid02_dev* %13, %struct.v4l2_subdev* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %1
  %19 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %21 = call i32 @mipid02_get_link_freq_from_cid_pixel_rate(%struct.mipid02_dev* %19, %struct.v4l2_subdev* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %44

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = sdiv i32 2000000000, %36
  %38 = shl i32 %37, 2
  %39 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %31, %24
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @mipid02_get_link_freq_from_cid_link_freq(%struct.mipid02_dev*, %struct.v4l2_subdev*) #1

declare dso_local i32 @mipid02_get_link_freq_from_cid_pixel_rate(%struct.mipid02_dev*, %struct.v4l2_subdev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
