; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_wait_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_wait_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.m5mols_info = type { i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@SYSTEM_INT_FACTOR = common dso_local global i32 0, align 4
@M5MOLS_I2C_RDY_WAIT_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m5mols_wait_interrupt(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.m5mols_info*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev* %10)
  store %struct.m5mols_info* %11, %struct.m5mols_info** %8, align 8
  %12 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %13 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %16 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %15, i32 0, i32 0
  %17 = call i32 @atomic_add_unless(i32* %16, i32 -1, i32 0)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @msecs_to_jiffies(i32 %18)
  %20 = call i32 @wait_event_interruptible_timeout(i32 %14, i32 %17, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i32 [ %27, %26 ], [ %30, %28 ]
  store i32 %32, i32* %4, align 4
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %35 = load i32, i32* @SYSTEM_INT_FACTOR, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @M5MOLS_I2C_RDY_WAIT_FL, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @m5mols_busy_wait(%struct.v4l2_subdev* %34, i32 %35, i32 %36, i32 %39, i32 -1)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %31
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @m5mols_busy_wait(%struct.v4l2_subdev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
