; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_build_tx_cmd_basic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_build_tx_cmd_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_device_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.il3945_tx_cmd = type { i32, i32, i64, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@TX_CMD_FLG_ACK_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_TSF_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_MORE_FRAG_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_ANT_SEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_device_cmd*, %struct.ieee80211_tx_info*, %struct.ieee80211_hdr*, i32)* @il3945_build_tx_cmd_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_build_tx_cmd_basic(%struct.il_priv* %0, %struct.il_device_cmd* %1, %struct.ieee80211_tx_info* %2, %struct.ieee80211_hdr* %3, i32 %4) #0 {
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca %struct.il_device_cmd*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.il3945_tx_cmd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store %struct.il_device_cmd* %1, %struct.il_device_cmd** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.ieee80211_hdr* %3, %struct.ieee80211_hdr** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.il_device_cmd*, %struct.il_device_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.il3945_tx_cmd*
  store %struct.il3945_tx_cmd* %19, %struct.il3945_tx_cmd** %11, align 8
  %20 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %21 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %27 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %28 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* @TX_CMD_FLG_ACK_MSK, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i64 @ieee80211_is_mgmt(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i32, i32* %13, align 4
  %49 = call i64 @ieee80211_is_probe_resp(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = and i32 %55, 15
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @TX_CMD_FLG_TSF_MSK, align 4
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %58, %51, %47
  br label %71

63:                                               ; preds = %5
  %64 = load i32, i32* @TX_CMD_FLG_ACK_MSK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %63, %62
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %74 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i64 @ieee80211_has_morefrags(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @TX_CMD_FLG_MORE_FRAG_MSK, align 4
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i32, i32* %13, align 4
  %84 = call i64 @ieee80211_is_data_qos(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %88 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %87)
  store i32* %88, i32** %14, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 15
  %93 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %94 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %12, align 4
  br label %103

99:                                               ; preds = %82
  %100 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %99, %86
  %104 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %105 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @il_tx_cmd_protection(%struct.il_priv* %104, %struct.ieee80211_tx_info* %105, i32 %106, i32* %12)
  %108 = load i32, i32* @TX_CMD_FLG_ANT_SEL_MSK, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %12, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i64 @ieee80211_is_mgmt(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %103
  %116 = load i32, i32* %13, align 4
  %117 = call i64 @ieee80211_is_assoc_req(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %13, align 4
  %121 = call i64 @ieee80211_is_reassoc_req(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119, %115
  %124 = call i8* @cpu_to_le16(i32 3)
  %125 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %126 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i8* %124, i8** %127, align 8
  br label %133

128:                                              ; preds = %119
  %129 = call i8* @cpu_to_le16(i32 2)
  %130 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %131 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  br label %133

133:                                              ; preds = %128, %123
  br label %138

134:                                              ; preds = %103
  %135 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %136 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i8* null, i8** %137, align 8
  br label %138

138:                                              ; preds = %134, %133
  %139 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %140 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %139, i32 0, i32 4
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %143 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  %144 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %11, align 8
  %145 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %144, i32 0, i32 2
  store i64 0, i64* %145, align 8
  ret void
}

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ieee80211_has_morefrags(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @il_tx_cmd_protection(%struct.il_priv*, %struct.ieee80211_tx_info*, i32, i32*) #1

declare dso_local i64 @ieee80211_is_assoc_req(i32) #1

declare dso_local i64 @ieee80211_is_reassoc_req(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
