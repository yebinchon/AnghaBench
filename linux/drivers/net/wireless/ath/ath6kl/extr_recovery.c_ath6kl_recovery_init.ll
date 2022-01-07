; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.ath6kl_fw_recovery, i32 }
%struct.ath6kl_fw_recovery = type { i32, i64, i32, i64, i64, i32 }

@RECOVERY_CLEANUP = common dso_local global i32 0, align 4
@ath6kl_recovery_work = common dso_local global i32 0, align 4
@ath6kl_recovery_hb_timer = common dso_local global i32 0, align 4
@TIMER_DEFERRABLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_recovery_init(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  %3 = alloca %struct.ath6kl_fw_recovery*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %4 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %5 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %4, i32 0, i32 0
  store %struct.ath6kl_fw_recovery* %5, %struct.ath6kl_fw_recovery** %3, align 8
  %6 = load i32, i32* @RECOVERY_CLEANUP, align 4
  %7 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %8 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %7, i32 0, i32 1
  %9 = call i32 @clear_bit(i32 %6, i32* %8)
  %10 = load %struct.ath6kl_fw_recovery*, %struct.ath6kl_fw_recovery** %3, align 8
  %11 = getelementptr inbounds %struct.ath6kl_fw_recovery, %struct.ath6kl_fw_recovery* %10, i32 0, i32 5
  %12 = load i32, i32* @ath6kl_recovery_work, align 4
  %13 = call i32 @INIT_WORK(i32* %11, i32 %12)
  %14 = load %struct.ath6kl_fw_recovery*, %struct.ath6kl_fw_recovery** %3, align 8
  %15 = getelementptr inbounds %struct.ath6kl_fw_recovery, %struct.ath6kl_fw_recovery* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.ath6kl_fw_recovery*, %struct.ath6kl_fw_recovery** %3, align 8
  %17 = getelementptr inbounds %struct.ath6kl_fw_recovery, %struct.ath6kl_fw_recovery* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.ath6kl_fw_recovery, %struct.ath6kl_fw_recovery* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %22 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.ath6kl_fw_recovery, %struct.ath6kl_fw_recovery* %22, i32 0, i32 2
  %24 = load i32, i32* @ath6kl_recovery_hb_timer, align 4
  %25 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %26 = call i32 @timer_setup(i32* %23, i32 %24, i32 %25)
  %27 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %28 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.ath6kl_fw_recovery, %struct.ath6kl_fw_recovery* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %1
  %33 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %34 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.ath6kl_fw_recovery, %struct.ath6kl_fw_recovery* %34, i32 0, i32 2
  %36 = load i64, i64* @jiffies, align 8
  %37 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %38 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.ath6kl_fw_recovery, %struct.ath6kl_fw_recovery* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @msecs_to_jiffies(i64 %40)
  %42 = add nsw i64 %36, %41
  %43 = call i32 @mod_timer(i32* %35, i64 %42)
  br label %44

44:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
