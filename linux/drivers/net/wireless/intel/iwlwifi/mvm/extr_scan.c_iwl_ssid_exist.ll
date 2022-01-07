; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_ssid_exist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_ssid_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_ssid_ie = type { i64, i32 }

@PROBE_OPTION_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, %struct.iwl_ssid_ie*)* @iwl_ssid_exist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_ssid_exist(i64* %0, i64 %1, %struct.iwl_ssid_ie* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iwl_ssid_ie*, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iwl_ssid_ie* %2, %struct.iwl_ssid_ie** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %42, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @PROBE_OPTION_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %9
  %14 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %14, i64 %16
  %18 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %45

22:                                               ; preds = %13
  %23 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %23, i64 %25
  %27 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @memcmp(i32 %34, i64* %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %31, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %9

45:                                               ; preds = %21, %9
  store i32 -1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @memcmp(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
