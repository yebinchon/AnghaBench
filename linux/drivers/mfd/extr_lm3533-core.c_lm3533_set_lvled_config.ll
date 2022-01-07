; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-core.c_lm3533_set_lvled_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-core.c_lm3533_set_lvled_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3533 = type { i32 }

@LM3533_LVLED_ID_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LM3533_LED_ID_MAX = common dso_local global i32 0, align 4
@LM3533_REG_OUTPUT_CONF1 = common dso_local global i32 0, align 4
@LM3533_REG_OUTPUT_CONF2 = common dso_local global i32 0, align 4
@LM3533_LED_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to set lvled config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3533*, i32, i32)* @lm3533_set_lvled_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3533_set_lvled_config(%struct.lm3533* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm3533*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lm3533* %0, %struct.lm3533** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LM3533_LVLED_ID_MAX, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %62

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @LM3533_LED_ID_MAX, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @LM3533_REG_OUTPUT_CONF1, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 2, %34
  store i32 %35, i32* %11, align 4
  br label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @LM3533_REG_OUTPUT_CONF2, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 4
  %40 = mul nsw i32 2, %39
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32, i32* @LM3533_LED_ID_MASK, align 4
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.lm3533*, %struct.lm3533** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @lm3533_update(%struct.lm3533* %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load %struct.lm3533*, %struct.lm3533** %5, align 8
  %57 = getelementptr inbounds %struct.lm3533, %struct.lm3533* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %41
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %26, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @lm3533_update(%struct.lm3533*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
