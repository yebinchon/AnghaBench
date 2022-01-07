; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7127.c_saa7127_set_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7127.c_saa7127_set_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_reg_value = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.saa7127_state = type { i64, i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Selecting 60 Hz video Standard\0A\00", align 1
@saa7127_init_config_60hz = common dso_local global %struct.i2c_reg_value* null, align 8
@SAA7127_60HZ_DAC_CONTROL = common dso_local global i32 0, align 4
@SAA7129 = common dso_local global i64 0, align 8
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Selecting 50 Hz SECAM video Standard\0A\00", align 1
@saa7127_init_config_50hz_secam = common dso_local global %struct.i2c_reg_value* null, align 8
@SAA7127_50HZ_SECAM_DAC_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Selecting 50 Hz PAL video Standard\0A\00", align 1
@saa7127_init_config_50hz_pal = common dso_local global %struct.i2c_reg_value* null, align 8
@SAA7127_50HZ_PAL_DAC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @saa7127_set_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7127_set_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7127_state*, align 8
  %6 = alloca %struct.i2c_reg_value*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.saa7127_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.saa7127_state* %8, %struct.saa7127_state** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @V4L2_STD_525_60, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @debug, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %16 = call i32 @v4l2_dbg(i32 1, i32 %14, %struct.v4l2_subdev* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** @saa7127_init_config_60hz, align 8
  store %struct.i2c_reg_value* %17, %struct.i2c_reg_value** %6, align 8
  %18 = load i32, i32* @SAA7127_60HZ_DAC_CONTROL, align 4
  %19 = load %struct.saa7127_state*, %struct.saa7127_state** %5, align 8
  %20 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.saa7127_state*, %struct.saa7127_state** %5, align 8
  %23 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SAA7129, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @V4L2_STD_SECAM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @V4L2_STD_625_50, align 4
  %35 = load i32, i32* @V4L2_STD_SECAM, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = and i32 %33, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @debug, align 4
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %43 = call i32 @v4l2_dbg(i32 1, i32 %41, %struct.v4l2_subdev* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** @saa7127_init_config_50hz_secam, align 8
  store %struct.i2c_reg_value* %44, %struct.i2c_reg_value** %6, align 8
  %45 = load i32, i32* @SAA7127_50HZ_SECAM_DAC_CONTROL, align 4
  %46 = load %struct.saa7127_state*, %struct.saa7127_state** %5, align 8
  %47 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %56

48:                                               ; preds = %32, %27, %21
  %49 = load i32, i32* @debug, align 4
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %51 = call i32 @v4l2_dbg(i32 1, i32 %49, %struct.v4l2_subdev* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** @saa7127_init_config_50hz_pal, align 8
  store %struct.i2c_reg_value* %52, %struct.i2c_reg_value** %6, align 8
  %53 = load i32, i32* @SAA7127_50HZ_PAL_DAC_CONTROL, align 4
  %54 = load %struct.saa7127_state*, %struct.saa7127_state** %5, align 8
  %55 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %48, %40
  br label %57

57:                                               ; preds = %56, %13
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %59 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %6, align 8
  %60 = call i32 @saa7127_write_inittab(%struct.v4l2_subdev* %58, %struct.i2c_reg_value* %59)
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.saa7127_state*, %struct.saa7127_state** %5, align 8
  %63 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  ret i32 0
}

declare dso_local %struct.saa7127_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @saa7127_write_inittab(%struct.v4l2_subdev*, %struct.i2c_reg_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
