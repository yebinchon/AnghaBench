; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.mwifiex_adapter = type { i64, i32, i64, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32 }
%struct.mwifiex_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mwifiex_ds_ant_cfg = type { i32, i32 }

@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HT_STREAM_2X2 = common dso_local global i64 0, align 8
@RF_ANTENNA_AUTO = common dso_local global i32 0, align 4
@HT_STREAM_1X1 = common dso_local global i64 0, align 8
@MWIFIEX_11AC_MCS_MAP_1X1 = common dso_local global i32 0, align 4
@MWIFIEX_11AC_MCS_MAP_2X2 = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@HostCmd_CMD_RF_ANTENNA = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i32, i32)* @mwifiex_cfg80211_set_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_set_antenna(%struct.wiphy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_adapter*, align 8
  %9 = alloca %struct.mwifiex_private*, align 8
  %10 = alloca %struct.mwifiex_ds_ant_cfg, align 4
  %11 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %15 = call %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy* %14)
  store %struct.mwifiex_adapter* %15, %struct.mwifiex_adapter** %8, align 8
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %17 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %18 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %16, i32 %17)
  store %struct.mwifiex_private* %18, %struct.mwifiex_private** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %163

27:                                               ; preds = %21
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %29 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HT_STREAM_2X2, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %163

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %49 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @BIT(i32 %50)
  %52 = sub nsw i32 %51, 1
  %53 = icmp ne i32 %47, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %163

57:                                               ; preds = %46, %40
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %60 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @BIT(i32 %61)
  %63 = sub nsw i32 %62, 1
  %64 = icmp eq i32 %58, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %67 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @RF_ANTENNA_AUTO, align 4
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @RF_ANTENNA_AUTO, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %65, %57
  br label %154

76:                                               ; preds = %27
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load i64, i64* @HT_STREAM_1X1, align 8
  %84 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %85 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %87 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32, i32* @MWIFIEX_11AC_MCS_MAP_1X1, align 4
  %92 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %93 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %82
  br label %108

95:                                               ; preds = %79, %76
  %96 = load i64, i64* @HT_STREAM_2X2, align 8
  %97 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %98 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %100 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @MWIFIEX_11AC_MCS_MAP_2X2, align 4
  %105 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %106 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %95
  br label %108

108:                                              ; preds = %107, %94
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %150, %108
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %153

113:                                              ; preds = %109
  %114 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %115 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %114, i32 0, i32 3
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %118, i64 %120
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = icmp ne %struct.TYPE_5__* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %113
  br label %150

125:                                              ; preds = %113
  %126 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %127 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %126, i32 0, i32 3
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %130, i64 %132
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store %struct.ieee80211_sta_ht_cap* %135, %struct.ieee80211_sta_ht_cap** %11, align 8
  %136 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %137 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @GET_RXMCSSUPP(i64 %138)
  store i32 %139, i32* %12, align 4
  %140 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %11, align 8
  %141 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %140, i32 0, i32 0
  %142 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %143 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @memset(i32* %141, i32 0, i32 %144)
  %146 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %11, align 8
  %147 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %146, i32 0, i32 0
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @memset(i32* %147, i32 255, i32 %148)
  br label %150

150:                                              ; preds = %125, %124
  %151 = load i32, i32* %13, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %109

153:                                              ; preds = %109
  br label %154

154:                                              ; preds = %153, %75
  %155 = load i32, i32* %6, align 4
  %156 = getelementptr inbounds %struct.mwifiex_ds_ant_cfg, %struct.mwifiex_ds_ant_cfg* %10, i32 0, i32 0
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %7, align 4
  %158 = getelementptr inbounds %struct.mwifiex_ds_ant_cfg, %struct.mwifiex_ds_ant_cfg* %10, i32 0, i32 1
  store i32 %157, i32* %158, align 4
  %159 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %160 = load i32, i32* @HostCmd_CMD_RF_ANTENNA, align 4
  %161 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %162 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %159, i32 %160, i32 %161, i32 0, %struct.mwifiex_ds_ant_cfg* %10, i32 1)
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %154, %54, %37, %24
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @GET_RXMCSSUPP(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_ant_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
