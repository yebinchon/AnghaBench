; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-core.c_lm3533_set_boost_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-core.c_lm3533_set_boost_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3533 = type { i32 }

@LM3533_REG_BOOST_PWM = common dso_local global i32 0, align 4
@LM3533_BOOST_FREQ_SHIFT = common dso_local global i32 0, align 4
@LM3533_BOOST_FREQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to set boost frequency\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3533*, i32)* @lm3533_set_boost_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3533_set_boost_freq(%struct.lm3533* %0, i32 %1) #0 {
  %3 = alloca %struct.lm3533*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm3533* %0, %struct.lm3533** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lm3533*, %struct.lm3533** %3, align 8
  %7 = load i32, i32* @LM3533_REG_BOOST_PWM, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @LM3533_BOOST_FREQ_SHIFT, align 4
  %10 = shl i32 %8, %9
  %11 = load i32, i32* @LM3533_BOOST_FREQ_MASK, align 4
  %12 = call i32 @lm3533_update(%struct.lm3533* %6, i32 %7, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.lm3533*, %struct.lm3533** %3, align 8
  %17 = getelementptr inbounds %struct.lm3533, %struct.lm3533* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @lm3533_update(%struct.lm3533*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
