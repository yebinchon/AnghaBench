; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_lux_result_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_lux_result_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.bh1770_chip = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@BH1770_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bh1770_lux_result_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1770_lux_result_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bh1770_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.bh1770_chip* @dev_get_drvdata(%struct.device* %11)
  store %struct.bh1770_chip* %12, %struct.bh1770_chip** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i64 @pm_runtime_suspended(%struct.device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  %20 = load %struct.bh1770_chip*, %struct.bh1770_chip** %8, align 8
  %21 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bh1770_chip*, %struct.bh1770_chip** %8, align 8
  %24 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @BH1770_TIMEOUT, align 4
  %30 = call i32 @msecs_to_jiffies(i32 %29)
  %31 = call i64 @wait_event_interruptible_timeout(i32 %22, i32 %28, i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %19
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %49

37:                                               ; preds = %19
  %38 = load %struct.bh1770_chip*, %struct.bh1770_chip** %8, align 8
  %39 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.bh1770_chip*, %struct.bh1770_chip** %8, align 8
  %43 = call i32 @bh1770_lux_read_result(%struct.bh1770_chip* %42)
  %44 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.bh1770_chip*, %struct.bh1770_chip** %8, align 8
  %46 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %37, %34, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.bh1770_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @pm_runtime_suspended(%struct.device*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @bh1770_lux_read_result(%struct.bh1770_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
