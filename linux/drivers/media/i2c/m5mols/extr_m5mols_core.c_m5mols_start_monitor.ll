; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_start_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_start_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m5mols_info = type { i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@REG_PARAMETER = common dso_local global i32 0, align 4
@PARM_MON_SIZE = common dso_local global i32 0, align 4
@PARM_MON_FPS = common dso_local global i32 0, align 4
@REG_FPS_30 = common dso_local global i32 0, align 4
@REG_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m5mols_info*)* @m5mols_start_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_start_monitor(%struct.m5mols_info* %0) #0 {
  %2 = alloca %struct.m5mols_info*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  store %struct.m5mols_info* %0, %struct.m5mols_info** %2, align 8
  %5 = load %struct.m5mols_info*, %struct.m5mols_info** %2, align 8
  %6 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %5, i32 0, i32 1
  store %struct.v4l2_subdev* %6, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.m5mols_info*, %struct.m5mols_info** %2, align 8
  %8 = load i32, i32* @REG_PARAMETER, align 4
  %9 = call i32 @m5mols_set_mode(%struct.m5mols_info* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = load i32, i32* @PARM_MON_SIZE, align 4
  %15 = load %struct.m5mols_info*, %struct.m5mols_info** %2, align 8
  %16 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @m5mols_write(%struct.v4l2_subdev* %13, i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %12, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %24 = load i32, i32* @PARM_MON_FPS, align 4
  %25 = load i32, i32* @REG_FPS_30, align 4
  %26 = call i32 @m5mols_write(%struct.v4l2_subdev* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load %struct.m5mols_info*, %struct.m5mols_info** %2, align 8
  %32 = load i32, i32* @REG_MONITOR, align 4
  %33 = call i32 @m5mols_set_mode(%struct.m5mols_info* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.m5mols_info*, %struct.m5mols_info** %2, align 8
  %39 = call i32 @m5mols_restore_controls(%struct.m5mols_info* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @m5mols_set_mode(%struct.m5mols_info*, i32) #1

declare dso_local i32 @m5mols_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @m5mols_restore_controls(%struct.m5mols_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
