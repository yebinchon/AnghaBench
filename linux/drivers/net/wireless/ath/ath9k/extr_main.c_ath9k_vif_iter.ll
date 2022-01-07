; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_vif_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_vif_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_vif_iter_data = type { i32, i32*, i32*, i32, i32, i32, i32, i32, %struct.ieee80211_vif*, i32, i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ath_vif = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_vif_iter_data*, i32*, %struct.ieee80211_vif*)* @ath9k_vif_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_vif_iter(%struct.ath9k_vif_iter_data* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca %struct.ath9k_vif_iter_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ath_vif*, align 8
  %8 = alloca i32, align 4
  store %struct.ath9k_vif_iter_data* %0, %struct.ath9k_vif_iter_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ath_vif*
  store %struct.ath_vif* %12, %struct.ath_vif** %7, align 8
  %13 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %14 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  %23 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %24 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %29, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %38 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %36
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %22
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %18

48:                                               ; preds = %18
  br label %58

49:                                               ; preds = %3
  %50 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %51 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32* %52, i32* %53, i32 %54)
  %56 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %57 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %49, %48
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %66 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %65, i32 0, i32 3
  store i32 20, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %145 [
    i32 132, label %71
    i32 129, label %86
    i32 130, label %105
    i32 133, label %110
    i32 131, label %125
    i32 128, label %140
  ]

71:                                               ; preds = %67
  %72 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %73 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %77 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %84 = call i32 @ath9k_vif_iter_set_beacon(%struct.ath9k_vif_iter_data* %82, %struct.ieee80211_vif* %83)
  br label %85

85:                                               ; preds = %81, %71
  br label %146

86:                                               ; preds = %67
  %87 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %88 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.ath_vif*, %struct.ath_vif** %7, align 8
  %92 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %97 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %96, i32 0, i32 8
  %98 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %97, align 8
  %99 = icmp ne %struct.ieee80211_vif* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %102 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %103 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %102, i32 0, i32 8
  store %struct.ieee80211_vif* %101, %struct.ieee80211_vif** %103, align 8
  br label %104

104:                                              ; preds = %100, %95, %86
  br label %146

105:                                              ; preds = %67
  %106 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %107 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %146

110:                                              ; preds = %67
  %111 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %112 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %116 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %122 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %123 = call i32 @ath9k_vif_iter_set_beacon(%struct.ath9k_vif_iter_data* %121, %struct.ieee80211_vif* %122)
  br label %124

124:                                              ; preds = %120, %110
  br label %146

125:                                              ; preds = %67
  %126 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %127 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %131 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %125
  %136 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %137 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %138 = call i32 @ath9k_vif_iter_set_beacon(%struct.ath9k_vif_iter_data* %136, %struct.ieee80211_vif* %137)
  br label %139

139:                                              ; preds = %135, %125
  br label %146

140:                                              ; preds = %67
  %141 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %4, align 8
  %142 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %146

145:                                              ; preds = %67
  br label %146

146:                                              ; preds = %145, %140, %139, %124, %105, %104, %85
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ath9k_vif_iter_set_beacon(%struct.ath9k_vif_iter_data*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
