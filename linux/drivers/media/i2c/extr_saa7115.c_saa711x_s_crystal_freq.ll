; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_s_crystal_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_s_crystal_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { i32, i32, i64, i64, i64, i64 }

@SAA7115_FREQ_32_11_MHZ = common dso_local global i64 0, align 8
@SAA7115_FREQ_24_576_MHZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SAA7115_FREQ_FL_DOUBLE_ASCLK = common dso_local global i64 0, align 8
@SAA7115_FREQ_FL_CGCDIV = common dso_local global i64 0, align 8
@SAA7115_FREQ_FL_UCGC = common dso_local global i64 0, align 8
@SAA7115_FREQ_FL_APLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, i64)* @saa711x_s_crystal_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_s_crystal_freq(%struct.v4l2_subdev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.saa711x_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.saa711x_state* %10, %struct.saa711x_state** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @SAA7115_FREQ_32_11_MHZ, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @SAA7115_FREQ_24_576_MHZ, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %14, %3
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.saa711x_state*, %struct.saa711x_state** %8, align 8
  %24 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %23, i32 0, i32 5
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @SAA7115_FREQ_FL_DOUBLE_ASCLK, align 8
  %27 = and i64 %25, %26
  %28 = load %struct.saa711x_state*, %struct.saa711x_state** %8, align 8
  %29 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %28, i32 0, i32 4
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @SAA7115_FREQ_FL_CGCDIV, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 3, i32 4
  %36 = load %struct.saa711x_state*, %struct.saa711x_state** %8, align 8
  %37 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @SAA7115_FREQ_FL_UCGC, align 8
  %40 = and i64 %38, %39
  %41 = load %struct.saa711x_state*, %struct.saa711x_state** %8, align 8
  %42 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @SAA7115_FREQ_FL_APLL, align 8
  %45 = and i64 %43, %44
  %46 = load %struct.saa711x_state*, %struct.saa711x_state** %8, align 8
  %47 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %49 = load %struct.saa711x_state*, %struct.saa711x_state** %8, align 8
  %50 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @saa711x_s_clock_freq(%struct.v4l2_subdev* %48, i32 %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %21, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa711x_s_clock_freq(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
