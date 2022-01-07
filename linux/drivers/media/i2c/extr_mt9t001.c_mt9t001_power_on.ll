; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t001.c_mt9t001_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t001.c_mt9t001_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9t001 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9t001*)* @mt9t001_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t001_power_on(%struct.mt9t001* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9t001*, align 8
  %4 = alloca i32, align 4
  store %struct.mt9t001* %0, %struct.mt9t001** %3, align 8
  %5 = load %struct.mt9t001*, %struct.mt9t001** %3, align 8
  %6 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = load %struct.mt9t001*, %struct.mt9t001** %3, align 8
  %10 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regulator_bulk_enable(i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.mt9t001*, %struct.mt9t001** %3, align 8
  %19 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_prepare_enable(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.mt9t001*, %struct.mt9t001** %3, align 8
  %26 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = load %struct.mt9t001*, %struct.mt9t001** %3, align 8
  %30 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_bulk_disable(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %24, %17
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
