; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_CTL_OTHER = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_BAD = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_PSPOLL = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_CTL_PSPOLL = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_OTHER_RA = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_DECRY_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i64)* @carl9170_op_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_op_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ar9170*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ar9170*, %struct.ar9170** %12, align 8
  store %struct.ar9170* %13, %struct.ar9170** %9, align 8
  %14 = load i32, i32* @FIF_ALLMULTI, align 4
  %15 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %16 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %14, %17
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %23 = call i32 @IS_ACCEPTING_CMD(%struct.ar9170* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %147

26:                                               ; preds = %4
  %27 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %28 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %27, i32 0, i32 4
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %33 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FIF_ALLMULTI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i64 -1, i64* %8, align 8
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %43 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @carl9170_update_multicast(%struct.ar9170* %47, i64 %48)
  %50 = call i32 @WARN_ON(i32 %49)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @FIF_OTHER_BSS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FIF_OTHER_BSS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %66 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %68 = call i32 @carl9170_set_operating_mode(%struct.ar9170* %67)
  %69 = call i32 @WARN_ON(i32 %68)
  br label %70

70:                                               ; preds = %56, %51
  %71 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %72 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %143

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %79 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %143

83:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  %84 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %85 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @CARL9170_RX_FILTER_CTL_OTHER, align 4
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @FIF_FCSFAIL, align 4
  %97 = load i32, i32* @FIF_PLCPFAIL, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* @CARL9170_RX_FILTER_BAD, align 4
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %101, %93
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @FIF_CONTROL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* @CARL9170_RX_FILTER_CTL_OTHER, align 4
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %111, %105
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @FIF_PSPOLL, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %115
  %122 = load i32, i32* @CARL9170_RX_FILTER_CTL_PSPOLL, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %121, %115
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FIF_OTHER_BSS, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* @CARL9170_RX_FILTER_OTHER_RA, align 4
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* @CARL9170_RX_FILTER_DECRY_FAIL, align 4
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %131, %125
  %139 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @carl9170_rx_filter(%struct.ar9170* %139, i32 %140)
  %142 = call i32 @WARN_ON(i32 %141)
  br label %143

143:                                              ; preds = %138, %76, %70
  %144 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %145 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %144, i32 0, i32 4
  %146 = call i32 @mutex_unlock(i32* %145)
  br label %147

147:                                              ; preds = %143, %25
  ret void
}

declare dso_local i32 @IS_ACCEPTING_CMD(%struct.ar9170*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @carl9170_update_multicast(%struct.ar9170*, i64) #1

declare dso_local i32 @carl9170_set_operating_mode(%struct.ar9170*) #1

declare dso_local i32 @carl9170_rx_filter(%struct.ar9170*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
