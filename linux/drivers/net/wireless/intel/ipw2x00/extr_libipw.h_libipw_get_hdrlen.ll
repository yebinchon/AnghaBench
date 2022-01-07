; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw.h_libipw_get_hdrlen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw.h_libipw_get_hdrlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIBIPW_3ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@LIBIPW_4ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_STYPE_QOS_DATA = common dso_local global i32 0, align 4
@LIBIPW_1ADDR_LEN = common dso_local global i32 0, align 4
@LIBIPW_2ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @libipw_get_hdrlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libipw_get_hdrlen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @LIBIPW_3ADDR_LEN, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @WLAN_FC_GET_STYPE(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @WLAN_FC_GET_TYPE(i32 %8)
  switch i32 %9, label %39 [
    i32 130, label %10
    i32 131, label %31
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @LIBIPW_4ADDR_LEN, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %15, %10
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IEEE80211_STYPE_QOS_DATA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %22
  br label %39

31:                                               ; preds = %1
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @WLAN_FC_GET_STYPE(i32 %32)
  switch i32 %33, label %36 [
    i32 128, label %34
    i32 129, label %34
  ]

34:                                               ; preds = %31, %31
  %35 = load i32, i32* @LIBIPW_1ADDR_LEN, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @LIBIPW_2ADDR_LEN, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %1, %38, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @WLAN_FC_GET_STYPE(i32) #1

declare dso_local i32 @WLAN_FC_GET_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
