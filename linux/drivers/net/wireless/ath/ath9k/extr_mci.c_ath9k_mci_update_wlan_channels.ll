; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_update_wlan_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_update_wlan_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { %struct.ath9k_channel*, %struct.TYPE_2__ }
%struct.ath9k_channel = type { i32 }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32* }

@__const.ath9k_mci_update_wlan_channels.channelmap = private unnamed_addr constant [4 x i32] [i32 0, i32 -65536, i32 -1, i32 2147483647], align 16
@ATH_MCI_NUM_BT_CHANNELS = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"WLAN current channel %d mask BT channel %d - %d\0A\00", align 1
@MCI_STATE_SEND_VERSION_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_mci_update_wlan_channels(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath9k_hw_mci*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = load %struct.ath_hw*, %struct.ath_hw** %14, align 8
  store %struct.ath_hw* %15, %struct.ath_hw** %5, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.ath9k_hw_mci* %18, %struct.ath9k_hw_mci** %6, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %20, align 8
  store %struct.ath9k_channel* %21, %struct.ath9k_channel** %7, align 8
  %22 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([4 x i32]* @__const.ath9k_mci_update_wlan_channels.channelmap to i8*), i64 16, i1 false)
  %23 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %24 = icmp ne %struct.ath9k_channel* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %27 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %2
  br label %117

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %93

34:                                               ; preds = %30
  %35 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %36 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 2402
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %39, 10
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 10
  store i32 %42, i32* %11, align 4
  %43 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %44 = call i64 @IS_CHAN_HT40PLUS(%struct.ath9k_channel* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 20
  store i32 %48, i32* %11, align 4
  br label %57

49:                                               ; preds = %34
  %50 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %51 = call i64 @IS_CHAN_HT40MINUS(%struct.ath9k_channel* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, 20
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %46
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 7
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 7
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %57
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @ATH_MCI_NUM_BT_CHANNELS, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @ATH_MCI_NUM_BT_CHANNELS, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %74 = call i32 @ath9k_hw_common(%struct.ath_hw* %73)
  %75 = load i32, i32* @MCI, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @ath_dbg(i32 %74, i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %89, %72
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = bitcast [4 x i32]* %8 to i32**
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @MCI_GPM_CLR_CHANNEL_BIT(i32** %86, i32 %87)
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %81

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %33
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %103 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %94

111:                                              ; preds = %94
  %112 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %113 = call i32 @ar9003_mci_send_wlan_channels(%struct.ath_hw* %112)
  %114 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %115 = load i32, i32* @MCI_STATE_SEND_VERSION_QUERY, align 4
  %116 = call i32 @ar9003_mci_state(%struct.ath_hw* %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #2

declare dso_local i64 @IS_CHAN_HT40PLUS(%struct.ath9k_channel*) #2

declare dso_local i64 @IS_CHAN_HT40MINUS(%struct.ath9k_channel*) #2

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #2

declare dso_local i32 @MCI_GPM_CLR_CHANNEL_BIT(i32**, i32) #2

declare dso_local i32 @ar9003_mci_send_wlan_channels(%struct.ath_hw*) #2

declare dso_local i32 @ar9003_mci_state(%struct.ath_hw*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
