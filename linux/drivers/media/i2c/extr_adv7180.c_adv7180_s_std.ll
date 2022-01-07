; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7180_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @adv7180_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adv7180_state*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.adv7180_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.adv7180_state* %9, %struct.adv7180_state** %6, align 8
  %10 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %11 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock_interruptible(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @v4l2_std_to_adv7180(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %29

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %26 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %28 = call i32 @adv7180_program_std(%struct.adv7180_state* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %23, %22
  %30 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %31 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.adv7180_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_std_to_adv7180(i32) #1

declare dso_local i32 @adv7180_program_std(%struct.adv7180_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
