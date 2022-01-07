; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.h_orinoco_get_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.h_orinoco_get_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_SELECTOR_LEN = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@WPA_OUI_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64)* @orinoco_get_wpa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @orinoco_get_wpa_ie(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64*, i64** %4, align 8
  store i64* %7, i64** %6, align 8
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i64*, i64** %6, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 2
  %11 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64*, i64** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = icmp ult i64* %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %8
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WLAN_EID_VENDOR_SPECIFIC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 2
  %27 = load i32, i32* @WPA_OUI_TYPE, align 4
  %28 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %29 = call i64 @memcmp(i64* %26, i32 %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64*, i64** %6, align 8
  store i64* %32, i64** %3, align 8
  br label %41

33:                                               ; preds = %24, %18
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 2
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 %37
  store i64* %39, i64** %6, align 8
  br label %8

40:                                               ; preds = %8
  store i64* null, i64** %3, align 8
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i64*, i64** %3, align 8
  ret i64* %42
}

declare dso_local i64 @memcmp(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
