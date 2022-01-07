; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_sl.c_cpsw_sl_wait_for_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_sl.c_cpsw_sl_wait_for_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_sl = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@CPSW_SL_MACSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cpsw_sl failed to soft-reset.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_sl_wait_for_idle(%struct.cpsw_sl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpsw_sl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cpsw_sl* %0, %struct.cpsw_sl** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @msecs_to_jiffies(i64 %8)
  %10 = add i64 %7, %9
  store i64 %10, i64* %6, align 8
  br label %11

11:                                               ; preds = %27, %2
  %12 = call i32 @usleep_range(i32 100, i32 200)
  br label %13

13:                                               ; preds = %11
  %14 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %15 = load i32, i32* @CPSW_SL_MACSTATUS, align 4
  %16 = call i32 @cpsw_sl_reg_read(%struct.cpsw_sl* %14, i32 %15)
  %17 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %18 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @jiffies, align 8
  %25 = call i64 @time_after(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %13
  %28 = phi i1 [ false, %13 ], [ %26, %22 ]
  br i1 %28, label %11, label %29

29:                                               ; preds = %27
  %30 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %31 = load i32, i32* @CPSW_SL_MACSTATUS, align 4
  %32 = call i32 @cpsw_sl_reg_read(%struct.cpsw_sl* %30, i32 %31)
  %33 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %34 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %29
  %39 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %40 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cpsw_sl_reg_read(%struct.cpsw_sl*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
