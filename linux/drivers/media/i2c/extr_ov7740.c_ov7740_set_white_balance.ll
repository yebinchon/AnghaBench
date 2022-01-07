; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_set_white_balance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_set_white_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7740 = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.regmap* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.regmap = type { i32 }

@REG_ISP_CTRL00 = common dso_local global i32 0, align 4
@ISPCTRL00_AWB_EN = common dso_local global i32 0, align 4
@ISPCTRL00_AWB_GAIN_EN = common dso_local global i32 0, align 4
@REG_BGAIN = common dso_local global i32 0, align 4
@REG_RGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov7740*, i32)* @ov7740_set_white_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7740_set_white_balance(%struct.ov7740* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov7740*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ov7740* %0, %struct.ov7740** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %10 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %9, i32 0, i32 2
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %6, align 8
  %12 = load %struct.regmap*, %struct.regmap** %6, align 8
  %13 = load i32, i32* @REG_ISP_CTRL00, align 4
  %14 = call i32 @regmap_read(%struct.regmap* %12, i32 %13, i32* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* @ISPCTRL00_AWB_EN, align 4
  %22 = load i32, i32* @ISPCTRL00_AWB_GAIN_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load i32, i32* @ISPCTRL00_AWB_EN, align 4
  %28 = load i32, i32* @ISPCTRL00_AWB_GAIN_EN, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.regmap*, %struct.regmap** %6, align 8
  %35 = load i32, i32* @REG_ISP_CTRL00, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @regmap_write(%struct.regmap* %34, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %74

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %73, label %46

46:                                               ; preds = %43
  %47 = load %struct.regmap*, %struct.regmap** %6, align 8
  %48 = load i32, i32* @REG_BGAIN, align 4
  %49 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %50 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @regmap_write(%struct.regmap* %47, i32 %48, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %74

59:                                               ; preds = %46
  %60 = load %struct.regmap*, %struct.regmap** %6, align 8
  %61 = load i32, i32* @REG_RGAIN, align 4
  %62 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %63 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regmap_write(%struct.regmap* %60, i32 %61, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %74

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %43
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %70, %57, %40
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
