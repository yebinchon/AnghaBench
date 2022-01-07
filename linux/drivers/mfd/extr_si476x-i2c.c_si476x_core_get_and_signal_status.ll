; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_get_and_signal_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_get_and_signal_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Failed to get status\0A\00", align 1
@SI476X_CTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"[interrupt] CTSINT\0A\00", align 1
@SI476X_FM_RDS_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"[interrupt] RDSINT\0A\00", align 1
@SI476X_STC_INT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"[interrupt] STCINT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.si476x_core*)* @si476x_core_get_and_signal_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si476x_core_get_and_signal_status(%struct.si476x_core* %0) #0 {
  %2 = alloca %struct.si476x_core*, align 8
  %3 = alloca i32, align 4
  store %struct.si476x_core* %0, %struct.si476x_core** %2, align 8
  %4 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %5 = call i32 @si476x_core_get_status(%struct.si476x_core* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %10 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %61

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SI476X_CTS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %21 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %26 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %25, i32 0, i32 4
  %27 = call i32 @atomic_set(i32* %26, i32 1)
  %28 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %29 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %28, i32 0, i32 3
  %30 = call i32 @wake_up(i32* %29)
  br label %31

31:                                               ; preds = %19, %14
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SI476X_FM_RDS_INT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %38 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %43 = call i32 @si476x_core_start_rds_drainer_once(%struct.si476x_core* %42)
  br label %44

44:                                               ; preds = %36, %31
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SI476X_STC_INT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %51 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %56 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %55, i32 0, i32 1
  %57 = call i32 @atomic_set(i32* %56, i32 1)
  %58 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %59 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %58, i32 0, i32 0
  %60 = call i32 @wake_up(i32* %59)
  br label %61

61:                                               ; preds = %8, %49, %44
  ret void
}

declare dso_local i32 @si476x_core_get_status(%struct.si476x_core*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @si476x_core_start_rds_drainer_once(%struct.si476x_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
