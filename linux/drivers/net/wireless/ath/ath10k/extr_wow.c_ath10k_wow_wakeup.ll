; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_wow_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_wow_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"failed to send wow wakeup indication: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"timed out while waiting for wow wakeup completion\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_wow_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wow_wakeup(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %5, i32 0, i32 1
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @reinit_completion(i32* %10)
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = call i32 @ath10k_wmi_wow_host_wakeup_ind(%struct.ath10k* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 3, %25
  %27 = call i32 @wait_for_completion_timeout(i32* %24, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ath10k_wmi_wow_host_wakeup_ind(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
