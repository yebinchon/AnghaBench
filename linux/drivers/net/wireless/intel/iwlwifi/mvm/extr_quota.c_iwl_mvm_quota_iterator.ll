; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_quota.c_iwl_mvm_quota_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_quota.c_iwl_mvm_quota_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_quota_iterator_data = type { i64*, i32*, i32, i32*, i32*, %struct.ieee80211_vif* }
%struct.iwl_mvm_vif = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@NUM_PHY_CTX = common dso_local global i64 0, align 8
@MAX_BINDINGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_quota_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_quota_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_quota_iterator_data*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iwl_mvm_quota_iterator_data*
  store %struct.iwl_mvm_quota_iterator_data* %11, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %8, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %15, i32 0, i32 5
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %16, align 8
  %18 = icmp eq %struct.ieee80211_vif* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %136

20:                                               ; preds = %3
  %21 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %136

26:                                               ; preds = %20
  %27 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* @NUM_PHY_CTX, align 8
  %33 = load i64, i64* @MAX_BINDINGS, align 8
  %34 = icmp sgt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUILD_BUG_ON(i32 %35)
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @MAX_BINDINGS, align 8
  %39 = icmp sge i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON_ONCE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %136

44:                                               ; preds = %26
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %71 [
    i32 128, label %48
    i32 131, label %56
    i32 132, label %56
    i32 130, label %63
    i32 129, label %70
  ]

48:                                               ; preds = %44
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %73

55:                                               ; preds = %48
  br label %136

56:                                               ; preds = %44, %44
  %57 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %73

62:                                               ; preds = %56
  br label %136

63:                                               ; preds = %44
  %64 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %73

69:                                               ; preds = %63
  br label %136

70:                                               ; preds = %44
  br label %136

71:                                               ; preds = %44
  %72 = call i64 @WARN_ON_ONCE(i32 1)
  br label %136

73:                                               ; preds = %68, %61, %54
  %74 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %88 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 %86, i64* %91, align 8
  br label %107

92:                                               ; preds = %73
  %93 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %100 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %98, %103
  %105 = zext i1 %104 to i32
  %106 = call i64 @WARN_ON_ONCE(i32 %105)
  br label %107

107:                                              ; preds = %92, %81
  %108 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %116 = call i64 @iwl_mvm_vif_low_latency(%struct.iwl_mvm_vif* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %107
  %119 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %118
  %127 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %128 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %132 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %19, %25, %43, %55, %62, %69, %70, %71, %126, %118, %107
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @iwl_mvm_vif_low_latency(%struct.iwl_mvm_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
