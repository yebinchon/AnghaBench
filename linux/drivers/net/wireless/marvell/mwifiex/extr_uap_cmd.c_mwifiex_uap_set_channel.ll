; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__*, %struct.cfg80211_chan_def }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mwifiex_uap_bss_param = type { i32, i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@BAND_CONFIG_BG = common dso_local global i32 0, align 4
@BAND_B = common dso_local global i32 0, align 4
@BAND_G = common dso_local global i32 0, align 4
@BAND_GN = common dso_local global i32 0, align 4
@BAND_CONFIG_A = common dso_local global i32 0, align 4
@BAND_A = common dso_local global i32 0, align 4
@BAND_AN = common dso_local global i32 0, align 4
@BAND_AAC = common dso_local global i32 0, align 4
@MWIFIEX_SEC_CHAN_BELOW = common dso_local global i32 0, align 4
@MWIFIEX_SEC_CHAN_ABOVE = common dso_local global i32 0, align 4
@WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown channel width: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_uap_set_channel(%struct.mwifiex_private* %0, %struct.mwifiex_uap_bss_param* %1, %struct.cfg80211_chan_def* byval(%struct.cfg80211_chan_def) align 8 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_uap_bss_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_uap_bss_param* %1, %struct.mwifiex_uap_bss_param** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %9 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 1
  %15 = bitcast %struct.cfg80211_chan_def* %14 to i8*
  %16 = bitcast %struct.cfg80211_chan_def* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  %17 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %2, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ieee80211_frequency_to_channel(i32 %20)
  %22 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %5, align 8
  %23 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %2, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %3
  %31 = load i32, i32* @BAND_CONFIG_BG, align 4
  %32 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %5, align 8
  %33 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @BAND_B, align 4
  %35 = load i32, i32* @BAND_G, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %2, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 132
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32, i32* @BAND_GN, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %30
  br label %66

45:                                               ; preds = %3
  %46 = load i32, i32* @BAND_CONFIG_A, align 4
  %47 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %5, align 8
  %48 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @BAND_A, align 4
  store i32 %49, i32* %6, align 4
  %50 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %2, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 132
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @BAND_AN, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %45
  %58 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %2, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 131
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @BAND_AAC, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %44
  %67 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %2, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %101 [
    i32 130, label %69
    i32 135, label %69
    i32 132, label %69
    i32 133, label %69
    i32 131, label %70
    i32 129, label %91
    i32 128, label %91
    i32 134, label %91
  ]

69:                                               ; preds = %66, %66, %66, %66
  br label %109

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %2, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %2, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* @MWIFIEX_SEC_CHAN_BELOW, align 4
  %80 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %5, align 8
  %81 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %90

84:                                               ; preds = %70
  %85 = load i32, i32* @MWIFIEX_SEC_CHAN_ABOVE, align 4
  %86 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %5, align 8
  %87 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %78
  br label %109

91:                                               ; preds = %66, %66, %66
  %92 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %5, align 8
  %93 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mwifiex_get_sec_chan_offset(i32 %94)
  %96 = shl i32 %95, 4
  %97 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %5, align 8
  %98 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %109

101:                                              ; preds = %66
  %102 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %103 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* @WARN, align 4
  %106 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %2, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @mwifiex_dbg(%struct.TYPE_4__* %104, i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %101, %91, %90, %69
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %112 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %109
  %119 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %120 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @mwifiex_send_domain_info_cmd_fw(i32 %123)
  %125 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %126 = call i32 @mwifiex_dnld_txpwr_table(%struct.mwifiex_private* %125)
  br label %127

127:                                              ; preds = %118, %109
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #2

declare dso_local i32 @mwifiex_get_sec_chan_offset(i32) #2

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_4__*, i32, i8*, i32) #2

declare dso_local i32 @mwifiex_send_domain_info_cmd_fw(i32) #2

declare dso_local i32 @mwifiex_dnld_txpwr_table(%struct.mwifiex_private*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
