; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_wm5110_apply_sleep_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_wm5110_apply_sleep_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32 }
%struct.arizona_sysclk_state = type { i32 }

@wm5110_sleep_patch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona*)* @wm5110_apply_sleep_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5110_apply_sleep_patch(%struct.arizona* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arizona*, align 8
  %4 = alloca %struct.arizona_sysclk_state, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %3, align 8
  %7 = load %struct.arizona*, %struct.arizona** %3, align 8
  %8 = call i32 @arizona_enable_freerun_sysclk(%struct.arizona* %7, %struct.arizona_sysclk_state* %4)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.arizona*, %struct.arizona** %3, align 8
  %15 = getelementptr inbounds %struct.arizona, %struct.arizona* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @wm5110_sleep_patch, align 4
  %18 = load i32, i32* @wm5110_sleep_patch, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @regmap_multi_reg_write_bypassed(i32 %16, i32 %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.arizona*, %struct.arizona** %3, align 8
  %22 = call i32 @arizona_disable_freerun_sysclk(%struct.arizona* %21, %struct.arizona_sysclk_state* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %28

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ %23, %25 ], [ %27, %26 ]
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @arizona_enable_freerun_sysclk(%struct.arizona*, %struct.arizona_sysclk_state*) #1

declare dso_local i32 @regmap_multi_reg_write_bypassed(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @arizona_disable_freerun_sysclk(%struct.arizona*, %struct.arizona_sysclk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
