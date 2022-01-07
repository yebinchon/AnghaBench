; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_sd_start_72a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_sd_start_72a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32, i32, i32 }

@rev72a_reset = common dso_local global i32 0, align 4
@rev72a_init_data1 = common dso_local global i32 0, align 4
@rev72a_init_sensor1 = common dso_local global i32 0, align 4
@rev72a_init_sensor2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start_72a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start_72a(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = load i32, i32* @rev72a_reset, align 4
  %10 = call i32 @write_vector(%struct.gspca_dev* %8, i32 %9)
  %11 = call i32 @msleep(i32 200)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = load i32, i32* @rev72a_init_data1, align 4
  %14 = call i32 @write_vector(%struct.gspca_dev* %12, i32 %13)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = load i32, i32* @rev72a_init_sensor1, align 4
  %17 = call i32 @write_sensor_72a(%struct.gspca_dev* %15, i32 %16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %31 [
    i32 0, label %32
    i32 1, label %33
    i32 2, label %34
    i32 3, label %35
  ]

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %1, %31
  store i32 39, i32* %4, align 4
  br label %36

33:                                               ; preds = %1
  store i32 37, i32* %4, align 4
  br label %36

34:                                               ; preds = %1
  store i32 34, i32* %4, align 4
  br label %36

35:                                               ; preds = %1
  store i32 33, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %34, %33, %32
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @reg_w_val(%struct.gspca_dev* %37, i32 34560, i32 %38)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @reg_w_val(%struct.gspca_dev* %40, i32 34562, i32 129)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @reg_w_val(%struct.gspca_dev* %42, i32 34048, i32 %43)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = load i32, i32* @rev72a_init_sensor2, align 4
  %47 = call i32 @write_sensor_72a(%struct.gspca_dev* %45, i32 %46)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = load %struct.sd*, %struct.sd** %3, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @v4l2_ctrl_g_ctrl(i32 %51)
  %53 = load %struct.sd*, %struct.sd** %3, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @v4l2_ctrl_g_ctrl(i32 %55)
  %57 = call i32 @setwhite(%struct.gspca_dev* %48, i32 %52, i32 %56)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = load %struct.sd*, %struct.sd** %3, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @v4l2_ctrl_g_ctrl(i32 %61)
  %63 = call i32 @setautogain(%struct.gspca_dev* %58, i32 %62)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = call i32 @reg_w_val(%struct.gspca_dev* %64, i32 33042, i32 48)
  ret i32 0
}

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @write_sensor_72a(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @setwhite(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @setautogain(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
