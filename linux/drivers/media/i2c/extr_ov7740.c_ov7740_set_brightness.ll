; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@REG_REG13 = common dso_local global i32 0, align 4
@REG13_AEC_EN = common dso_local global i32 0, align 4
@REG13_AGC_EN = common dso_local global i32 0, align 4
@REG_YBRIGHT = common dso_local global i32 0, align 4
@REG_SGNSET = common dso_local global i32 0, align 4
@SGNSET_YBRIGHT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32)* @ov7740_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7740_set_brightness(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.regmap*, %struct.regmap** %3, align 8
  %6 = load i32, i32* @REG_REG13, align 4
  %7 = load i32, i32* @REG13_AEC_EN, align 4
  %8 = call i32 @regmap_update_bits(%struct.regmap* %5, i32 %6, i32 %7, i32 0)
  %9 = load %struct.regmap*, %struct.regmap** %3, align 8
  %10 = load i32, i32* @REG_REG13, align 4
  %11 = load i32, i32* @REG13_AGC_EN, align 4
  %12 = call i32 @regmap_update_bits(%struct.regmap* %9, i32 %10, i32 %11, i32 0)
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.regmap*, %struct.regmap** %3, align 8
  %17 = load i32, i32* @REG_YBRIGHT, align 4
  %18 = load i32, i32* %4, align 4
  %19 = trunc i32 %18 to i8
  %20 = call i32 @regmap_write(%struct.regmap* %16, i32 %17, i8 zeroext %19)
  %21 = load %struct.regmap*, %struct.regmap** %3, align 8
  %22 = load i32, i32* @REG_SGNSET, align 4
  %23 = load i32, i32* @SGNSET_YBRIGHT_MASK, align 4
  %24 = call i32 @regmap_update_bits(%struct.regmap* %21, i32 %22, i32 %23, i32 0)
  br label %36

25:                                               ; preds = %2
  %26 = load %struct.regmap*, %struct.regmap** %3, align 8
  %27 = load i32, i32* @REG_YBRIGHT, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 0, %28
  %30 = trunc i32 %29 to i8
  %31 = call i32 @regmap_write(%struct.regmap* %26, i32 %27, i8 zeroext %30)
  %32 = load %struct.regmap*, %struct.regmap** %3, align 8
  %33 = load i32, i32* @REG_SGNSET, align 4
  %34 = load i32, i32* @SGNSET_YBRIGHT_MASK, align 4
  %35 = call i32 @regmap_update_bits(%struct.regmap* %32, i32 %33, i32 %34, i32 1)
  br label %36

36:                                               ; preds = %25, %15
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
