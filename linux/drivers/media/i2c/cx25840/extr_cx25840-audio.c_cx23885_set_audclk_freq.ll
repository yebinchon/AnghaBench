; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-audio.c_cx23885_set_audclk_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-audio.c_cx23885_set_audclk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i64, i32 }

@CX25840_AUDIO_SERIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @cx23885_set_audclk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_set_audclk_freq(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx25840_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call i32 @i2c_get_clientdata(%struct.i2c_client* %6)
  %8 = call %struct.cx25840_state* @to_state(i32 %7)
  store %struct.cx25840_state* %8, %struct.cx25840_state** %5, align 8
  %9 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %10 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CX25840_AUDIO_SERIAL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %17 [
    i32 32000, label %16
    i32 44100, label %16
    i32 48000, label %16
  ]

16:                                               ; preds = %14, %14, %14
  br label %17

17:                                               ; preds = %14, %16
  br label %31

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %30 [
    i32 32000, label %20
    i32 44100, label %20
    i32 48000, label %21
  ]

20:                                               ; preds = %18, %18
  br label %30

21:                                               ; preds = %18
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = call i32 @cx25840_write4(%struct.i2c_client* %22, i32 2296, i32 134317692)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = call i32 @cx25840_write4(%struct.i2c_client* %24, i32 2304, i32 134303658)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = call i32 @cx25840_write4(%struct.i2c_client* %26, i32 2308, i32 134303658)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = call i32 @cx25840_write4(%struct.i2c_client* %28, i32 2316, i32 134303658)
  br label %30

30:                                               ; preds = %18, %21, %20
  br label %31

31:                                               ; preds = %30, %17
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %34 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  ret i32 0
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
