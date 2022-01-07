; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_show_turn_on_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_show_turn_on_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ab8500 = type { i32 }

@AB8500_SYS_CTRL1_BLOCK = common dso_local global i32 0, align 4
@AB8500_TURN_ON_STATUS = common dso_local global i32 0, align 4
@on_stat_lock = common dso_local global i32 0, align 4
@turn_on_stat_mask = common dso_local global i32 0, align 4
@turn_on_stat_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_turn_on_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_turn_on_status(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ab8500*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.ab8500* @dev_get_drvdata(%struct.device* %11)
  store %struct.ab8500* %12, %struct.ab8500** %10, align 8
  %13 = load %struct.ab8500*, %struct.ab8500** %10, align 8
  %14 = load i32, i32* @AB8500_SYS_CTRL1_BLOCK, align 4
  %15 = load i32, i32* @AB8500_TURN_ON_STATUS, align 4
  %16 = call i32 @get_register_interruptible(%struct.ab8500* %13, i32 %14, i32 %15, i32* %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %37

21:                                               ; preds = %3
  %22 = load %struct.ab8500*, %struct.ab8500** %10, align 8
  %23 = call i64 @is_ab9540(%struct.ab8500* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = call i32 @spin_lock(i32* @on_stat_lock)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @turn_on_stat_mask, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @turn_on_stat_set, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = call i32 @spin_unlock(i32* @on_stat_lock)
  br label %33

33:                                               ; preds = %25, %21
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.ab8500* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @get_register_interruptible(%struct.ab8500*, i32, i32, i32*) #1

declare dso_local i64 @is_ab9540(%struct.ab8500*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
