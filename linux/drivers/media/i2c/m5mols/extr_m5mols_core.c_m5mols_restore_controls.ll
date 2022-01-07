; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_restore_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_restore_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m5mols_info = type { i32, i32 }

@REG_SCENE_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m5mols_restore_controls(%struct.m5mols_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.m5mols_info*, align 8
  %4 = alloca i32, align 4
  store %struct.m5mols_info* %0, %struct.m5mols_info** %3, align 8
  %5 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %6 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %12 = load i32, i32* @REG_SCENE_NORMAL, align 4
  %13 = call i32 @m5mols_do_scenemode(%struct.m5mols_info* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %10
  %19 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %20 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %19, i32 0, i32 1
  %21 = call i32 @v4l2_ctrl_handler_setup(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %27 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %16, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @m5mols_do_scenemode(%struct.m5mols_info*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
