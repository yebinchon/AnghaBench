; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.m5mols_info = type { i32, i64 }

@REG_SAMSUNG_TECHWIN = common dso_local global i32 0, align 4
@REG_MONITOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Soft landing lens failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @m5mols_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.m5mols_info*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev* %7)
  store %struct.m5mols_info* %8, %struct.m5mols_info** %5, align 8
  %9 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %10 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %16 = call i32 @m5mols_sensor_power(%struct.m5mols_info* %15, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = call i32 @m5mols_fw_start(%struct.v4l2_subdev* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %14
  br label %49

23:                                               ; preds = %2
  %24 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %25 = load i32, i32* @REG_SAMSUNG_TECHWIN, align 4
  %26 = call i64 @is_manufacturer(%struct.m5mols_info* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %30 = load i32, i32* @REG_MONITOR, align 4
  %31 = call i32 @m5mols_set_mode(%struct.m5mols_info* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %36 = call i32 @m5mols_auto_focus_stop(%struct.m5mols_info* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %42 = call i32 @v4l2_warn(%struct.v4l2_subdev* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %46 = call i32 @m5mols_sensor_power(%struct.m5mols_info* %45, i32 0)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %48 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %22
  %50 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %51 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @m5mols_sensor_power(%struct.m5mols_info*, i32) #1

declare dso_local i32 @m5mols_fw_start(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_manufacturer(%struct.m5mols_info*, i32) #1

declare dso_local i32 @m5mols_set_mode(%struct.m5mols_info*, i32) #1

declare dso_local i32 @m5mols_auto_focus_stop(%struct.m5mols_info*) #1

declare dso_local i32 @v4l2_warn(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
