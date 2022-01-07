; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_get_vibralr_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_get_vibralr_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6040 = type { i32 }

@TWL6040_REG_VIBCTLL = common dso_local global i32 0, align 4
@TWL6040_REG_VIBCTLR = common dso_local global i32 0, align 4
@TWL6040_VIBENA = common dso_local global i32 0, align 4
@TWL6040_VIBSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl6040_get_vibralr_status(%struct.twl6040* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl6040*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.twl6040* %0, %struct.twl6040** %3, align 8
  %7 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %8 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TWL6040_REG_VIBCTLL, align 4
  %11 = call i32 @regmap_read(i32 %9, i32 %10, i32* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %19 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TWL6040_REG_VIBCTLR, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @TWL6040_VIBENA, align 4
  %32 = load i32, i32* @TWL6040_VIBSEL, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %27, %25, %14
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
