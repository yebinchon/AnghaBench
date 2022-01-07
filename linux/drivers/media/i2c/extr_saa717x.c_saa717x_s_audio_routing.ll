; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa717x.c_saa717x_s_audio_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa717x.c_saa717x_s_audio_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa717x_state = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"set decoder audio input to %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @saa717x_s_audio_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa717x_s_audio_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.saa717x_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %12 = call %struct.saa717x_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.saa717x_state* %12, %struct.saa717x_state** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.saa717x_state*, %struct.saa717x_state** %10, align 8
  %18 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @debug, align 4
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = load %struct.saa717x_state*, %struct.saa717x_state** %10, align 8
  %22 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @v4l2_dbg(i32 1, i32 %19, %struct.v4l2_subdev* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %26 = load %struct.saa717x_state*, %struct.saa717x_state** %10, align 8
  %27 = call i32 @set_audio_regs(%struct.v4l2_subdev* %25, %struct.saa717x_state* %26)
  store i32 0, i32* %5, align 4
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @ERANGE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %15
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.saa717x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @set_audio_regs(%struct.v4l2_subdev*, %struct.saa717x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
