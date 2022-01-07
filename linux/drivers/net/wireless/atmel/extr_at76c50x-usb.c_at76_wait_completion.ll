; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_wait_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_wait_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@CMD_COMPLETION_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"at76_get_cmd_status failed: %d\0A\00", align 1
@DBG_WAIT_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: Waiting on cmd %d, status = %d (%s)\00", align 1
@CMD_STATUS_IN_PROGRESS = common dso_local global i32 0, align 4
@CMD_STATUS_IDLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"completion timeout for command %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at76_priv*, i32)* @at76_wait_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_wait_completion(%struct.at76_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.at76_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.at76_priv* %0, %struct.at76_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* @CMD_COMPLETION_TIMEOUT, align 8
  %9 = add i64 %7, %8
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %66, %2
  %11 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %12 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @at76_get_cmd_status(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %20 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @wiphy_err(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %67

26:                                               ; preds = %10
  %27 = load i32, i32* @DBG_WAIT_COMPLETE, align 4
  %28 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %29 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wiphy_name(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @at76_get_cmd_status_string(i32 %36)
  %38 = call i32 @at76_dbg(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %35, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @CMD_STATUS_IN_PROGRESS, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CMD_STATUS_IDLE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %67

47:                                               ; preds = %42, %26
  %48 = load i32, i32* @HZ, align 4
  %49 = sdiv i32 %48, 10
  %50 = call i32 @schedule_timeout_interruptible(i32 %49)
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @time_after(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %57 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @wiphy_err(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %67

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65
  br i1 true, label %10, label %67

67:                                               ; preds = %66, %55, %46, %18
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @at76_get_cmd_status(i32, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @at76_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @at76_get_cmd_status_string(i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
