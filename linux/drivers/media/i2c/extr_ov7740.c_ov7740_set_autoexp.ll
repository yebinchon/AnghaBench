; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_set_autoexp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_set_autoexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@REG_REG13 = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@REG13_AEC_EN = common dso_local global i32 0, align 4
@REG13_AGC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32)* @ov7740_set_autoexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7740_set_autoexp(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.regmap*, %struct.regmap** %3, align 8
  %8 = load i32, i32* @REG_REG13, align 4
  %9 = call i32 @regmap_read(%struct.regmap* %7, i32 %8, i32* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* @REG13_AEC_EN, align 4
  %18 = load i32, i32* @REG13_AGC_EN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %29

22:                                               ; preds = %12
  %23 = load i32, i32* @REG13_AEC_EN, align 4
  %24 = load i32, i32* @REG13_AGC_EN, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %22, %16
  %30 = load %struct.regmap*, %struct.regmap** %3, align 8
  %31 = load i32, i32* @REG_REG13, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @regmap_write(%struct.regmap* %30, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %2
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
