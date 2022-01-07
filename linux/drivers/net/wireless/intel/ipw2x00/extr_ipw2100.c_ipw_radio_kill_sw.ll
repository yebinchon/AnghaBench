; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw_radio_kill_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw_radio_kill_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32, i32, i64 }

@STATUS_RF_KILL_SW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Manual SW RF Kill set to: RADIO  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Can not turn radio back on - disabled by HW switch\0A\00", align 1
@system_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i32)* @ipw_radio_kill_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_radio_kill_sw(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw2100_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 1, i32 0
  %10 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @STATUS_RF_KILL_SW, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = icmp eq i32 %9, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 (i8*, ...) @IPW_DEBUG_RF_KILL(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = load i32, i32* @STATUS_RF_KILL_SW, align 4
  %33 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %38 = call i32 @ipw2100_down(%struct.ipw2100_priv* %37)
  br label %63

39:                                               ; preds = %20
  %40 = load i32, i32* @STATUS_RF_KILL_SW, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %43 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %47 = call i64 @rf_kill_active(%struct.ipw2100_priv* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = call i32 (i8*, ...) @IPW_DEBUG_RF_KILL(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %52 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @system_wq, align 4
  %54 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %55 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %54, i32 0, i32 2
  %56 = load i32, i32* @HZ, align 4
  %57 = call i32 @round_jiffies_relative(i32 %56)
  %58 = call i32 @mod_delayed_work(i32 %53, i32* %55, i32 %57)
  br label %62

59:                                               ; preds = %39
  %60 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %61 = call i32 @schedule_reset(%struct.ipw2100_priv* %60)
  br label %62

62:                                               ; preds = %59, %49
  br label %63

63:                                               ; preds = %62, %31
  %64 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %65 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @IPW_DEBUG_RF_KILL(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw2100_down(%struct.ipw2100_priv*) #1

declare dso_local i64 @rf_kill_active(%struct.ipw2100_priv*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @schedule_reset(%struct.ipw2100_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
