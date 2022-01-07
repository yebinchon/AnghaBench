; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_tsf_id_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_tsf_id_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_mac_iface_iterator_data = type { i64, i32, %struct.ieee80211_vif* }
%struct.iwl_mvm_vif = type { i64 }

@NUM_TSF_IDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_mac_tsf_id_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_tsf_id_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_mac_iface_iterator_data*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iwl_mvm_mac_iface_iterator_data*
  store %struct.iwl_mvm_mac_iface_iterator_data* %11, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %8, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %16, align 8
  %18 = icmp eq %struct.ieee80211_vif* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %167

20:                                               ; preds = %3
  %21 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %21, i32 0, i32 2
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %22, align 8
  %24 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %147 [
    i32 128, label %26
    i32 129, label %84
  ]

26:                                               ; preds = %20
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 129
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NUM_TSF_IDS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @test_bit(i64 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37, %31, %26
  br label %148

47:                                               ; preds = %37
  %48 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %48, i32 0, i32 2
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %49, align 8
  %51 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @min(i32 %53, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %47
  br label %148

62:                                               ; preds = %47
  %63 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %63, i32 0, i32 2
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %64, align 8
  %66 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %68, %72
  %74 = load i32, i32* %9, align 4
  %75 = srem i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %167

83:                                               ; preds = %62
  br label %148

84:                                               ; preds = %20
  %85 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 129
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %91 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 128
  br i1 %93, label %109, label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NUM_TSF_IDS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %109, label %100

100:                                              ; preds = %94
  %101 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %102 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @test_bit(i64 %103, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %100, %94, %89
  br label %148

110:                                              ; preds = %100
  %111 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %112 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %111, i32 0, i32 2
  %113 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %112, align 8
  %114 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %118 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @min(i32 %116, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %110
  br label %148

125:                                              ; preds = %110
  %126 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %126, i32 0, i32 2
  %128 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %127, align 8
  %129 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %133 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %131, %135
  %137 = load i32, i32* %9, align 4
  %138 = srem i32 %136, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %125
  %141 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %142 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %145 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  br label %167

146:                                              ; preds = %125
  br label %148

147:                                              ; preds = %20
  br label %148

148:                                              ; preds = %147, %146, %124, %109, %83, %61, %46
  %149 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %150 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %153 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @__clear_bit(i64 %151, i32 %154)
  %156 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %157 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %160 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %148
  %164 = load i64, i64* @NUM_TSF_IDS, align 8
  %165 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %166 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %19, %77, %140, %163, %148
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
