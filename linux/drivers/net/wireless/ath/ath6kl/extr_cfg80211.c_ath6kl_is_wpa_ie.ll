; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_is_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_is_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ath6kl_is_wpa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_is_wpa_ie(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 4
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 80
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 242
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br label %33

33:                                               ; preds = %28, %23, %18, %13, %8, %1
  %34 = phi i1 [ false, %23 ], [ false, %18 ], [ false, %13 ], [ false, %8 ], [ false, %1 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
