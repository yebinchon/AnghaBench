; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_debug_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_debug_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Scan completed, no valid APs matched [CFG 0x%08X]\0A\00", align 1
@CFG_STATIC_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Channel locked to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Channel unlocked.\0A\00", align 1
@CFG_STATIC_ESSID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"ESSID locked to '%*pE'\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ESSID unlocked.\0A\00", align 1
@CFG_STATIC_BSSID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"BSSID locked to %pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"BSSID unlocked.\0A\00", align 1
@CAP_PRIVACY_ON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"PRIVACY on\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"PRIVACY off\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"RATE MASK: 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_debug_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_debug_config(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %3 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CFG_STATIC_CHANNEL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %20

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %22 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %29 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %32 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %30, i32 %33)
  br label %37

35:                                               ; preds = %20
  %36 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %27
  %38 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %39 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %46 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  br label %51

49:                                               ; preds = %37
  %50 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %53 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CAP_PRIVACY_ON, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %62

60:                                               ; preds = %51
  %61 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %58
  %63 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %64 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %65)
  ret void
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
