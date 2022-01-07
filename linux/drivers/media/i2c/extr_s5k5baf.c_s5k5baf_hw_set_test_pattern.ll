; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32 }

@REG_PATTERN_WIDTH = common dso_local global i32 0, align 4
@REG_PATTERN_HEIGHT = common dso_local global i32 0, align 4
@REG_PATTERN_PARAM = common dso_local global i32 0, align 4
@REG_PATTERN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*, i32)* @s5k5baf_hw_set_test_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_hw_set_test_pattern(%struct.s5k5baf* %0, i32 %1) #0 {
  %3 = alloca %struct.s5k5baf*, align 8
  %4 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %6 = load i32, i32* @REG_PATTERN_WIDTH, align 4
  %7 = call i32 @s5k5baf_i2c_write(%struct.s5k5baf* %5, i32 %6, i32 800)
  %8 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %9 = load i32, i32* @REG_PATTERN_HEIGHT, align 4
  %10 = call i32 @s5k5baf_i2c_write(%struct.s5k5baf* %8, i32 %9, i32 511)
  %11 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %12 = load i32, i32* @REG_PATTERN_PARAM, align 4
  %13 = call i32 @s5k5baf_i2c_write(%struct.s5k5baf* %11, i32 %12, i32 0)
  %14 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %15 = load i32, i32* @REG_PATTERN_SET, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @s5k5baf_i2c_write(%struct.s5k5baf* %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @s5k5baf_i2c_write(%struct.s5k5baf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
