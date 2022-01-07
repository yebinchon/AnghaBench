; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_querystd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7180_state = type { i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@ADV7180_STD_AD_PAL_BG_NTSC_J_SECAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*)* @adv7180_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_querystd(%struct.v4l2_subdev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.adv7180_state*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32* %1, i32** %5, align 8
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
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %19 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %48

25:                                               ; preds = %17
  %26 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %27 = load i32, i32* @ADV7180_STD_AD_PAL_BG_NTSC_J_SECAM, align 4
  %28 = call i32 @adv7180_set_video_standard(%struct.adv7180_state* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %48

32:                                               ; preds = %25
  %33 = call i32 @msleep(i32 100)
  %34 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @__adv7180_status(%struct.adv7180_state* %34, i32* null, i32* %35)
  %37 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %38 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @v4l2_std_to_adv7180(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %48

44:                                               ; preds = %32
  %45 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @adv7180_set_video_standard(%struct.adv7180_state* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %43, %31, %22
  %49 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %50 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.adv7180_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @adv7180_set_video_standard(%struct.adv7180_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @__adv7180_status(%struct.adv7180_state*, i32*, i32*) #1

declare dso_local i32 @v4l2_std_to_adv7180(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
