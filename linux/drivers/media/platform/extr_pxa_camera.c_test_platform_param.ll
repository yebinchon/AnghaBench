; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_test_platform_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_test_platform_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32, i32 }

@PXA_CAMERA_MASTER = common dso_local global i32 0, align 4
@V4L2_MBUS_MASTER = common dso_local global i64 0, align 8
@V4L2_MBUS_SLAVE = common dso_local global i64 0, align 8
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@V4L2_MBUS_DATA_ACTIVE_HIGH = common dso_local global i64 0, align 8
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_camera_dev*, i8, i64*)* @test_platform_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_platform_param(%struct.pxa_camera_dev* %0, i8 zeroext %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxa_camera_dev*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64*, align 8
  store %struct.pxa_camera_dev* %0, %struct.pxa_camera_dev** %5, align 8
  store i8 %1, i8* %6, align 1
  store i64* %2, i64** %7, align 8
  %8 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %5, align 8
  %9 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PXA_CAMERA_MASTER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @V4L2_MBUS_MASTER, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @V4L2_MBUS_SLAVE, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* @V4L2_MBUS_DATA_ACTIVE_HIGH, align 8
  %29 = or i64 %27, %28
  %30 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 8
  %33 = or i64 %31, %32
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = sub nsw i32 %36, 1
  %38 = shl i32 1, %37
  %39 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %5, align 8
  %40 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %48

45:                                               ; preds = %18
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %44
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
