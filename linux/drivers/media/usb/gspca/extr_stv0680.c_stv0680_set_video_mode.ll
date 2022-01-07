; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stv0680.c_stv0680_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stv0680.c_stv0680_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64* }
%struct.sd = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Set_Camera_Mode failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error setting camera video mode!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i64)* @stv0680_set_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0680_set_video_mode(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %6, align 8
  %9 = load %struct.sd*, %struct.sd** %6, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = call i32 @memset(i64* %18, i32 0, i32 8)
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 %20, i64* %24, align 8
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %26 = call i32 @stv_sndctrl(%struct.gspca_dev* %25, i32 3, i32 7, i32 256, i32 8)
  %27 = icmp ne i32 %26, 8
  br i1 %27, label %28, label %35

28:                                               ; preds = %15
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %30 = call i32 @gspca_err(%struct.gspca_dev* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @stv0680_handle_error(%struct.gspca_dev* %31, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %15
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %37 = call i64 @stv0680_get_video_mode(%struct.gspca_dev* %36)
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %42 = call i32 @gspca_err(%struct.gspca_dev* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %35
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.sd*, %struct.sd** %6, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %40, %28, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @stv_sndctrl(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @stv0680_handle_error(%struct.gspca_dev*, i32) #1

declare dso_local i64 @stv0680_get_video_mode(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
