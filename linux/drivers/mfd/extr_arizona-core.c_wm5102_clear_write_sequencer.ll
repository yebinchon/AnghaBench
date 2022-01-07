; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_wm5102_clear_write_sequencer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_wm5102_clear_write_sequencer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, i32, i32 }

@ARIZONA_WRITE_SEQUENCER_CTRL_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to clear write sequencer state: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to re-enable DCVDD: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona*)* @wm5102_clear_write_sequencer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5102_clear_write_sequencer(%struct.arizona* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arizona*, align 8
  %4 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %3, align 8
  %5 = load %struct.arizona*, %struct.arizona** %3, align 8
  %6 = getelementptr inbounds %struct.arizona, %struct.arizona* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ARIZONA_WRITE_SEQUENCER_CTRL_3, align 4
  %9 = call i32 @regmap_write(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.arizona*, %struct.arizona** %3, align 8
  %14 = getelementptr inbounds %struct.arizona, %struct.arizona* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.arizona*, %struct.arizona** %3, align 8
  %21 = call i32 @arizona_enable_reset(%struct.arizona* %20)
  %22 = load %struct.arizona*, %struct.arizona** %3, align 8
  %23 = getelementptr inbounds %struct.arizona, %struct.arizona* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regulator_disable(i32 %24)
  %26 = call i32 @msleep(i32 20)
  %27 = load %struct.arizona*, %struct.arizona** %3, align 8
  %28 = getelementptr inbounds %struct.arizona, %struct.arizona* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regulator_enable(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %19
  %34 = load %struct.arizona*, %struct.arizona** %3, align 8
  %35 = getelementptr inbounds %struct.arizona, %struct.arizona* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %19
  %41 = load %struct.arizona*, %struct.arizona** %3, align 8
  %42 = call i32 @arizona_disable_reset(%struct.arizona* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %33, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @arizona_enable_reset(%struct.arizona*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @arizona_disable_reset(%struct.arizona*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
