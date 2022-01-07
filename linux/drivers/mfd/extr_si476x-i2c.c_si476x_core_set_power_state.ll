; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SI476X_POWER_INCONSISTENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"The device in inconsistent power state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si476x_core_set_power_state(%struct.si476x_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si476x_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.si476x_core* %0, %struct.si476x_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %8 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SI476X_POWER_INCONSISTENT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %14 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %91

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %24 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %89

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %86 [
    i32 128, label %29
    i32 129, label %56
  ]

29:                                               ; preds = %27
  %30 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %31 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %35 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @regulator_bulk_enable(i32 %33, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i64, i64* @SI476X_POWER_INCONSISTENT, align 8
  %42 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %43 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %88

44:                                               ; preds = %29
  %45 = call i32 @udelay(i32 100)
  %46 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %47 = call i32 @si476x_core_start(%struct.si476x_core* %46, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %70

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %55 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %88

56:                                               ; preds = %27
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %60 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %62 = call i32 @si476x_core_stop(%struct.si476x_core* %61, i32 0)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i64, i64* @SI476X_POWER_INCONSISTENT, align 8
  %67 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %68 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %56
  br label %70

70:                                               ; preds = %69, %50
  %71 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %72 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %76 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @regulator_bulk_disable(i32 %74, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load i64, i64* @SI476X_POWER_INCONSISTENT, align 8
  %83 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %84 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %70
  br label %88

86:                                               ; preds = %27
  %87 = call i32 (...) @BUG()
  br label %88

88:                                               ; preds = %86, %85, %51, %40
  br label %89

89:                                               ; preds = %88, %20
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %12
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @si476x_core_start(%struct.si476x_core*, i32) #1

declare dso_local i32 @si476x_core_stop(%struct.si476x_core*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
