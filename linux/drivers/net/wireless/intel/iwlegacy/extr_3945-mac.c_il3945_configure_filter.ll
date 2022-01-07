; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Enter: changed: 0x%x, total: 0x%x\0A\00", align 1
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@RXON_FILTER_PROMISC_MSK = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@RXON_FILTER_CTL2HOST_MSK = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@RXON_FILTER_BCON_AWARE_MSK = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @il3945_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.il_priv*, %struct.il_priv** %13, align 8
  store %struct.il_priv* %14, %struct.il_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @D_MAC80211(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  br label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FIF_OTHER_BSS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @RXON_FILTER_PROMISC_MSK, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @RXON_FILTER_PROMISC_MSK, align 4
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FIF_CONTROL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @RXON_FILTER_CTL2HOST_MSK, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %49

45:                                               ; preds = %35
  %46 = load i32, i32* @RXON_FILTER_CTL2HOST_MSK, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @RXON_FILTER_BCON_AWARE_MSK, align 4
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load i32, i32* @RXON_FILTER_BCON_AWARE_MSK, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %68 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load i32, i32* %11, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %73 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %71
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %79 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %84 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* @FIF_OTHER_BSS, align 4
  %87 = load i32, i32* @FIF_ALLMULTI, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @FIF_CONTROL, align 4
  %92 = or i32 %90, %91
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %92
  store i32 %95, i32* %93, align 4
  ret void
}

declare dso_local i32 @D_MAC80211(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
