; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6105x.c_tps6105x_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6105x.c_tps6105x_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6105x = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@TPS6105X_REG_0 = common dso_local global i32 0, align 4
@TPS6105X_REG0_MODE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"TPS6105x found in SHUTDOWN mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"TPS6105x found in TORCH mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"TPS6105x found in FLASH mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"TPS6105x found in VOLTAGE mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6105x*)* @tps6105x_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6105x_startup(%struct.tps6105x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tps6105x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tps6105x* %0, %struct.tps6105x** %3, align 8
  %6 = load %struct.tps6105x*, %struct.tps6105x** %3, align 8
  %7 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @TPS6105X_REG_0, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TPS6105X_REG0_MODE_SHIFT, align 4
  %18 = lshr i32 %16, %17
  switch i32 %18, label %43 [
    i32 131, label %19
    i32 130, label %25
    i32 129, label %31
    i32 128, label %37
  ]

19:                                               ; preds = %15
  %20 = load %struct.tps6105x*, %struct.tps6105x** %3, align 8
  %21 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_info(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %44

25:                                               ; preds = %15
  %26 = load %struct.tps6105x*, %struct.tps6105x** %3, align 8
  %27 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %44

31:                                               ; preds = %15
  %32 = load %struct.tps6105x*, %struct.tps6105x** %3, align 8
  %33 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %44

37:                                               ; preds = %15
  %38 = load %struct.tps6105x*, %struct.tps6105x** %3, align 8
  %39 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %44

43:                                               ; preds = %15
  br label %44

44:                                               ; preds = %43, %37, %31, %25, %19
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
