; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.s3c_camif_variant* }
%struct.TYPE_2__ = type { i32* }
%struct.s3c_camif_variant = type { i64, i64 }
%struct.camif_vp = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@S3C244X_CAMIF_IP_REV = common dso_local global i64 0, align 8
@S3C6410_CAMIF_IP_REV = common dso_local global i64 0, align 8
@ST_VP_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camif_dev*, %struct.camif_vp*)* @s3c_camif_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_hw_init(%struct.camif_dev* %0, %struct.camif_vp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camif_dev*, align 8
  %5 = alloca %struct.camif_vp*, align 8
  %6 = alloca %struct.s3c_camif_variant*, align 8
  store %struct.camif_dev* %0, %struct.camif_dev** %4, align 8
  store %struct.camif_vp* %1, %struct.camif_vp** %5, align 8
  %7 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %8 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %7, i32 0, i32 5
  %9 = load %struct.s3c_camif_variant*, %struct.s3c_camif_variant** %8, align 8
  store %struct.s3c_camif_variant* %9, %struct.s3c_camif_variant** %6, align 8
  %10 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %11 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %17 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %78

23:                                               ; preds = %15
  %24 = load %struct.s3c_camif_variant*, %struct.s3c_camif_variant** %6, align 8
  %25 = getelementptr inbounds %struct.s3c_camif_variant, %struct.s3c_camif_variant* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @S3C244X_CAMIF_IP_REV, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %31 = call i32 @camif_hw_clear_fifo_overflow(%struct.camif_vp* %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %34 = call i32 @camif_hw_set_camera_bus(%struct.camif_dev* %33)
  %35 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %36 = call i32 @camif_hw_set_source_format(%struct.camif_dev* %35)
  %37 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %38 = call i32 @camif_hw_set_camera_crop(%struct.camif_dev* %37)
  %39 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %40 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %41 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @camif_hw_set_test_pattern(%struct.camif_dev* %39, i32 %42)
  %44 = load %struct.s3c_camif_variant*, %struct.s3c_camif_variant** %6, align 8
  %45 = getelementptr inbounds %struct.s3c_camif_variant, %struct.s3c_camif_variant* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %32
  %49 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %50 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %51 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %54 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %57 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @camif_hw_set_effect(%struct.camif_dev* %49, i32 %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %48, %32
  %61 = load %struct.s3c_camif_variant*, %struct.s3c_camif_variant** %6, align 8
  %62 = getelementptr inbounds %struct.s3c_camif_variant, %struct.s3c_camif_variant* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @S3C6410_CAMIF_IP_REV, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %68 = call i32 @camif_hw_set_input_path(%struct.camif_vp* %67)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %71 = call i32 @camif_cfg_video_path(%struct.camif_vp* %70)
  %72 = load i32, i32* @ST_VP_CONFIG, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %75 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %69, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @camif_hw_clear_fifo_overflow(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_set_camera_bus(%struct.camif_dev*) #1

declare dso_local i32 @camif_hw_set_source_format(%struct.camif_dev*) #1

declare dso_local i32 @camif_hw_set_camera_crop(%struct.camif_dev*) #1

declare dso_local i32 @camif_hw_set_test_pattern(%struct.camif_dev*, i32) #1

declare dso_local i32 @camif_hw_set_effect(%struct.camif_dev*, i32, i32, i32) #1

declare dso_local i32 @camif_hw_set_input_path(%struct.camif_vp*) #1

declare dso_local i32 @camif_cfg_video_path(%struct.camif_vp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
