; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_device_irq_init_800.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_device_irq_init_800.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm80x_chip = type { i32, i32, i32, %struct.regmap*, i32 }
%struct.regmap = type { i32 }

@IRQF_ONESHOT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"incorrect parameters\0A\00", align 1
@PM800_WAKEUP2_INV_INT = common dso_local global i32 0, align 4
@PM800_WAKEUP2_INT_CLEAR = common dso_local global i32 0, align 4
@PM800_WAKEUP2_INT_MASK = common dso_local global i32 0, align 4
@PM800_WAKEUP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm80x_chip*)* @device_irq_init_800 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_irq_init_800(%struct.pm80x_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm80x_chip*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pm80x_chip* %0, %struct.pm80x_chip** %3, align 8
  %9 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %10 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %9, i32 0, i32 3
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %4, align 8
  %12 = load i64, i64* @IRQF_ONESHOT, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.regmap*, %struct.regmap** %4, align 8
  %16 = icmp ne %struct.regmap* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %19 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %24 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %60

29:                                               ; preds = %17
  %30 = load i32, i32* @PM800_WAKEUP2_INV_INT, align 4
  %31 = load i32, i32* @PM800_WAKEUP2_INT_CLEAR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PM800_WAKEUP2_INT_MASK, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @PM800_WAKEUP2_INT_CLEAR, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.regmap*, %struct.regmap** %4, align 8
  %37 = load i32, i32* @PM800_WAKEUP2, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @regmap_update_bits(%struct.regmap* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %58

44:                                               ; preds = %29
  %45 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %46 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %45, i32 0, i32 3
  %47 = load %struct.regmap*, %struct.regmap** %46, align 8
  %48 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %49 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %53 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %56 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %55, i32 0, i32 0
  %57 = call i32 @regmap_add_irq_chip(%struct.regmap* %47, i32 %50, i64 %51, i32 -1, i32 %54, i32* %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %44, %43
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %22
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_add_irq_chip(%struct.regmap*, i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
