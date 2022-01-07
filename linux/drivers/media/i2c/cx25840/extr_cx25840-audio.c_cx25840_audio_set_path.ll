; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-audio.c_cx25840_audio_set_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-audio.c_cx25840_audio_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i64, i32 }

@CX25840_AUDIO_SERIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25840_audio_set_path(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call i32 @i2c_get_clientdata(%struct.i2c_client* %4)
  %6 = call %struct.cx25840_state* @to_state(i32 %5)
  store %struct.cx25840_state* %6, %struct.cx25840_state** %3, align 8
  %7 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %8 = call i32 @is_cx2583x(%struct.cx25840_state* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = call i32 @cx25840_and_or(%struct.i2c_client* %11, i32 2064, i32 -2, i32 1)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = call i32 @cx25840_and_or(%struct.i2c_client* %13, i32 2051, i32 -17, i32 0)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %16 = call i32 @cx25840_write(%struct.i2c_client* %15, i32 2259, i32 31)
  %17 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %18 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CX25840_AUDIO_SERIAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %24 = call i32 @cx25840_write4(%struct.i2c_client* %23, i32 2256, i32 16846866)
  br label %28

25:                                               ; preds = %10
  %26 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %27 = call i32 @cx25840_write4(%struct.i2c_client* %26, i32 2256, i32 520501360)
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %31 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %32 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @set_audclk_freq(%struct.i2c_client* %30, i32 %33)
  %35 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %36 = call i32 @is_cx2583x(%struct.cx25840_state* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %29
  %39 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %40 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CX25840_AUDIO_SERIAL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %46 = call i32 @cx25840_and_or(%struct.i2c_client* %45, i32 2051, i32 -17, i32 16)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %49 = call i32 @cx25840_and_or(%struct.i2c_client* %48, i32 2064, i32 -2, i32 0)
  %50 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %51 = call i64 @is_cx2388x(%struct.cx25840_state* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %55 = call i64 @is_cx231xx(%struct.cx25840_state* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %47
  %58 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %59 = call i32 @cx25840_and_or(%struct.i2c_client* %58, i32 2051, i32 -17, i32 16)
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %29
  ret void
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @is_cx2583x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @set_audclk_freq(%struct.i2c_client*, i32) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx231xx(%struct.cx25840_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
