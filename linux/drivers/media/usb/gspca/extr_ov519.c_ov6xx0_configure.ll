; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov6xx0_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov6xx0_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i8* }
%struct.gspca_dev = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"starting OV6xx0 configuration\0A\00", align 1
@OV7610_REG_COM_I = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error detecting sensor type\0A\00", align 1
@SEN_OV6630 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [99 x i8] c"WARNING: Sensor is an OV66308. Your camera may have been misdetected in previous driver versions.\0A\00", align 1
@SEN_OV6620 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Sensor is an OV6620\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Sensor is an OV66308AE\0A\00", align 1
@SEN_OV66308AF = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Sensor is an OV66308AF\0A\00", align 1
@.str.6 = private unnamed_addr constant [99 x i8] c"WARNING: Sensor is an OV66307. Your camera may have been misdetected in previous driver versions.\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"FATAL: Unknown sensor version: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov6xx0_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov6xx0_configure(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %5 = load %struct.sd*, %struct.sd** %2, align 8
  %6 = bitcast %struct.sd* %5 to %struct.gspca_dev*
  store %struct.gspca_dev* %6, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = load i32, i32* @D_PROBE, align 4
  %9 = call i32 @gspca_dbg(%struct.gspca_dev* %7, i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.sd*, %struct.sd** %2, align 8
  %11 = load i32, i32* @OV7610_REG_COM_I, align 4
  %12 = call i32 @i2c_r(%struct.sd* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %58

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %51 [
    i32 0, label %20
    i32 1, label %25
    i32 2, label %32
    i32 3, label %39
    i32 144, label %46
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @SEN_OV6630, align 8
  %22 = load %struct.sd*, %struct.sd** %2, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.2, i64 0, i64 0))
  br label %55

25:                                               ; preds = %18
  %26 = load i8*, i8** @SEN_OV6620, align 8
  %27 = load %struct.sd*, %struct.sd** %2, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = load i32, i32* @D_PROBE, align 4
  %31 = call i32 @gspca_dbg(%struct.gspca_dev* %29, i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %55

32:                                               ; preds = %18
  %33 = load i8*, i8** @SEN_OV6630, align 8
  %34 = load %struct.sd*, %struct.sd** %2, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = load i32, i32* @D_PROBE, align 4
  %38 = call i32 @gspca_dbg(%struct.gspca_dev* %36, i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %55

39:                                               ; preds = %18
  %40 = load i8*, i8** @SEN_OV66308AF, align 8
  %41 = load %struct.sd*, %struct.sd** %2, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %44 = load i32, i32* @D_PROBE, align 4
  %45 = call i32 @gspca_dbg(%struct.gspca_dev* %43, i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %55

46:                                               ; preds = %18
  %47 = load i8*, i8** @SEN_OV6630, align 8
  %48 = load %struct.sd*, %struct.sd** %2, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.6, i64 0, i64 0))
  br label %55

51:                                               ; preds = %18
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %53)
  br label %58

55:                                               ; preds = %46, %39, %32, %25, %20
  %56 = load %struct.sd*, %struct.sd** %2, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %51, %15
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @i2c_r(%struct.sd*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, ...) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
