; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_select_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_select_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"card claims to support voltages below defined range\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"no support for card's volts\0A\00", align 1
@MMC_CAP2_FULL_PWR_CYCLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"exceeding card's volts\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_select_voltage(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 127
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %12 = call i32 @mmc_dev(%struct.mmc_host* %11)
  %13 = call i32 @dev_warn(i32 %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, -128
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %26 = call i32 @mmc_dev(%struct.mmc_host* %25)
  %27 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %67

28:                                               ; preds = %16
  %29 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MMC_CAP2_FULL_PWR_CYCLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ffs(i32 %36)
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 3, %39
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @mmc_power_cycle(%struct.mmc_host* %43, i32 %44)
  br label %65

46:                                               ; preds = %28
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @fls(i32 %47)
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 3, %50
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %54, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %62 = call i32 @mmc_dev(%struct.mmc_host* %61)
  %63 = call i32 @dev_warn(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %46
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %24
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @mmc_power_cycle(%struct.mmc_host*, i32) #1

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
