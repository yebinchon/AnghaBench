; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov_hires_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov_hires_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64, i32 }
%struct.gspca_dev = type { i32 }

@BRIDGE_OVFX2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"error hires sensors only supported with ovfx2\0A\00", align 1
@D_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"starting ov hires configuration\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Sensor is a OV2610\0A\00", align 1
@SEN_OV2610 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Sensor is a OV2610AE\0A\00", align 1
@SEN_OV2610AE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Sensor is a OV9600\0A\00", align 1
@SEN_OV9600 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Sensor is a OV3610\0A\00", align 1
@SEN_OV3610 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Error unknown sensor type: %02x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov_hires_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov_hires_configure(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %6 = load %struct.sd*, %struct.sd** %2, align 8
  %7 = bitcast %struct.sd* %6 to %struct.gspca_dev*
  store %struct.gspca_dev* %7, %struct.gspca_dev** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %2, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BRIDGE_OVFX2, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = load i32, i32* @D_PROBE, align 4
  %19 = call i32 @gspca_dbg(%struct.gspca_dev* %17, i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.sd*, %struct.sd** %2, align 8
  %21 = call i32 @i2c_r(%struct.sd* %20, i32 10)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.sd*, %struct.sd** %2, align 8
  %23 = call i32 @i2c_r(%struct.sd* %22, i32 11)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %61 [
    i32 150, label %25
    i32 54, label %49
  ]

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %48 [
    i32 64, label %27
    i32 65, label %34
    i32 177, label %41
  ]

27:                                               ; preds = %25
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = load i32, i32* @D_PROBE, align 4
  %30 = call i32 @gspca_dbg(%struct.gspca_dev* %28, i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @SEN_OV2610, align 4
  %32 = load %struct.sd*, %struct.sd** %2, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %66

34:                                               ; preds = %25
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = load i32, i32* @D_PROBE, align 4
  %37 = call i32 @gspca_dbg(%struct.gspca_dev* %35, i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @SEN_OV2610AE, align 4
  %39 = load %struct.sd*, %struct.sd** %2, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %66

41:                                               ; preds = %25
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = load i32, i32* @D_PROBE, align 4
  %44 = call i32 @gspca_dbg(%struct.gspca_dev* %42, i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32, i32* @SEN_OV9600, align 4
  %46 = load %struct.sd*, %struct.sd** %2, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  br label %66

48:                                               ; preds = %25
  br label %61

49:                                               ; preds = %16
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 15
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = load i32, i32* @D_PROBE, align 4
  %56 = call i32 @gspca_dbg(%struct.gspca_dev* %54, i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32, i32* @SEN_OV3610, align 4
  %58 = load %struct.sd*, %struct.sd** %2, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %66

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %16, %60, %48
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %53, %41, %34, %27, %13
  ret void
}

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, ...) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @i2c_r(%struct.sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
