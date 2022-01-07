; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ATH10K_WMI_BARRIER_ECHO_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to submit wmi echo: %d\0A\00", align 1
@ATH10K_WMI_BARRIER_TIMEOUT_HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_barrier(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @reinit_completion(i32* %11)
  %13 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 1
  %15 = call i32 @spin_unlock_bh(i32* %14)
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = load i32, i32* @ATH10K_WMI_BARRIER_ECHO_ID, align 4
  %18 = call i32 @ath10k_wmi_echo(%struct.ath10k* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ath10k_warn(%struct.ath10k* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %1
  %27 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* @ATH10K_WMI_BARRIER_TIMEOUT_HZ, align 4
  %31 = call i32 @wait_for_completion_timeout(i32* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34, %21
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_wmi_echo(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
