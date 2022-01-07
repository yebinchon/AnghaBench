; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-core.c_madera_wait_for_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-core.c_madera_wait_for_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera = type { i32, i32 }

@MADERA_BOOT_POLL_TIMEOUT_USEC = common dso_local global i32 0, align 4
@MADERA_IRQ1_RAW_STATUS_1 = common dso_local global i32 0, align 4
@MADERA_BOOT_DONE_STS1 = common dso_local global i32 0, align 4
@MADERA_BOOT_POLL_INTERVAL_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Polling BOOT_DONE_STS timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MADERA_IRQ1_STATUS_1 = common dso_local global i32 0, align 4
@MADERA_BOOT_DONE_EINT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera*)* @madera_wait_for_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_wait_for_boot(%struct.madera* %0) #0 {
  %2 = alloca %struct.madera*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.madera* %0, %struct.madera** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @ktime_get()
  %7 = load i32, i32* @MADERA_BOOT_POLL_TIMEOUT_USEC, align 4
  %8 = call i32 @ktime_add_us(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.madera*, %struct.madera** %2, align 8
  %10 = getelementptr inbounds %struct.madera, %struct.madera* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MADERA_IRQ1_RAW_STATUS_1, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %4)
  br label %14

14:                                               ; preds = %27, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MADERA_BOOT_DONE_STS1, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = call i32 (...) @ktime_get()
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ktime_after(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %14
  %26 = phi i1 [ false, %14 ], [ %24, %19 ]
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = load i32, i32* @MADERA_BOOT_POLL_INTERVAL_USEC, align 4
  %29 = sdiv i32 %28, 2
  %30 = load i32, i32* @MADERA_BOOT_POLL_INTERVAL_USEC, align 4
  %31 = call i32 @usleep_range(i32 %29, i32 %30)
  %32 = load %struct.madera*, %struct.madera** %2, align 8
  %33 = getelementptr inbounds %struct.madera, %struct.madera* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MADERA_IRQ1_RAW_STATUS_1, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %4)
  br label %14

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MADERA_BOOT_DONE_STS1, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.madera*, %struct.madera** %2, align 8
  %44 = getelementptr inbounds %struct.madera, %struct.madera* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.madera*, %struct.madera** %2, align 8
  %51 = getelementptr inbounds %struct.madera, %struct.madera* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MADERA_IRQ1_STATUS_1, align 4
  %54 = load i32, i32* @MADERA_BOOT_DONE_EINT1, align 4
  %55 = call i32 @regmap_write(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.madera*, %struct.madera** %2, align 8
  %57 = getelementptr inbounds %struct.madera, %struct.madera* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pm_runtime_mark_last_busy(i32 %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ktime_after(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
