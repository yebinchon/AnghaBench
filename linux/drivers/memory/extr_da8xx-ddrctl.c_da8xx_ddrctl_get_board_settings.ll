; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_da8xx-ddrctl.c_da8xx_ddrctl_get_board_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_da8xx-ddrctl.c_da8xx_ddrctl_get_board_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_ddrctl_board_settings = type { %struct.da8xx_ddrctl_setting*, i32 }
%struct.da8xx_ddrctl_setting = type { i32 }

@da8xx_ddrctl_board_confs = common dso_local global %struct.da8xx_ddrctl_board_settings* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.da8xx_ddrctl_setting* ()* @da8xx_ddrctl_get_board_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.da8xx_ddrctl_setting* @da8xx_ddrctl_get_board_settings() #0 {
  %1 = alloca %struct.da8xx_ddrctl_setting*, align 8
  %2 = alloca %struct.da8xx_ddrctl_board_settings*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %0
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.da8xx_ddrctl_board_settings*, %struct.da8xx_ddrctl_board_settings** @da8xx_ddrctl_board_confs, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.da8xx_ddrctl_board_settings* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = load %struct.da8xx_ddrctl_board_settings*, %struct.da8xx_ddrctl_board_settings** @da8xx_ddrctl_board_confs, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.da8xx_ddrctl_board_settings, %struct.da8xx_ddrctl_board_settings* %10, i64 %12
  store %struct.da8xx_ddrctl_board_settings* %13, %struct.da8xx_ddrctl_board_settings** %2, align 8
  %14 = load %struct.da8xx_ddrctl_board_settings*, %struct.da8xx_ddrctl_board_settings** %2, align 8
  %15 = getelementptr inbounds %struct.da8xx_ddrctl_board_settings, %struct.da8xx_ddrctl_board_settings* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @of_machine_is_compatible(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %9
  %20 = load %struct.da8xx_ddrctl_board_settings*, %struct.da8xx_ddrctl_board_settings** %2, align 8
  %21 = getelementptr inbounds %struct.da8xx_ddrctl_board_settings, %struct.da8xx_ddrctl_board_settings* %20, i32 0, i32 0
  %22 = load %struct.da8xx_ddrctl_setting*, %struct.da8xx_ddrctl_setting** %21, align 8
  store %struct.da8xx_ddrctl_setting* %22, %struct.da8xx_ddrctl_setting** %1, align 8
  br label %28

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %4

27:                                               ; preds = %4
  store %struct.da8xx_ddrctl_setting* null, %struct.da8xx_ddrctl_setting** %1, align 8
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.da8xx_ddrctl_setting*, %struct.da8xx_ddrctl_setting** %1, align 8
  ret %struct.da8xx_ddrctl_setting* %29
}

declare dso_local i32 @ARRAY_SIZE(%struct.da8xx_ddrctl_board_settings*) #1

declare dso_local i64 @of_machine_is_compatible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
