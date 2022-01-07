; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_irq_global_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_irq_global_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_chip = type { i32, i32 }

@MAX77620_REG_INTENLBT = common dso_local global i32 0, align 4
@MAX77620_GLBLM_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to set GLBLM: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @max77620_irq_global_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_irq_global_mask(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.max77620_chip*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.max77620_chip*
  store %struct.max77620_chip* %6, %struct.max77620_chip** %3, align 8
  %7 = load %struct.max77620_chip*, %struct.max77620_chip** %3, align 8
  %8 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MAX77620_REG_INTENLBT, align 4
  %11 = load i32, i32* @MAX77620_GLBLM_MASK, align 4
  %12 = load i32, i32* @MAX77620_GLBLM_MASK, align 4
  %13 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.max77620_chip*, %struct.max77620_chip** %3, align 8
  %18 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
