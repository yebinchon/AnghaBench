; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sd_get_streamparm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sd_get_streamparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, %struct.v4l2_streamparm*)* @sd_get_streamparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_get_streamparm(%struct.gspca_dev* %0, %struct.v4l2_streamparm* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.v4l2_streamparm*, align 8
  %5 = alloca %struct.v4l2_captureparm*, align 8
  %6 = alloca %struct.v4l2_fract*, align 8
  %7 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.v4l2_streamparm* %1, %struct.v4l2_streamparm** %4, align 8
  %8 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.v4l2_captureparm* %10, %struct.v4l2_captureparm** %5, align 8
  %11 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %11, i32 0, i32 0
  store %struct.v4l2_fract* %12, %struct.v4l2_fract** %6, align 8
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = bitcast %struct.gspca_dev* %13 to %struct.sd*
  store %struct.sd* %14, %struct.sd** %7, align 8
  %15 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.sd*, %struct.sd** %7, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
