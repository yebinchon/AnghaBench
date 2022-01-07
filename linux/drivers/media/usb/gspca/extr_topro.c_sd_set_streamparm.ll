; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_set_streamparm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_set_streamparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i64 }
%struct.v4l2_streamparm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.sd = type { i32 }

@DEFAULT_FRAME_RATE = common dso_local global i32 0, align 4
@rates_6810 = common dso_local global i32* null, align 8
@rates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, %struct.v4l2_streamparm*)* @sd_set_streamparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_set_streamparm(%struct.gspca_dev* %0, %struct.v4l2_streamparm* %1) #0 {
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
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @DEFAULT_FRAME_RATE, align 4
  %28 = load %struct.sd*, %struct.sd** %5, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %40

30:                                               ; preds = %21
  %31 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %33, %36
  %38 = load %struct.sd*, %struct.sd** %5, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %30, %26
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @v4l2_ctrl_g_ctrl(i32 %49)
  %51 = call i32 @setframerate(%struct.gspca_dev* %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %54 = call i32 @get_fr_idx(%struct.gspca_dev* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i32*, i32** @rates_6810, align 8
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 7
  %62 = sub nsw i32 7, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  br label %73

66:                                               ; preds = %52
  %67 = load i32*, i32** @rates, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 6, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %66, %58
  %74 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  ret void
}

declare dso_local i32 @setframerate(%struct.gspca_dev*, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @get_fr_idx(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
