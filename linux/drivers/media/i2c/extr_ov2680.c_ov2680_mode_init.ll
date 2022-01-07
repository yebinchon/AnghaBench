; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_mode_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2680_mode_info = type { i32 }
%struct.ov2680_dev = type { i32, %struct.ov2680_mode_info*, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@MEDIA_BUS_FMT_SBGGR10_1X10 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@OV2680_FRAME_RATE = common dso_local global i32 0, align 4
@ov2680_mode_init_data = common dso_local global %struct.ov2680_mode_info zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2680_dev*)* @ov2680_mode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_mode_init(%struct.ov2680_dev* %0) #0 {
  %2 = alloca %struct.ov2680_dev*, align 8
  %3 = alloca %struct.ov2680_mode_info*, align 8
  store %struct.ov2680_dev* %0, %struct.ov2680_dev** %2, align 8
  %4 = load i32, i32* @MEDIA_BUS_FMT_SBGGR10_1X10, align 4
  %5 = load %struct.ov2680_dev*, %struct.ov2680_dev** %2, align 8
  %6 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i32 %4, i32* %7, align 8
  %8 = load %struct.ov2680_dev*, %struct.ov2680_dev** %2, align 8
  %9 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 800, i32* %10, align 8
  %11 = load %struct.ov2680_dev*, %struct.ov2680_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 600, i32* %13, align 4
  %14 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %15 = load %struct.ov2680_dev*, %struct.ov2680_dev** %2, align 8
  %16 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %19 = load %struct.ov2680_dev*, %struct.ov2680_dev** %2, align 8
  %20 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @OV2680_FRAME_RATE, align 4
  %23 = load %struct.ov2680_dev*, %struct.ov2680_dev** %2, align 8
  %24 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.ov2680_dev*, %struct.ov2680_dev** %2, align 8
  %27 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  store %struct.ov2680_mode_info* @ov2680_mode_init_data, %struct.ov2680_mode_info** %3, align 8
  %29 = load %struct.ov2680_mode_info*, %struct.ov2680_mode_info** %3, align 8
  %30 = load %struct.ov2680_dev*, %struct.ov2680_dev** %2, align 8
  %31 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %30, i32 0, i32 1
  store %struct.ov2680_mode_info* %29, %struct.ov2680_mode_info** %31, align 8
  %32 = load %struct.ov2680_dev*, %struct.ov2680_dev** %2, align 8
  %33 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
