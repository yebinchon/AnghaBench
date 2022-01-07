; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_op_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_op_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54s_priv* }
%struct.p54s_priv = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@FW_STATE_BOOTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"firmware boot failed\00", align 1
@FW_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @p54spi_op_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54spi_op_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.p54s_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.p54s_priv*, %struct.p54s_priv** %7, align 8
  store %struct.p54s_priv* %8, %struct.p54s_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %10 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %9, i32 0, i32 1
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINTR, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %70

16:                                               ; preds = %1
  %17 = load i64, i64* @FW_STATE_BOOTING, align 8
  %18 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %19 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %21 = call i32 @p54spi_power_on(%struct.p54s_priv* %20)
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %23 = call i32 @p54spi_upload_firmware(%struct.ieee80211_hw* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %28 = call i32 @p54spi_power_off(%struct.p54s_priv* %27)
  br label %66

29:                                               ; preds = %16
  %30 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %31 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = call i64 @msecs_to_jiffies(i32 2000)
  store i64 %33, i64* %4, align 8
  %34 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %35 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %34, i32 0, i32 3
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @wait_for_completion_interruptible_timeout(i32* %35, i64 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %29
  %41 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %42 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %47 = call i32 @p54spi_power_off(%struct.p54s_priv* %46)
  store i32 -1, i32* %5, align 4
  br label %70

48:                                               ; preds = %29
  %49 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %50 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %49, i32 0, i32 1
  %51 = call i64 @mutex_lock_interruptible(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @EINTR, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %57 = call i32 @p54spi_power_off(%struct.p54s_priv* %56)
  br label %70

58:                                               ; preds = %48
  %59 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %60 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FW_STATE_READY, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  br label %66

66:                                               ; preds = %58, %26
  %67 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %68 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %70

70:                                               ; preds = %66, %53, %40, %13
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @p54spi_power_on(%struct.p54s_priv*) #1

declare dso_local i32 @p54spi_upload_firmware(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54spi_power_off(%struct.p54s_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
