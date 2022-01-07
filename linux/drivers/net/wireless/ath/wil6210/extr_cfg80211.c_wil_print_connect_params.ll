; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_print_connect_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_print_connect_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.cfg80211_connect_params = type { i8*, i8*, i8*, i32, i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Connecting to:\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"  Channel: %d freq %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"  BSSID: %pM\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"  SSID: \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"  Previous BSSID=%pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"  Auth Type: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"  Privacy: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"secure\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"  PBSS: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.cfg80211_connect_params*)* @wil_print_connect_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_print_connect_params(%struct.wil6210_priv* %0, %struct.cfg80211_connect_params* %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca %struct.cfg80211_connect_params*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store %struct.cfg80211_connect_params* %1, %struct.cfg80211_connect_params** %4, align 8
  %5 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %6 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_info(%struct.wil6210_priv* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %8 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %7, i32 0, i32 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %13 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %14 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %13, i32 0, i32 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %19 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %18, i32 0, i32 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_info(%struct.wil6210_priv* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %22)
  br label %24

24:                                               ; preds = %11, %2
  %25 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %26 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %31 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %32 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_info(%struct.wil6210_priv* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %37 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %43 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %44 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %47 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @print_hex_dump(i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 16, i32 1, i64 %45, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %40, %35
  %51 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %52 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %57 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %58 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_info(%struct.wil6210_priv* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %63 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %64 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @wil_get_auth_type_name(i32 %65)
  %67 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_info(%struct.wil6210_priv* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  %68 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %69 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %70 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %75 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_info(%struct.wil6210_priv* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %74)
  %76 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %77 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %78 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_info(%struct.wil6210_priv* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %79)
  %81 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %82 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %4, align 8
  %83 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %82, i32 0, i32 3
  %84 = call i32 @wil_print_crypto(%struct.wil6210_priv* %81, i32* %83)
  ret void
}

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i8* @wil_get_auth_type_name(i32) #1

declare dso_local i32 @wil_print_crypto(%struct.wil6210_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
