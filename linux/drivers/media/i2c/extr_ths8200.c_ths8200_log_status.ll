; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths8200.c_ths8200_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths8200.c_ths8200_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ths8200_state = type { i32, i32 }

@THS8200_CHIP_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"----- Chip status -----\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"version: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"power: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"reset: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"test pattern: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"format: %ux%u\0A\00", align 1
@THS8200_DTG2_PIXEL_CNT_MSB = common dso_local global i32 0, align 4
@THS8200_DTG2_PIXEL_CNT_LSB = common dso_local global i32 0, align 4
@THS8200_DTG2_LINE_CNT_MSB = common dso_local global i32 0, align 4
@THS8200_DTG2_LINE_CNT_LSB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"Configured format:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ths8200_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ths8200_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.ths8200_state*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.ths8200_state* @to_state(%struct.v4l2_subdev* %5)
  store %struct.ths8200_state* %6, %struct.ths8200_state** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = load i32, i32* @THS8200_CHIP_CTL, align 4
  %9 = call i32 @ths8200_read(%struct.v4l2_subdev* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %11 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %13 = load %struct.ths8200_state*, %struct.ths8200_state** %3, align 8
  %14 = getelementptr inbounds %struct.ths8200_state, %struct.ths8200_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 12
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %23 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %30 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %29)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)
  %37 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %36)
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %40 = load i32, i32* @THS8200_DTG2_PIXEL_CNT_MSB, align 4
  %41 = call i32 @ths8200_read(%struct.v4l2_subdev* %39, i32 %40)
  %42 = mul nsw i32 %41, 256
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %44 = load i32, i32* @THS8200_DTG2_PIXEL_CNT_LSB, align 4
  %45 = call i32 @ths8200_read(%struct.v4l2_subdev* %43, i32 %44)
  %46 = add nsw i32 %42, %45
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %48 = load i32, i32* @THS8200_DTG2_LINE_CNT_MSB, align 4
  %49 = call i32 @ths8200_read(%struct.v4l2_subdev* %47, i32 %48)
  %50 = and i32 %49, 7
  %51 = mul nsw i32 %50, 256
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %53 = load i32, i32* @THS8200_DTG2_LINE_CNT_LSB, align 4
  %54 = call i32 @ths8200_read(%struct.v4l2_subdev* %52, i32 %53)
  %55 = add nsw i32 %51, %54
  %56 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %46, i32 %55)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ths8200_state*, %struct.ths8200_state** %3, align 8
  %61 = getelementptr inbounds %struct.ths8200_state, %struct.ths8200_state* %60, i32 0, i32 0
  %62 = call i32 @v4l2_print_dv_timings(i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32* %61, i32 1)
  ret i32 0
}

declare dso_local %struct.ths8200_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ths8200_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @v4l2_print_dv_timings(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
