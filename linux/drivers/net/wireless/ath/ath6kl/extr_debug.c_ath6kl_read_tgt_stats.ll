; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_debug.c_ath6kl_read_tgt_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_debug.c_ath6kl_read_tgt_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32, i32 }
%struct.ath6kl_vif = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@STATS_UPDATE_PEND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WMI_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_read_tgt_stats(%struct.ath6kl* %0, %struct.ath6kl_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca %struct.ath6kl_vif*, align 8
  %6 = alloca i64, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store %struct.ath6kl_vif* %1, %struct.ath6kl_vif** %5, align 8
  %7 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %8 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %7, i32 0, i32 0
  %9 = call i64 @down_interruptible(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load i32, i32* @STATS_UPDATE_PEND, align 4
  %16 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %17 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %16, i32 0, i32 0
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %20 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ath6kl_wmi_get_stats_cmd(i32 %21, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %26 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %25, i32 0, i32 0
  %27 = call i32 @up(i32* %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %52

30:                                               ; preds = %14
  %31 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %32 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @STATS_UPDATE_PEND, align 4
  %35 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %36 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %35, i32 0, i32 0
  %37 = call i32 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @WMI_TIMEOUT, align 4
  %42 = call i64 @wait_event_interruptible_timeout(i32 %33, i32 %40, i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %44 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %43, i32 0, i32 0
  %45 = call i32 @up(i32* %44)
  %46 = load i64, i64* %6, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %30
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %24, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @ath6kl_wmi_get_stats_cmd(i32, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
