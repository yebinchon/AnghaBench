; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_tx_lockup_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_tx_lockup_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, i32 (%struct.lbs_private*)*, i32 }
%struct.timer_list = type { i32 }

@tx_lockup_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"TX lockup detected\0A\00", align 1
@DNLD_RES_RECEIVED = common dso_local global i32 0, align 4
@priv = common dso_local global %struct.lbs_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @lbs_tx_lockup_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_tx_lockup_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %6 = ptrtoint %struct.lbs_private* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @tx_lockup_timer, align 4
  %9 = call %struct.lbs_private* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.lbs_private* %9, %struct.lbs_private** %3, align 8
  %10 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @netdev_info(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 3
  %20 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %19, align 8
  %21 = icmp ne i32 (%struct.lbs_private*)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 3
  %25 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %24, align 8
  %26 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %27 = call i32 %25(%struct.lbs_private* %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i32, i32* @DNLD_RES_RECEIVED, align 4
  %30 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 1
  %34 = call i32 @wake_up_interruptible(i32* %33)
  %35 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %36 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %35, i32 0, i32 0
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local %struct.lbs_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
