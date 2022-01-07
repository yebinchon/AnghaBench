; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_format_bytesperline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_format_bytesperline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32 }
%struct.v4l2_pix_format = type { i64, i32 }
%struct.rvin_video_format = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*, %struct.v4l2_pix_format*)* @rvin_format_bytesperline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_format_bytesperline(%struct.rvin_dev* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvin_dev*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca %struct.rvin_video_format*, align 8
  %7 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %4, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %5, align 8
  %8 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %9 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call %struct.rvin_video_format* @rvin_format_from_pixel(%struct.rvin_dev* %8, i64 %11)
  store %struct.rvin_video_format* %12, %struct.rvin_video_format** %6, align 8
  %13 = load %struct.rvin_video_format*, %struct.rvin_video_format** %6, align 8
  %14 = icmp ne %struct.rvin_video_format* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_PIX_FMT_NV16, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 32, i32 16
  store i32 %29, i32* %7, align 4
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ALIGN(i32 %32, i32 %33)
  %35 = load %struct.rvin_video_format*, %struct.rvin_video_format** %6, align 8
  %36 = getelementptr inbounds %struct.rvin_video_format, %struct.rvin_video_format* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %22, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.rvin_video_format* @rvin_format_from_pixel(%struct.rvin_dev*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
