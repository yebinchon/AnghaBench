; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_sd_get_jcomp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_sd_get_jcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.v4l2_jpegcompression = type { i32, i32 }
%struct.sd = type { i32 }

@V4L2_JPEG_MARKER_DHT = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_DQT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.v4l2_jpegcompression*)* @sd_get_jcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_get_jcomp(%struct.gspca_dev* %0, %struct.v4l2_jpegcompression* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.v4l2_jpegcompression*, align 8
  %5 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.v4l2_jpegcompression* %1, %struct.v4l2_jpegcompression** %4, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %5, align 8
  %8 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %9 = call i32 @memset(%struct.v4l2_jpegcompression* %8, i32 0, i32 8)
  %10 = load %struct.sd*, %struct.sd** %5, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @v4l2_ctrl_g_ctrl(i32 %12)
  %14 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @V4L2_JPEG_MARKER_DHT, align 4
  %17 = load i32, i32* @V4L2_JPEG_MARKER_DQT, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.v4l2_jpegcompression*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
