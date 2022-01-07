; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_setframerate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_setframerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i64 }

@BRIDGE_TP6810 = common dso_local global i64 0, align 8
@SENSOR_CX0342 = common dso_local global i64 0, align 8
@TP6800_R3F_FRAME_RATE = common dso_local global i32 0, align 4
@CX0342_AUTO_ADC_CALIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setframerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setframerate(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = call i32 @get_fr_idx(%struct.gspca_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.sd*, %struct.sd** %5, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BRIDGE_TP6810, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = call i32 @reg_r(%struct.gspca_dev* %17, i32 123)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = load %struct.sd*, %struct.sd** %5, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SENSOR_CX0342, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 16, i32 144
  %27 = call i32 @reg_w(%struct.gspca_dev* %19, i32 123, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 128
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i32 240, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %16
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = load i32, i32* @TP6800_R3F_FRAME_RATE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @reg_w(%struct.gspca_dev* %33, i32 %34, i32 %35)
  %37 = load %struct.sd*, %struct.sd** %5, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SENSOR_CX0342, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %44 = load i32, i32* @CX0342_AUTO_ADC_CALIB, align 4
  %45 = call i32 @i2c_w(%struct.gspca_dev* %43, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %42, %32
  ret void
}

declare dso_local i32 @get_fr_idx(%struct.gspca_dev*) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
