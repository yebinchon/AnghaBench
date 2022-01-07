; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_get_streamparm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_get_streamparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.sd = type { i64 }

@BRIDGE_TP6800 = common dso_local global i64 0, align 8
@rates = common dso_local global i32* null, align 8
@rates_6810 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, %struct.v4l2_streamparm*)* @sd_get_streamparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_get_streamparm(%struct.gspca_dev* %0, %struct.v4l2_streamparm* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.v4l2_streamparm*, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca %struct.v4l2_captureparm*, align 8
  %7 = alloca %struct.v4l2_fract*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.v4l2_streamparm* %1, %struct.v4l2_streamparm** %4, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %5, align 8
  %12 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.v4l2_captureparm* %14, %struct.v4l2_captureparm** %6, align 8
  %15 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %15, i32 0, i32 0
  store %struct.v4l2_fract* %16, %struct.v4l2_fract** %7, align 8
  %17 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = call i32 @get_fr_idx(%struct.gspca_dev* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %2
  %25 = load %struct.sd*, %struct.sd** %5, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BRIDGE_TP6800, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32*, i32** @rates, align 8
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 7
  %34 = sub nsw i32 6, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %46

38:                                               ; preds = %24
  %39 = load i32*, i32** @rates_6810, align 8
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 7
  %42 = sub nsw i32 7, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %38, %30
  br label %54

47:                                               ; preds = %2
  %48 = load i32*, i32** @rates, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 6, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %47, %46
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i32 @get_fr_idx(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
