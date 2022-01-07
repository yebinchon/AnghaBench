; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7180_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.adv7180_state*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @adv7180_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adv7180_state*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %13 = call %struct.adv7180_state* @to_state(%struct.v4l2_subdev* %12)
  store %struct.adv7180_state* %13, %struct.adv7180_state** %10, align 8
  %14 = load %struct.adv7180_state*, %struct.adv7180_state** %10, align 8
  %15 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock_interruptible(i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %58

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 31
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load %struct.adv7180_state*, %struct.adv7180_state** %10, align 8
  %28 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %24, %21
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %53

37:                                               ; preds = %24
  %38 = load %struct.adv7180_state*, %struct.adv7180_state** %10, align 8
  %39 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.adv7180_state*, i32)*, i32 (%struct.adv7180_state*, i32)** %41, align 8
  %43 = load %struct.adv7180_state*, %struct.adv7180_state** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 %42(%struct.adv7180_state* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.adv7180_state*, %struct.adv7180_state** %10, align 8
  %51 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %37
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.adv7180_state*, %struct.adv7180_state** %10, align 8
  %55 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.adv7180_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
