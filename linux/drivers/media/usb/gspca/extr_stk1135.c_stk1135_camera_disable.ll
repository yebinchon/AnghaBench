; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_stk1135_camera_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_stk1135_camera_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@STK1135_REG_CIEPO = common dso_local global i64 0, align 8
@STK1135_REG_SCTRL = common dso_local global i64 0, align 8
@STK1135_REG_SENSO = common dso_local global i64 0, align 8
@STK1135_REG_TMGEN = common dso_local global i64 0, align 8
@STK1135_REG_GCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @stk1135_camera_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stk1135_camera_disable(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = load i64, i64* @STK1135_REG_CIEPO, align 8
  %5 = add nsw i64 %4, 2
  %6 = call i32 @reg_w(%struct.gspca_dev* %3, i64 %5, i32 0)
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = load i64, i64* @STK1135_REG_CIEPO, align 8
  %9 = add nsw i64 %8, 3
  %10 = call i32 @reg_w(%struct.gspca_dev* %7, i64 %9, i32 0)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = load i64, i64* @STK1135_REG_SCTRL, align 8
  %13 = call i32 @reg_w_mask(%struct.gspca_dev* %11, i64 %12, i32 0, i32 128)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @sensor_write_mask(%struct.gspca_dev* %14, i32 13, i32 4, i32 12)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = load i64, i64* @STK1135_REG_SENSO, align 8
  %18 = add nsw i64 %17, 2
  %19 = call i32 @reg_w_mask(%struct.gspca_dev* %16, i64 %18, i32 0, i32 1)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = load i64, i64* @STK1135_REG_TMGEN, align 8
  %22 = call i32 @reg_w(%struct.gspca_dev* %20, i64 %21, i32 0)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = load i64, i64* @STK1135_REG_SENSO, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @reg_w(%struct.gspca_dev* %23, i64 %25, i32 32)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = load i64, i64* @STK1135_REG_SENSO, align 8
  %29 = call i32 @reg_w(%struct.gspca_dev* %27, i64 %28, i32 0)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = load i64, i64* @STK1135_REG_GCTRL, align 8
  %32 = call i32 @reg_w(%struct.gspca_dev* %30, i64 %31, i32 73)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i64, i32) #1

declare dso_local i32 @reg_w_mask(%struct.gspca_dev*, i64, i32, i32) #1

declare dso_local i32 @sensor_write_mask(%struct.gspca_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
