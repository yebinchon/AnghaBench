; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_set_tx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_set_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx_tx_bd = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wcn36xx = type { i32 }
%struct.wcn36xx_vif = type { i32, i32, i32 }
%struct.wcn36xx_sta = type { i32, i32, i32, i32, i32, i32, i32, %struct.wcn36xx_vif* }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_vif = type { i64 }

@WCN36XX_BD_RATE_DATA = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcn36xx_tx_bd*, %struct.wcn36xx*, %struct.wcn36xx_vif**, %struct.wcn36xx_sta*, %struct.sk_buff*, i32)* @wcn36xx_set_tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_set_tx_data(%struct.wcn36xx_tx_bd* %0, %struct.wcn36xx* %1, %struct.wcn36xx_vif** %2, %struct.wcn36xx_sta* %3, %struct.sk_buff* %4, i32 %5) #0 {
  %7 = alloca %struct.wcn36xx_tx_bd*, align 8
  %8 = alloca %struct.wcn36xx*, align 8
  %9 = alloca %struct.wcn36xx_vif**, align 8
  %10 = alloca %struct.wcn36xx_sta*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca %struct.ieee80211_vif*, align 8
  %15 = alloca %struct.wcn36xx_vif*, align 8
  %16 = alloca i32, align 4
  store %struct.wcn36xx_tx_bd* %0, %struct.wcn36xx_tx_bd** %7, align 8
  store %struct.wcn36xx* %1, %struct.wcn36xx** %8, align 8
  store %struct.wcn36xx_vif** %2, %struct.wcn36xx_vif*** %9, align 8
  store %struct.wcn36xx_sta* %3, %struct.wcn36xx_sta** %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %20, %struct.ieee80211_hdr** %13, align 8
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %14, align 8
  store %struct.wcn36xx_vif* null, %struct.wcn36xx_vif** %15, align 8
  %21 = load i32, i32* @WCN36XX_BD_RATE_DATA, align 4
  %22 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %23 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %25 = icmp ne %struct.wcn36xx_sta* %24, null
  br i1 %25, label %26, label %84

26:                                               ; preds = %6
  %27 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %28 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %27, i32 0, i32 7
  %29 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %28, align 8
  store %struct.wcn36xx_vif* %29, %struct.wcn36xx_vif** %15, align 8
  %30 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %15, align 8
  %31 = call %struct.ieee80211_vif* @wcn36xx_priv_to_vif(%struct.wcn36xx_vif* %30)
  store %struct.ieee80211_vif* %31, %struct.ieee80211_vif** %14, align 8
  %32 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %33 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %36 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %14, align 8
  %38 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %26
  %43 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %44 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %47 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %49 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %52 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  br label %83

53:                                               ; preds = %26
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %14, align 8
  %55 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %14, align 8
  %61 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %14, align 8
  %67 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65, %59, %53
  %72 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %73 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %76 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %78 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %81 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %71, %65
  br label %83

83:                                               ; preds = %82, %42
  br label %105

84:                                               ; preds = %6
  %85 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %86 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %87 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.wcn36xx_vif* @get_vif_by_addr(%struct.wcn36xx* %85, i32 %88)
  store %struct.wcn36xx_vif* %89, %struct.wcn36xx_vif** %15, align 8
  %90 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %15, align 8
  %91 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %94 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %15, align 8
  %96 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %99 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %15, align 8
  %101 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %104 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %84, %83
  %106 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %107 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @ieee80211_is_nullfunc(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %105
  %112 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %113 = icmp ne %struct.wcn36xx_sta* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %116 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114, %105
  %120 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %121 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %120, i32 0, i32 0
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %114, %111
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %127 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %129 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %128, i32 0, i32 2
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %122
  %131 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %15, align 8
  %132 = load %struct.wcn36xx_vif**, %struct.wcn36xx_vif*** %9, align 8
  store %struct.wcn36xx_vif* %131, %struct.wcn36xx_vif** %132, align 8
  %133 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %134 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ieee80211_is_data_qos(i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %7, align 8
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i64 4, i64 4
  %142 = trunc i64 %141 to i32
  %143 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %147 = icmp ne %struct.wcn36xx_sta* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %130
  %149 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %150 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  br label %153

152:                                              ; preds = %130
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi i32 [ %151, %148 ], [ 0, %152 ]
  %155 = call i32 @wcn36xx_set_tx_pdu(%struct.wcn36xx_tx_bd* %137, i32 %142, i32 %145, i32 %154)
  %156 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %157 = icmp ne %struct.wcn36xx_sta* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load i32, i32* %16, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %163 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %165 = call i32 @wcn36xx_tx_start_ampdu(%struct.wcn36xx* %162, %struct.wcn36xx_sta* %163, %struct.sk_buff* %164)
  br label %166

166:                                              ; preds = %161, %158, %153
  ret void
}

declare dso_local %struct.ieee80211_vif* @wcn36xx_priv_to_vif(%struct.wcn36xx_vif*) #1

declare dso_local %struct.wcn36xx_vif* @get_vif_by_addr(%struct.wcn36xx*, i32) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @wcn36xx_set_tx_pdu(%struct.wcn36xx_tx_bd*, i32, i32, i32) #1

declare dso_local i32 @wcn36xx_tx_start_ampdu(%struct.wcn36xx*, %struct.wcn36xx_sta*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
