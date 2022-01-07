; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv76xx_state = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADV76XX_PAGE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @adv76xx_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv76xx_write_reg(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adv76xx_state*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.adv76xx_state* @to_state(%struct.v4l2_subdev* %10)
  store %struct.adv76xx_state* %11, %struct.adv76xx_state** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = lshr i32 %12, 8
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @ADV76XX_PAGE_MAX, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = load %struct.adv76xx_state*, %struct.adv76xx_state** %8, align 8
  %21 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %19, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %17, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %43

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %6, align 4
  %33 = load %struct.adv76xx_state*, %struct.adv76xx_state** %8, align 8
  %34 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @regmap_write(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %30, %27
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.adv76xx_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
