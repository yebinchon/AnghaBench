; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda7432.c_tda7432_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda7432.c_tda7432_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@TDA7432_IN = common dso_local global i8 0, align 1
@TDA7432_STEREO_IN = common dso_local global i8 0, align 1
@TDA7432_BASS_SYM = common dso_local global i8 0, align 1
@TDA7432_BASS_NORM = common dso_local global i8 0, align 1
@loudness = common dso_local global i8 0, align 1
@TDA7432_LD_ON = common dso_local global i8 0, align 1
@TDA7432_TREBLE_0DB = common dso_local global i32 0, align 4
@TDA7432_BASS_0DB = common dso_local global i32 0, align 4
@TDA7432_ATTEN_0DB = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [31 x i8] c"I/O error, trying tda7432_set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @tda7432_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda7432_set(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca [16 x i8], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %4, align 8
  %8 = load i8, i8* @TDA7432_IN, align 1
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  store i8 %8, i8* %9, align 16
  %10 = load i8, i8* @TDA7432_STEREO_IN, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @TDA7432_BASS_SYM, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i8, i8* @TDA7432_BASS_NORM, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 1
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 2
  store i8 59, i8* %20, align 2
  %21 = load i8, i8* @loudness, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load i8, i8* @TDA7432_LD_ON, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 2
  %27 = load i8, i8* %26, align 2
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %25
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %26, align 2
  br label %31

31:                                               ; preds = %23, %1
  %32 = load i32, i32* @TDA7432_TREBLE_0DB, align 4
  %33 = load i32, i32* @TDA7432_BASS_0DB, align 4
  %34 = shl i32 %33, 4
  %35 = or i32 %32, %34
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 3
  store i8 %36, i8* %37, align 1
  %38 = load i8, i8* @TDA7432_ATTEN_0DB, align 1
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 4
  store i8 %38, i8* %39, align 4
  %40 = load i8, i8* @TDA7432_ATTEN_0DB, align 1
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 5
  store i8 %40, i8* %41, align 1
  %42 = load i8, i8* @TDA7432_ATTEN_0DB, align 1
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 6
  store i8 %42, i8* %43, align 2
  %44 = load i8, i8* @TDA7432_ATTEN_0DB, align 1
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 7
  store i8 %44, i8* %45, align 1
  %46 = load i8, i8* @loudness, align 1
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 8
  store i8 %46, i8* %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %50 = call i32 @i2c_master_send(%struct.i2c_client* %48, i8* %49, i32 9)
  %51 = icmp ne i32 9, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %54 = call i32 @v4l2_err(%struct.v4l2_subdev* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %56

55:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
