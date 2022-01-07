; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_err_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_err_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ATH6KL_DBG_RECOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Fw error detected, reason:%d\0A\00", align 1
@RECOVERY_CLEANUP = common dso_local global i32 0, align 4
@ATH6KL_STATE_RECOVERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_recovery_err_notify(%struct.ath6kl* %0, i32 %1) #0 {
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %6 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %39

11:                                               ; preds = %2
  %12 = load i32, i32* @ATH6KL_DBG_RECOVERY, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ath6kl_dbg(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %17 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %15, i32* %18)
  %20 = load i32, i32* @RECOVERY_CLEANUP, align 4
  %21 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %22 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %21, i32 0, i32 3
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %11
  %26 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %27 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ATH6KL_STATE_RECOVERY, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %33 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %36 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @queue_work(i32 %34, i32* %37)
  br label %39

39:                                               ; preds = %10, %31, %25, %11
  ret void
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
