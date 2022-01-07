; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_da8xx-ddrctl.c_da8xx_ddrctl_match_knob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_da8xx-ddrctl.c_da8xx_ddrctl_match_knob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_ddrctl_config_knob = type { i32 }
%struct.da8xx_ddrctl_setting = type { i32 }

@da8xx_ddrctl_knobs = common dso_local global %struct.da8xx_ddrctl_config_knob* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.da8xx_ddrctl_config_knob* (%struct.da8xx_ddrctl_setting*)* @da8xx_ddrctl_match_knob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.da8xx_ddrctl_config_knob* @da8xx_ddrctl_match_knob(%struct.da8xx_ddrctl_setting* %0) #0 {
  %2 = alloca %struct.da8xx_ddrctl_config_knob*, align 8
  %3 = alloca %struct.da8xx_ddrctl_setting*, align 8
  %4 = alloca %struct.da8xx_ddrctl_config_knob*, align 8
  %5 = alloca i32, align 4
  store %struct.da8xx_ddrctl_setting* %0, %struct.da8xx_ddrctl_setting** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.da8xx_ddrctl_config_knob*, %struct.da8xx_ddrctl_config_knob** @da8xx_ddrctl_knobs, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.da8xx_ddrctl_config_knob* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = load %struct.da8xx_ddrctl_config_knob*, %struct.da8xx_ddrctl_config_knob** @da8xx_ddrctl_knobs, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.da8xx_ddrctl_config_knob, %struct.da8xx_ddrctl_config_knob* %12, i64 %14
  store %struct.da8xx_ddrctl_config_knob* %15, %struct.da8xx_ddrctl_config_knob** %4, align 8
  %16 = load %struct.da8xx_ddrctl_config_knob*, %struct.da8xx_ddrctl_config_knob** %4, align 8
  %17 = getelementptr inbounds %struct.da8xx_ddrctl_config_knob, %struct.da8xx_ddrctl_config_knob* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.da8xx_ddrctl_setting*, %struct.da8xx_ddrctl_setting** %3, align 8
  %20 = getelementptr inbounds %struct.da8xx_ddrctl_setting, %struct.da8xx_ddrctl_setting* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcmp(i32 %18, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = load %struct.da8xx_ddrctl_config_knob*, %struct.da8xx_ddrctl_config_knob** %4, align 8
  store %struct.da8xx_ddrctl_config_knob* %25, %struct.da8xx_ddrctl_config_knob** %2, align 8
  br label %31

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  store %struct.da8xx_ddrctl_config_knob* null, %struct.da8xx_ddrctl_config_knob** %2, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.da8xx_ddrctl_config_knob*, %struct.da8xx_ddrctl_config_knob** %2, align 8
  ret %struct.da8xx_ddrctl_config_knob* %32
}

declare dso_local i32 @ARRAY_SIZE(%struct.da8xx_ddrctl_config_knob*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
