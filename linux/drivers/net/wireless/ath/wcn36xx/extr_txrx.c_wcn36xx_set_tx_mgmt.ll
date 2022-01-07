; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_set_tx_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_set_tx_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx_tx_bd = type { i32, i32, i32, i32, i8*, i32, i32 }
%struct.wcn36xx = type { i32 }
%struct.wcn36xx_vif = type { i64, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32, i32 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@WCN36XX_BD_RATE_CTRL = common dso_local global i8* null, align 8
@WCN36XX_BD_RATE_MGMT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"frame control type unknown\0A\00", align 1
@WCN36XX_TX_B_WQ_ID = common dso_local global i32 0, align 4
@WCN36XX_TX_U_WQ_ID = common dso_local global i32 0, align 4
@WCN36XX_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcn36xx_tx_bd*, %struct.wcn36xx*, %struct.wcn36xx_vif**, %struct.sk_buff*, i32)* @wcn36xx_set_tx_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_set_tx_mgmt(%struct.wcn36xx_tx_bd* %0, %struct.wcn36xx* %1, %struct.wcn36xx_vif** %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.wcn36xx_tx_bd*, align 8
  %7 = alloca %struct.wcn36xx*, align 8
  %8 = alloca %struct.wcn36xx_vif**, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.wcn36xx_vif*, align 8
  store %struct.wcn36xx_tx_bd* %0, %struct.wcn36xx_tx_bd** %6, align 8
  store %struct.wcn36xx* %1, %struct.wcn36xx** %7, align 8
  store %struct.wcn36xx_vif** %2, %struct.wcn36xx_vif*** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %11, align 8
  %17 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.wcn36xx_vif* @get_vif_by_addr(%struct.wcn36xx* %17, i32 %20)
  store %struct.wcn36xx_vif* %21, %struct.wcn36xx_vif** %12, align 8
  %22 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %12, align 8
  %23 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %6, align 8
  %26 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %12, align 8
  %28 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %6, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %6, align 8
  %33 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ieee80211_is_mgmt(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %5
  %40 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %41 = call i64 @WCN36XX_BAND(%struct.wcn36xx* %40)
  %42 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** @WCN36XX_BD_RATE_CTRL, align 8
  br label %48

46:                                               ; preds = %39
  %47 = load i8*, i8** @WCN36XX_BD_RATE_MGMT, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i8* [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %6, align 8
  %51 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  br label %65

52:                                               ; preds = %5
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ieee80211_is_ctl(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i8*, i8** @WCN36XX_BD_RATE_CTRL, align 8
  %60 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %6, align 8
  %61 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  br label %64

62:                                               ; preds = %52
  %63 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %12, align 8
  %67 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %72 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ieee80211_is_probe_req(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %76, %70, %65
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %6, align 8
  %82 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %6, align 8
  %84 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  %85 = load i32, i32* @WCN36XX_TX_B_WQ_ID, align 4
  %86 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %6, align 8
  %87 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  br label %92

88:                                               ; preds = %77
  %89 = load i32, i32* @WCN36XX_TX_U_WQ_ID, align 4
  %90 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %6, align 8
  %91 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %80
  %93 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %12, align 8
  %94 = load %struct.wcn36xx_vif**, %struct.wcn36xx_vif*** %8, align 8
  store %struct.wcn36xx_vif* %93, %struct.wcn36xx_vif** %94, align 8
  %95 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %6, align 8
  %96 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %97 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @ieee80211_is_data_qos(i32 %98)
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i64 4, i64 4
  %103 = trunc i64 %102 to i32
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @WCN36XX_TID, align 4
  %108 = call i32 @wcn36xx_set_tx_pdu(%struct.wcn36xx_tx_bd* %95, i32 %103, i32 %106, i32 %107)
  ret void
}

declare dso_local %struct.wcn36xx_vif* @get_vif_by_addr(%struct.wcn36xx*, i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @WCN36XX_BAND(%struct.wcn36xx*) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @wcn36xx_warn(i8*) #1

declare dso_local i64 @ieee80211_is_probe_req(i32) #1

declare dso_local i32 @wcn36xx_set_tx_pdu(%struct.wcn36xx_tx_bd*, i32, i32, i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
