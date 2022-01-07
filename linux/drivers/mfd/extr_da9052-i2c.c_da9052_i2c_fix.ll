; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-i2c.c_da9052_i2c_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-i2c.c_da9052_i2c_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052 = type { i32, i32 }

@DA9052_PARK_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052*, i8)* @da9052_i2c_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_i2c_fix(%struct.da9052* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9052*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.da9052* %0, %struct.da9052** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.da9052*, %struct.da9052** %4, align 8
  %8 = getelementptr inbounds %struct.da9052, %struct.da9052* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %22 [
    i32 132, label %10
    i32 131, label %10
    i32 130, label %10
    i32 129, label %10
    i32 128, label %21
  ]

10:                                               ; preds = %2, %2, %2, %2
  %11 = load i8, i8* %5, align 1
  %12 = call i32 @i2c_safe_reg(i8 zeroext %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load %struct.da9052*, %struct.da9052** %4, align 8
  %16 = getelementptr inbounds %struct.da9052, %struct.da9052* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DA9052_PARK_REGISTER, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %6)
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %10
  br label %23

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %2, %21
  br label %23

23:                                               ; preds = %22, %20
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @i2c_safe_reg(i8 zeroext) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
