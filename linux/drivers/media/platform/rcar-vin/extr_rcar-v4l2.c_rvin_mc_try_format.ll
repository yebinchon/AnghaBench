; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_mc_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_mc_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32 }

@RVIN_DEFAULT_COLORSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvin_dev*, %struct.v4l2_pix_format*)* @rvin_mc_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvin_mc_try_format(%struct.rvin_dev* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  %5 = load i32, i32* @RVIN_DEFAULT_COLORSPACE, align 4
  %6 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32 %10)
  %12 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32 %16)
  %18 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32 1, i32 %22, i32 %25)
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %31 = call i32 @rvin_format_align(%struct.rvin_dev* %29, %struct.v4l2_pix_format* %30)
  ret void
}

declare dso_local i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32) #1

declare dso_local i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32) #1

declare dso_local i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32, i32, i32) #1

declare dso_local i32 @rvin_format_align(%struct.rvin_dev*, %struct.v4l2_pix_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
