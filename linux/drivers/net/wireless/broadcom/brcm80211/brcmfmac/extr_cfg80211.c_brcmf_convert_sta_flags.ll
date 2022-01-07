; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_convert_sta_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_convert_sta_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.station_info = type { %struct.nl80211_sta_flag_update, i32 }
%struct.nl80211_sta_flag_update = type { i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"flags %08x\0A\00", align 1
@NL80211_STA_INFO_STA_FLAGS = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_WME = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHENTICATED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@BRCMF_STA_WME = common dso_local global i32 0, align 4
@BRCMF_STA_AUTHE = common dso_local global i32 0, align 4
@BRCMF_STA_ASSOC = common dso_local global i32 0, align 4
@BRCMF_STA_AUTHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.station_info*)* @brcmf_convert_sta_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_convert_sta_flags(i32 %0, %struct.station_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.station_info*, align 8
  %5 = alloca %struct.nl80211_sta_flag_update*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.station_info* %1, %struct.station_info** %4, align 8
  %6 = load i32, i32* @TRACE, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @brcmf_dbg(i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @NL80211_STA_INFO_STA_FLAGS, align 4
  %10 = call i32 @BIT_ULL(i32 %9)
  %11 = load %struct.station_info*, %struct.station_info** %4, align 8
  %12 = getelementptr inbounds %struct.station_info, %struct.station_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.station_info*, %struct.station_info** %4, align 8
  %16 = getelementptr inbounds %struct.station_info, %struct.station_info* %15, i32 0, i32 0
  store %struct.nl80211_sta_flag_update* %16, %struct.nl80211_sta_flag_update** %5, align 8
  %17 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = or i32 %24, %26
  %28 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %5, align 8
  %29 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @BRCMF_STA_WME, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %5, align 8
  %38 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %2
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @BRCMF_STA_AUTHE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %5, align 8
  %50 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @BRCMF_STA_ASSOC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %5, align 8
  %62 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @BRCMF_STA_AUTHO, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %5, align 8
  %74 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %70, %65
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
