; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv748x_hdmi = type { i32 }
%struct.adv748x_state = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Detected HDMI signal\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Couldn't detect HDMI video signal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @adv748x_hdmi_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_hdmi_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adv748x_hdmi*, align 8
  %6 = alloca %struct.adv748x_state*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev* %8)
  store %struct.adv748x_hdmi* %9, %struct.adv748x_hdmi** %5, align 8
  %10 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %5, align 8
  %11 = call %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi* %10)
  store %struct.adv748x_state* %11, %struct.adv748x_state** %6, align 8
  %12 = load %struct.adv748x_state*, %struct.adv748x_state** %6, align 8
  %13 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %5, align 8
  %16 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @adv748x_tx_power(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.adv748x_state*, %struct.adv748x_state** %6, align 8
  %25 = call i64 @adv748x_hdmi_has_signal(%struct.adv748x_state* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.adv748x_state*, %struct.adv748x_state** %6, align 8
  %29 = call i32 @adv_dbg(%struct.adv748x_state* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %33

30:                                               ; preds = %23
  %31 = load %struct.adv748x_state*, %struct.adv748x_state** %6, align 8
  %32 = call i32 @adv_dbg(%struct.adv748x_state* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.adv748x_state*, %struct.adv748x_state** %6, align 8
  %36 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev*) #1

declare dso_local %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adv748x_tx_power(i32, i32) #1

declare dso_local i64 @adv748x_hdmi_has_signal(%struct.adv748x_state*) #1

declare dso_local i32 @adv_dbg(%struct.adv748x_state*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
