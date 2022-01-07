; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_set_exp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_set_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@REG_REG13 = common dso_local global i32 0, align 4
@REG13_AEC_EN = common dso_local global i32 0, align 4
@REG13_AGC_EN = common dso_local global i32 0, align 4
@REG_AEC = common dso_local global i32 0, align 4
@REG_HAEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32)* @ov7740_set_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7740_set_exp(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regmap*, %struct.regmap** %4, align 8
  %8 = load i32, i32* @REG_REG13, align 4
  %9 = load i32, i32* @REG13_AEC_EN, align 4
  %10 = load i32, i32* @REG13_AGC_EN, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @regmap_update_bits(%struct.regmap* %7, i32 %8, i32 %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.regmap*, %struct.regmap** %4, align 8
  %19 = load i32, i32* @REG_AEC, align 4
  %20 = load i32, i32* %5, align 4
  %21 = trunc i32 %20 to i8
  %22 = call i32 @regmap_write(%struct.regmap* %18, i32 %19, i8 zeroext %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %17
  %28 = load %struct.regmap*, %struct.regmap** %4, align 8
  %29 = load i32, i32* @REG_HAEC, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 8
  %32 = trunc i32 %31 to i8
  %33 = call i32 @regmap_write(%struct.regmap* %28, i32 %29, i8 zeroext %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %25, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
