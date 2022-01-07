; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sd_set_streamparm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sd_set_streamparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }
%struct.v4l2_streamparm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.sd = type { i32 }

@DEFAULT_FRAME_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, %struct.v4l2_streamparm*)* @sd_set_streamparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_set_streamparm(%struct.gspca_dev* %0, %struct.v4l2_streamparm* %1) #0 {
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
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %2
  %25 = load i32, i32* @DEFAULT_FRAME_RATE, align 4
  %26 = load %struct.sd*, %struct.sd** %7, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %38

28:                                               ; preds = %19
  %29 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  %36 = load %struct.sd*, %struct.sd** %7, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %28, %24
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = call i32 @set_frame_rate(%struct.gspca_dev* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.sd*, %struct.sd** %7, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local i32 @set_frame_rate(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
