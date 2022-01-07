; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_sd_stop0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_sd_stop0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i32 }

@SENSOR_MI1310_SOC = common dso_local global i64 0, align 8
@FL_SAMSUNG = common dso_local global i32 0, align 4
@SENSOR_POxxxx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_stop0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_stop0(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SENSOR_MI1310_SOC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = call i32 @reg_w(%struct.gspca_dev* %18, i32 137, i32 1420, i32 255)
  br label %31

20:                                               ; preds = %11
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FL_SAMSUNG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = call i32 @reg_w(%struct.gspca_dev* %28, i32 137, i32 65535, i32 65535)
  br label %30

30:                                               ; preds = %27, %20
  br label %31

31:                                               ; preds = %30, %17
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SENSOR_POxxxx, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @reg_w(%struct.gspca_dev* %38, i32 160, i32 38, i32 45824)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @reg_w(%struct.gspca_dev* %40, i32 160, i32 4, i32 45824)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = call i32 @reg_w(%struct.gspca_dev* %42, i32 160, i32 0, i32 45824)
  br label %44

44:                                               ; preds = %10, %37, %31
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
