; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_amsdu_len_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_amsdu_len_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i8*, i8** }
%struct.iwl_mvm_sta = type { i8* }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_sta*, i8*, i64, i32*)* @iwl_dbgfs_amsdu_len_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_amsdu_len_write(%struct.ieee80211_sta* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %14 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %13)
  store %struct.iwl_mvm_sta* %14, %struct.iwl_mvm_sta** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @kstrtou16(i8* %15, i32 0, i8** %12)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %62

21:                                               ; preds = %4
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %48, %24
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = call i32 @ARRAY_SIZE(i8** %37)
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %33

51:                                               ; preds = %33
  br label %60

52:                                               ; preds = %21
  %53 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %58, i32 0, i32 0
  store i8* null, i8** %59, align 8
  br label %60

60:                                               ; preds = %52, %51
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %18
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i64 @kstrtou16(i8*, i32, i8**) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
