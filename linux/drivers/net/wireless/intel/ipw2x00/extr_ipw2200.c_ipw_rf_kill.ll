; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_rf_kill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_rf_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"RF Kill active, rescheduling GPIO check\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@STATUS_RF_KILL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"HW RF Kill no longer active, restarting device\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"HW RF Kill deactivated.  SW RF Kill still enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ipw_rf_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_rf_kill(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ipw_priv*
  store %struct.ipw_priv* %6, %struct.ipw_priv** %3, align 8
  %7 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %12 = call i64 @rf_kill_active(%struct.ipw_priv* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = call i32 @IPW_DEBUG_RF_KILL(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 3
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 2, %18
  %20 = call i32 @schedule_delayed_work(i32* %17, i32 %19)
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @STATUS_RF_KILL_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = call i32 @IPW_DEBUG_RF_KILL(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 2
  %32 = call i32 @schedule_work(i32* %31)
  br label %35

33:                                               ; preds = %21
  %34 = call i32 @IPW_DEBUG_RF_KILL(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  br label %36

36:                                               ; preds = %35, %14
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @rf_kill_active(%struct.ipw_priv*) #1

declare dso_local i32 @IPW_DEBUG_RF_KILL(i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
