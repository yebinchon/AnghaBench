; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_set_dynamic_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_set_dynamic_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32 }
%struct.iwl_rxon_context = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64* }
%struct.ieee80211_key_conf = type { i64, i32, i32, i32 }
%struct.ieee80211_sta = type { i64* }
%struct.ieee80211_key_seq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WEP_INVALID_OFFSET = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown cipher %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Set dynamic key: cipher=%x len=%d idx=%d sta=%pM ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_set_dynamic_key(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.ieee80211_key_conf* %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.iwl_rxon_context*, align 8
  %8 = alloca %struct.ieee80211_key_conf*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_key_seq, align 4
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %7, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %16 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %20 = call i64 @iwlagn_key_sta_id(%struct.iwl_priv* %15, i32 %18, %struct.ieee80211_sta* %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* @IWL_INVALID_STATION, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %131

27:                                               ; preds = %4
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 1
  %30 = call i32 @lockdep_assert_held(i32* %29)
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %32 = call i64 @iwl_get_free_ucode_key_offset(%struct.iwl_priv* %31)
  %33 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WEP_INVALID_OFFSET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %131

43:                                               ; preds = %27
  %44 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %45 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %86 [
    i32 130, label %51
    i32 131, label %81
    i32 128, label %81
    i32 129, label %81
  ]

51:                                               ; preds = %43
  %52 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %53 = icmp ne %struct.ieee80211_sta* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  store i64* %57, i64** %14, align 8
  br label %63

58:                                               ; preds = %51
  %59 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %60 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  store i64* %62, i64** %14, align 8
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %65 = call i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf* %64, i32 0, %struct.ieee80211_key_seq* %10)
  %66 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %67 = load i64*, i64** %14, align 8
  %68 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %10, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %72 = call i32 @ieee80211_get_tkip_rx_p1k(%struct.ieee80211_key_conf* %66, i64* %67, i32 %70, i32* %71)
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %74 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %10, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %80 = call i32 @iwlagn_send_sta_key(%struct.iwl_priv* %73, %struct.ieee80211_key_conf* %74, i64 %75, i32 %78, i32* %79, i32 0)
  store i32 %80, i32* %12, align 4
  br label %94

81:                                               ; preds = %43, %43, %43
  %82 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %83 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @iwlagn_send_sta_key(%struct.iwl_priv* %82, %struct.ieee80211_key_conf* %83, i64 %84, i32 0, i32* null, i32 0)
  store i32 %85, i32* %12, align 4
  br label %94

86:                                               ; preds = %43
  %87 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %88 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %89 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @IWL_ERR(%struct.iwl_priv* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %86, %81, %63
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %99 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 8
  %102 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %106 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %105, i32 0, i32 0
  %107 = call i32 @clear_bit(i64 %104, i32* %106)
  br label %108

108:                                              ; preds = %97, %94
  %109 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %110 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %111 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %117 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %120 = icmp ne %struct.ieee80211_sta* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %108
  %122 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %123 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  br label %126

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %121
  %127 = phi i64* [ %124, %121 ], [ null, %125 ]
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @IWL_DEBUG_WEP(%struct.iwl_priv* %109, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %115, i32 %118, i64* %127, i32 %128)
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %126, %40, %24
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @iwlagn_key_sta_id(%struct.iwl_priv*, i32, %struct.ieee80211_sta*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @iwl_get_free_ucode_key_offset(%struct.iwl_priv*) #1

declare dso_local i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf*, i32, %struct.ieee80211_key_seq*) #1

declare dso_local i32 @ieee80211_get_tkip_rx_p1k(%struct.ieee80211_key_conf*, i64*, i32, i32*) #1

declare dso_local i32 @iwlagn_send_sta_key(%struct.iwl_priv*, %struct.ieee80211_key_conf*, i64, i32, i32*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @IWL_DEBUG_WEP(%struct.iwl_priv*, i8*, i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
