; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_get_station_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_get_station_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.station_info = type { i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_scb_val_le = type { i32, i32, i32, i32, i32 }
%struct.brcmf_pktcnt_le = type { i32, i32, i32, i32, i32 }

@BRCMF_C_GET_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BRCMF_C_GET_RATE error (%d)\0A\00", align 1
@NL80211_STA_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@BRCMF_C_GET_RSSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"BRCMF_C_GET_RSSI error (%d)\0A\00", align 1
@NL80211_STA_INFO_SIGNAL = common dso_local global i32 0, align 4
@BRCMF_C_GET_GET_PKTCNTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"BRCMF_C_GET_GET_PKTCNTS error (%d)\0A\00", align 1
@NL80211_STA_INFO_RX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_DROP_MISC = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_if*, %struct.station_info*)* @brcmf_cfg80211_get_station_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_cfg80211_get_station_ibss(%struct.brcmf_if* %0, %struct.station_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca %struct.station_info*, align 8
  %6 = alloca %struct.brcmf_pub*, align 8
  %7 = alloca %struct.brcmf_scb_val_le, align 4
  %8 = alloca %struct.brcmf_pktcnt_le, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store %struct.station_info* %1, %struct.station_info** %5, align 8
  %12 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %13 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %12, i32 0, i32 0
  %14 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  store %struct.brcmf_pub* %14, %struct.brcmf_pub** %6, align 8
  %15 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %16 = load i32, i32* @BRCMF_C_GET_RATE, align 4
  %17 = call i64 @brcmf_fil_cmd_int_get(%struct.brcmf_if* %15, i32 %16, i32* %10)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @bphy_err(%struct.brcmf_pub* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %3, align 8
  br label %109

25:                                               ; preds = %2
  %26 = load i32, i32* @NL80211_STA_INFO_TX_BITRATE, align 4
  %27 = call i32 @BIT_ULL(i32 %26)
  %28 = load %struct.station_info*, %struct.station_info** %5, align 8
  %29 = getelementptr inbounds %struct.station_info, %struct.station_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %32, 5
  %34 = load %struct.station_info*, %struct.station_info** %5, align 8
  %35 = getelementptr inbounds %struct.station_info, %struct.station_info* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = call i32 @memset(%struct.brcmf_scb_val_le* %7, i32 0, i32 20)
  %38 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %39 = load i32, i32* @BRCMF_C_GET_RSSI, align 4
  %40 = call i64 @brcmf_fil_cmd_data_get(%struct.brcmf_if* %38, i32 %39, %struct.brcmf_scb_val_le* %7, i32 20)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %25
  %44 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @bphy_err(%struct.brcmf_pub* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %3, align 8
  br label %109

48:                                               ; preds = %25
  %49 = getelementptr inbounds %struct.brcmf_scb_val_le, %struct.brcmf_scb_val_le* %7, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le32_to_cpu(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @NL80211_STA_INFO_SIGNAL, align 4
  %54 = call i32 @BIT_ULL(i32 %53)
  %55 = load %struct.station_info*, %struct.station_info** %5, align 8
  %56 = getelementptr inbounds %struct.station_info, %struct.station_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.station_info*, %struct.station_info** %5, align 8
  %61 = getelementptr inbounds %struct.station_info, %struct.station_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %63 = load i32, i32* @BRCMF_C_GET_GET_PKTCNTS, align 4
  %64 = bitcast %struct.brcmf_pktcnt_le* %8 to %struct.brcmf_scb_val_le*
  %65 = call i64 @brcmf_fil_cmd_data_get(%struct.brcmf_if* %62, i32 %63, %struct.brcmf_scb_val_le* %64, i32 20)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %48
  %69 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @bphy_err(%struct.brcmf_pub* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %3, align 8
  br label %109

73:                                               ; preds = %48
  %74 = load i32, i32* @NL80211_STA_INFO_RX_PACKETS, align 4
  %75 = call i32 @BIT_ULL(i32 %74)
  %76 = load i32, i32* @NL80211_STA_INFO_RX_DROP_MISC, align 4
  %77 = call i32 @BIT_ULL(i32 %76)
  %78 = or i32 %75, %77
  %79 = load i32, i32* @NL80211_STA_INFO_TX_PACKETS, align 4
  %80 = call i32 @BIT_ULL(i32 %79)
  %81 = or i32 %78, %80
  %82 = load i32, i32* @NL80211_STA_INFO_TX_FAILED, align 4
  %83 = call i32 @BIT_ULL(i32 %82)
  %84 = or i32 %81, %83
  %85 = load %struct.station_info*, %struct.station_info** %5, align 8
  %86 = getelementptr inbounds %struct.station_info, %struct.station_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = getelementptr inbounds %struct.brcmf_pktcnt_le, %struct.brcmf_pktcnt_le* %8, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le32_to_cpu(i32 %90)
  %92 = load %struct.station_info*, %struct.station_info** %5, align 8
  %93 = getelementptr inbounds %struct.station_info, %struct.station_info* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  %94 = getelementptr inbounds %struct.brcmf_pktcnt_le, %struct.brcmf_pktcnt_le* %8, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @le32_to_cpu(i32 %95)
  %97 = load %struct.station_info*, %struct.station_info** %5, align 8
  %98 = getelementptr inbounds %struct.station_info, %struct.station_info* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  %99 = getelementptr inbounds %struct.brcmf_pktcnt_le, %struct.brcmf_pktcnt_le* %8, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le32_to_cpu(i32 %100)
  %102 = load %struct.station_info*, %struct.station_info** %5, align 8
  %103 = getelementptr inbounds %struct.station_info, %struct.station_info* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = getelementptr inbounds %struct.brcmf_pktcnt_le, %struct.brcmf_pktcnt_le* %8, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le32_to_cpu(i32 %105)
  %107 = load %struct.station_info*, %struct.station_info** %5, align 8
  %108 = getelementptr inbounds %struct.station_info, %struct.station_info* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  store i64 0, i64* %3, align 8
  br label %109

109:                                              ; preds = %73, %68, %43, %20
  %110 = load i64, i64* %3, align 8
  ret i64 %110
}

declare dso_local i64 @brcmf_fil_cmd_int_get(%struct.brcmf_if*, i32, i32*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @memset(%struct.brcmf_scb_val_le*, i32, i32) #1

declare dso_local i64 @brcmf_fil_cmd_data_get(%struct.brcmf_if*, i32, %struct.brcmf_scb_val_le*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
