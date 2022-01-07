; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_wm5102_apply_hardware_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_wm5102_apply_hardware_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, i32 }
%struct.arizona_sysclk_state = type { i32 }

@ARIZONA_WRITE_SEQUENCER_CTRL_0 = common dso_local global i32 0, align 4
@ARIZONA_WSEQ_ENA = common dso_local global i32 0, align 4
@ARIZONA_WSEQ_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to start write sequencer: %d\0A\00", align 1
@ARIZONA_WRITE_SEQUENCER_CTRL_1 = common dso_local global i32 0, align 4
@ARIZONA_WSEQ_BUSY = common dso_local global i32 0, align 4
@ARIZONA_WSEQ_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona*)* @wm5102_apply_hardware_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5102_apply_hardware_patch(%struct.arizona* %0) #0 {
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
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.arizona*, %struct.arizona** %3, align 8
  %15 = getelementptr inbounds %struct.arizona, %struct.arizona* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ARIZONA_WRITE_SEQUENCER_CTRL_0, align 4
  %18 = load i32, i32* @ARIZONA_WSEQ_ENA, align 4
  %19 = load i32, i32* @ARIZONA_WSEQ_START, align 4
  %20 = or i32 %18, %19
  %21 = or i32 %20, 160
  %22 = call i32 @regmap_write(i32 %16, i32 %17, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %13
  %26 = load %struct.arizona*, %struct.arizona** %3, align 8
  %27 = getelementptr inbounds %struct.arizona, %struct.arizona* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %46

31:                                               ; preds = %13
  %32 = load %struct.arizona*, %struct.arizona** %3, align 8
  %33 = load i32, i32* @ARIZONA_WRITE_SEQUENCER_CTRL_1, align 4
  %34 = load i32, i32* @ARIZONA_WSEQ_BUSY, align 4
  %35 = call i32 @arizona_poll_reg(%struct.arizona* %32, i32 30, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.arizona*, %struct.arizona** %3, align 8
  %40 = getelementptr inbounds %struct.arizona, %struct.arizona* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ARIZONA_WRITE_SEQUENCER_CTRL_0, align 4
  %43 = load i32, i32* @ARIZONA_WSEQ_ABORT, align 4
  %44 = call i32 @regmap_write(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %31
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.arizona*, %struct.arizona** %3, align 8
  %48 = call i32 @arizona_disable_freerun_sysclk(%struct.arizona* %47, %struct.arizona_sysclk_state* %4)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32 [ %49, %51 ], [ %53, %52 ]
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @arizona_enable_freerun_sysclk(%struct.arizona*, %struct.arizona_sysclk_state*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @arizona_poll_reg(%struct.arizona*, i32, i32, i32, i32) #1

declare dso_local i32 @arizona_disable_freerun_sysclk(%struct.arizona*, %struct.arizona_sysclk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
