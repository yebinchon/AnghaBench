; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@STK1135_REG_GCTRL = common dso_local global i64 0, align 8
@STK1135_REG_ICTRL = common dso_local global i64 0, align 8
@STK1135_REG_RMCTL = common dso_local global i64 0, align 8
@STK1135_REG_SICTL = common dso_local global i64 0, align 8
@STK1135_REG_ASIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"MT9M112\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Detected sensor type %s (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %5, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = load i64, i64* @STK1135_REG_GCTRL, align 8
  %10 = add nsw i64 %9, 2
  %11 = call i32 @reg_w(%struct.gspca_dev* %8, i64 %10, i32 120)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = load i64, i64* @STK1135_REG_GCTRL, align 8
  %14 = call i32 @reg_w(%struct.gspca_dev* %12, i64 %13, i32 32)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = load i64, i64* @STK1135_REG_GCTRL, align 8
  %17 = add nsw i64 %16, 3
  %18 = call i32 @reg_w(%struct.gspca_dev* %15, i64 %17, i32 128)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load i64, i64* @STK1135_REG_ICTRL, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @reg_w(%struct.gspca_dev* %19, i64 %21, i32 0)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = load i64, i64* @STK1135_REG_ICTRL, align 8
  %25 = add nsw i64 %24, 3
  %26 = call i32 @reg_w(%struct.gspca_dev* %23, i64 %25, i32 3)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = load i64, i64* @STK1135_REG_RMCTL, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @reg_w(%struct.gspca_dev* %27, i64 %29, i32 0)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = load i64, i64* @STK1135_REG_RMCTL, align 8
  %33 = add nsw i64 %32, 3
  %34 = call i32 @reg_w(%struct.gspca_dev* %31, i64 %33, i32 2)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = load i64, i64* @STK1135_REG_SICTL, align 8
  %37 = call i32 @reg_w(%struct.gspca_dev* %35, i64 %36, i32 128)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = load i64, i64* @STK1135_REG_SICTL, align 8
  %40 = call i32 @reg_w(%struct.gspca_dev* %38, i64 %39, i32 0)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = load i64, i64* @STK1135_REG_SICTL, align 8
  %43 = add nsw i64 %42, 3
  %44 = call i32 @reg_w(%struct.gspca_dev* %41, i64 %43, i32 186)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = load i64, i64* @STK1135_REG_ASIC, align 8
  %47 = add nsw i64 %46, 3
  %48 = call i32 @reg_w(%struct.gspca_dev* %45, i64 %47, i32 0)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @stk1135_configure_clock(%struct.gspca_dev* %49)
  %51 = load %struct.sd*, %struct.sd** %5, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 0
  store i32 255, i32* %52, align 4
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = call i32 @sensor_read(%struct.gspca_dev* %53, i32 0)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  switch i32 %55, label %57 [
    i32 5260, label %56
  ]

56:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %58

57:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %59, i32 %60)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = call i32 @stk1135_camera_disable(%struct.gspca_dev* %62)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  ret i32 %66
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i64, i32) #1

declare dso_local i32 @stk1135_configure_clock(%struct.gspca_dev*) #1

declare dso_local i32 @sensor_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i32) #1

declare dso_local i32 @stk1135_camera_disable(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
