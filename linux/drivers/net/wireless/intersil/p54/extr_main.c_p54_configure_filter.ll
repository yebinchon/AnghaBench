; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54_common* }
%struct.p54_common = type { i32 }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i64)* @p54_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.p54_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.p54_common*, %struct.p54_common** %11, align 8
  store %struct.p54_common* %12, %struct.p54_common** %9, align 8
  %13 = load i32, i32* @FIF_ALLMULTI, align 4
  %14 = load i32, i32* @FIF_OTHER_BSS, align 4
  %15 = or i32 %13, %14
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %15
  store i32 %18, i32* %16, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %22 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @FIF_OTHER_BSS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %29 = call i32 @p54_setup_mac(%struct.p54_common* %28)
  br label %30

30:                                               ; preds = %27, %4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @FIF_ALLMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %30
  %39 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %40 = call i32 @p54_set_groupfilter(%struct.p54_common* %39)
  br label %41

41:                                               ; preds = %38, %35
  ret void
}

declare dso_local i32 @p54_setup_mac(%struct.p54_common*) #1

declare dso_local i32 @p54_set_groupfilter(%struct.p54_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
