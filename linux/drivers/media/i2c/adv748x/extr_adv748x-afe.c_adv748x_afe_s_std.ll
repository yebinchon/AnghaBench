; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv748x_afe = type { i32 }
%struct.adv748x_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @adv748x_afe_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_afe_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adv748x_afe*, align 8
  %7 = alloca %struct.adv748x_state*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.adv748x_afe* @adv748x_sd_to_afe(%struct.v4l2_subdev* %9)
  store %struct.adv748x_afe* %10, %struct.adv748x_afe** %6, align 8
  %11 = load %struct.adv748x_afe*, %struct.adv748x_afe** %6, align 8
  %12 = call %struct.adv748x_state* @adv748x_afe_to_state(%struct.adv748x_afe* %11)
  store %struct.adv748x_state* %12, %struct.adv748x_state** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @adv748x_afe_std(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %21 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @adv748x_afe_set_video_standard(%struct.adv748x_state* %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.adv748x_afe*, %struct.adv748x_afe** %6, align 8
  %28 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %30 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %19, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.adv748x_afe* @adv748x_sd_to_afe(%struct.v4l2_subdev*) #1

declare dso_local %struct.adv748x_state* @adv748x_afe_to_state(%struct.adv748x_afe*) #1

declare dso_local i32 @adv748x_afe_std(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adv748x_afe_set_video_standard(%struct.adv748x_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
