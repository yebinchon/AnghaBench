; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_scan_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_scan_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535_mfgpt_chip = type { i32, i32 }
%struct.cs5535_mfgpt_timer = type { i32, %struct.cs5535_mfgpt_chip* }

@mfgpt_reset_timers = common dso_local global i32 0, align 4
@MFGPT_MAX_TIMERS = common dso_local global i32 0, align 4
@MFGPT_REG_SETUP = common dso_local global i32 0, align 4
@MFGPT_SETUP_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs5535_mfgpt_chip*)* @scan_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_timers(%struct.cs5535_mfgpt_chip* %0) #0 {
  %2 = alloca %struct.cs5535_mfgpt_chip*, align 8
  %3 = alloca %struct.cs5535_mfgpt_timer, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cs5535_mfgpt_chip* %0, %struct.cs5535_mfgpt_chip** %2, align 8
  %8 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %3, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %3, i32 0, i32 1
  %10 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %2, align 8
  store %struct.cs5535_mfgpt_chip* %10, %struct.cs5535_mfgpt_chip** %9, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @mfgpt_reset_timers, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (...) @reset_all_timers()
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @mfgpt_reset_timers, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @soft_reset()
  br label %20

20:                                               ; preds = %18, %15
  br label %21

21:                                               ; preds = %20, %13
  %22 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %2, align 8
  %23 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %51, %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MFGPT_MAX_TIMERS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %3, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @MFGPT_REG_SETUP, align 4
  %34 = call i32 @cs5535_mfgpt_read(%struct.cs5535_mfgpt_timer* %3, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MFGPT_SETUP_SETUP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @mfgpt_reset_timers, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %50

42:                                               ; preds = %39, %30
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %2, align 8
  %45 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__set_bit(i32 %43, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %42, %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %2, align 8
  %56 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %55, i32 0, i32 0
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @reset_all_timers(...) #1

declare dso_local i32 @soft_reset(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cs5535_mfgpt_read(%struct.cs5535_mfgpt_timer*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
