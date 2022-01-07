; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-audio.c_cx25840_s_clock_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-audio.c_cx25840_s_clock_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i64 }

@CX25840_AUDIO_SERIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_s_clock_freq(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.cx25840_state*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %10)
  store %struct.cx25840_state* %11, %struct.cx25840_state** %6, align 8
  %12 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %13 = call i32 @is_cx2583x(%struct.cx25840_state* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = call i32 @cx25840_and_or(%struct.i2c_client* %16, i32 2064, i32 -2, i32 1)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %20 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CX25840_AUDIO_SERIAL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = call i32 @cx25840_and_or(%struct.i2c_client* %25, i32 2051, i32 -17, i32 0)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %28 = call i32 @cx25840_write(%struct.i2c_client* %27, i32 2259, i32 31)
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @set_audclk_freq(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %34 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CX25840_AUDIO_SERIAL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = call i32 @cx25840_and_or(%struct.i2c_client* %39, i32 2051, i32 -17, i32 16)
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %43 = call i32 @is_cx2583x(%struct.cx25840_state* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %47 = call i32 @cx25840_and_or(%struct.i2c_client* %46, i32 2064, i32 -2, i32 0)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @is_cx2583x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @set_audclk_freq(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
