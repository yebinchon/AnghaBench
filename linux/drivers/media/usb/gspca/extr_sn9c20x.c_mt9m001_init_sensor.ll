; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_mt9m001_init_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_mt9m001_init_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }
%struct.sd = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"MT9M001 color sensor detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"MT9M001 mono sensor detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"No MT9M001 chip detected, ID = %x\0A\0A\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@mt9m001_init = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"MT9M001 sensor initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @mt9m001_init_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt9m001_init_sensor(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @i2c_r2(%struct.gspca_dev* %7, i32 0, i32* %4)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %44

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %20 [
    i32 33809, label %16
    i32 33825, label %16
    i32 33841, label %18
  ]

16:                                               ; preds = %14, %14
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %27

18:                                               ; preds = %14
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %27

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* @ENODEV, align 8
  %24 = sub nsw i64 0, %23
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %44

27:                                               ; preds = %18, %16
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = load i32, i32* @mt9m001_init, align 4
  %30 = load i32, i32* @mt9m001_init, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @i2c_w2_buf(%struct.gspca_dev* %28, i32 %29, i32 %31)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %27
  %40 = load %struct.sd*, %struct.sd** %3, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.sd*, %struct.sd** %3, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %20, %13
  ret void
}

declare dso_local i32 @i2c_r2(%struct.gspca_dev*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @i2c_w2_buf(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
