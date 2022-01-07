; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s5c73m3 = type { i8*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"SlimISP_%.2s.bin\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Firmware request failed (%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Loading firmware (%s, %zu B)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SPI write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @s5c73m3_load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_load_fw(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [20 x i8], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.s5c73m3* @sensor_sd_to_s5c73m3(%struct.v4l2_subdev* %9)
  store %struct.s5c73m3* %10, %struct.s5c73m3** %4, align 8
  %11 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %12 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %11, i32 0, i32 2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %15 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %16 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @snprintf(i8* %14, i32 20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %20 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 @request_firmware(%struct.firmware** %6, i8* %19, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %28 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_err(%struct.v4l2_subdev* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %58

31:                                               ; preds = %1
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %34 = load %struct.firmware*, %struct.firmware** %6, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @v4l2_info(%struct.v4l2_subdev* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %33, i32 %36)
  %38 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %39 = load %struct.firmware*, %struct.firmware** %6, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.firmware*, %struct.firmware** %6, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @s5c73m3_spi_write(%struct.s5c73m3* %38, i32 %41, i32 %44, i32 64)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %50 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  br label %54

51:                                               ; preds = %31
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %53 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_err(%struct.v4l2_subdev* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.firmware*, %struct.firmware** %6, align 8
  %56 = call i32 @release_firmware(%struct.firmware* %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %25
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.s5c73m3* @sensor_sd_to_s5c73m3(%struct.v4l2_subdev*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i8*, i32) #1

declare dso_local i32 @s5c73m3_spi_write(%struct.s5c73m3*, i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
