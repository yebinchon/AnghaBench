; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.noon010_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @noon010_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noon010_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.noon010_info*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.noon010_info* @to_noon010(%struct.v4l2_subdev* %7)
  store %struct.noon010_info* %8, %struct.noon010_info** %5, align 8
  %9 = load %struct.noon010_info*, %struct.noon010_info** %5, align 8
  %10 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.noon010_info*, %struct.noon010_info** %5, align 8
  %16 = call i32 @power_enable(%struct.noon010_info* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = call i32 @noon010_base_config(%struct.v4l2_subdev* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %14
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %25 = call i32 @noon010_power_ctrl(%struct.v4l2_subdev* %24, i32 0, i32 1)
  %26 = load %struct.noon010_info*, %struct.noon010_info** %5, align 8
  %27 = call i32 @power_disable(%struct.noon010_info* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %22
  %29 = load %struct.noon010_info*, %struct.noon010_info** %5, align 8
  %30 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.noon010_info*, %struct.noon010_info** %5, align 8
  %39 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %38, i32 0, i32 0
  %40 = call i32 @v4l2_ctrl_handler_setup(i32* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %34, %28
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local %struct.noon010_info* @to_noon010(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @power_enable(%struct.noon010_info*) #1

declare dso_local i32 @noon010_base_config(%struct.v4l2_subdev*) #1

declare dso_local i32 @noon010_power_ctrl(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @power_disable(%struct.noon010_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
