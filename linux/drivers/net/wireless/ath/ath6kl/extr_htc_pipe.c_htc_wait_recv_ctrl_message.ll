; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_htc_wait_recv_ctrl_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_htc_wait_recv_ctrl_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HTC_TARGET_RESPONSE_POLL_COUNT = common dso_local global i32 0, align 4
@HTC_TARGET_RESPONSE_POLL_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"htc pipe control receive timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*)* @htc_wait_recv_ctrl_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htc_wait_recv_ctrl_message(%struct.htc_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  %5 = load i32, i32* @HTC_TARGET_RESPONSE_POLL_COUNT, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %11 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %14 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %9
  %19 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %20 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %23 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_bh(i32* %23)
  br label %33

25:                                               ; preds = %9
  %26 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %27 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @HTC_TARGET_RESPONSE_POLL_WAIT, align 4
  %32 = call i32 @msleep_interruptible(i32 %31)
  br label %6

33:                                               ; preds = %18, %6
  %34 = load i32, i32* %4, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @ath6kl_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
