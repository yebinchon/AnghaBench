; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_configure_uapsd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_configure_uapsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mac_power_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.iwl_mvm_vif = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@IWL_UCODE_WOWLAN = common dso_local global i64 0, align 8
@POWER_FLAGS_ADVANCE_PM_ENA_MSK = common dso_local global i32 0, align 4
@POWER_FLAGS_UAPSD_MISBEHAVING_ENA_MSK = common dso_local global i32 0, align 4
@POWER_FLAGS_SNOOZE_ENA_MSK = common dso_local global i32 0, align 4
@IWL_MVM_PS_SNOOZE_INTERVAL = common dso_local global i32 0, align 4
@IWL_MVM_WOWLAN_PS_SNOOZE_WINDOW = common dso_local global i32 0, align 4
@IWL_MVM_PS_SNOOZE_WINDOW = common dso_local global i32 0, align 4
@IWL_MVM_WOWLAN_PS_RX_DATA_TIMEOUT = common dso_local global i32 0, align 4
@IWL_MVM_WOWLAN_PS_TX_DATA_TIMEOUT = common dso_local global i32 0, align 4
@IWL_MVM_UAPSD_RX_DATA_TIMEOUT = common dso_local global i32 0, align 4
@IWL_MVM_UAPSD_TX_DATA_TIMEOUT = common dso_local global i32 0, align 4
@IWL_MVM_PS_SNOOZE_HEAVY_TX_THLD_PACKETS = common dso_local global i32 0, align 4
@IWL_MVM_PS_SNOOZE_HEAVY_RX_THLD_PACKETS = common dso_local global i32 0, align 4
@IWL_MVM_PS_HEAVY_TX_THLD_PACKETS = common dso_local global i32 0, align 4
@IWL_MVM_PS_HEAVY_RX_THLD_PACKETS = common dso_local global i32 0, align 4
@IWL_MVM_PS_HEAVY_TX_THLD_PERCENT = common dso_local global i32 0, align 4
@IWL_MVM_PS_HEAVY_RX_THLD_PERCENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mac_power_cmd*)* @iwl_mvm_power_configure_uapsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_power_configure_uapsd(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_mac_power_cmd* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mac_power_cmd*, align 8
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.iwl_mac_power_cmd* %2, %struct.iwl_mac_power_cmd** %6, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %11 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %10)
  store %struct.iwl_mvm_vif* %11, %struct.iwl_mvm_vif** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 128, i32* %8, align 4
  br label %12

12:                                               ; preds = %75, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp ule i32 %13, 130
  br i1 %14, label %15, label %78

15:                                               ; preds = %12
  %16 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %75

26:                                               ; preds = %15
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IWL_UCODE_WOWLAN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load i32, i32* @POWER_FLAGS_ADVANCE_PM_ENA_MSK, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %37 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %33, %26
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %40
  %50 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  switch i32 %60, label %73 [
    i32 128, label %61
    i32 129, label %64
    i32 131, label %67
    i32 130, label %70
  ]

61:                                               ; preds = %59
  %62 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %63 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %62, i32 0, i32 2
  store i32 6, i32* %63, align 8
  br label %73

64:                                               ; preds = %59
  %65 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %66 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %65, i32 0, i32 2
  store i32 5, i32* %66, align 8
  br label %73

67:                                               ; preds = %59
  %68 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %69 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  br label %73

70:                                               ; preds = %59
  %71 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %72 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %59, %70, %67, %64, %61
  br label %74

74:                                               ; preds = %73, %49, %40
  br label %75

75:                                               ; preds = %74, %25
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %12

78:                                               ; preds = %12
  %79 = load i32, i32* @POWER_FLAGS_UAPSD_MISBEHAVING_ENA_MSK, align 4
  %80 = call i32 @cpu_to_le16(i32 %79)
  %81 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %82 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %86 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @BIT(i32 128)
  %89 = call i32 @BIT(i32 129)
  %90 = or i32 %88, %89
  %91 = call i32 @BIT(i32 131)
  %92 = or i32 %90, %91
  %93 = call i32 @BIT(i32 130)
  %94 = or i32 %92, %93
  %95 = icmp eq i32 %87, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %78
  %97 = load i32, i32* @POWER_FLAGS_SNOOZE_ENA_MSK, align 4
  %98 = call i32 @cpu_to_le16(i32 %97)
  %99 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %100 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @IWL_MVM_PS_SNOOZE_INTERVAL, align 4
  %104 = call i32 @cpu_to_le16(i32 %103)
  %105 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %106 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IWL_UCODE_WOWLAN, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %96
  %114 = load i32, i32* @IWL_MVM_WOWLAN_PS_SNOOZE_WINDOW, align 4
  %115 = call i32 @cpu_to_le16(i32 %114)
  br label %119

116:                                              ; preds = %96
  %117 = load i32, i32* @IWL_MVM_PS_SNOOZE_WINDOW, align 4
  %118 = call i32 @cpu_to_le16(i32 %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi i32 [ %115, %113 ], [ %118, %116 ]
  %121 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %122 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %78
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %125 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %124, i32 0, i32 1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %130 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %129, i32 0, i32 11
  store i32 %128, i32* %130, align 8
  %131 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %132 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @IWL_UCODE_WOWLAN, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %145, label %137

137:                                              ; preds = %123
  %138 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %139 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @POWER_FLAGS_SNOOZE_ENA_MSK, align 4
  %142 = call i32 @cpu_to_le16(i32 %141)
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %137, %123
  %146 = load i32, i32* @IWL_MVM_WOWLAN_PS_RX_DATA_TIMEOUT, align 4
  %147 = call i8* @cpu_to_le32(i32 %146)
  %148 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %149 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %148, i32 0, i32 10
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* @IWL_MVM_WOWLAN_PS_TX_DATA_TIMEOUT, align 4
  %151 = call i8* @cpu_to_le32(i32 %150)
  %152 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %153 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %152, i32 0, i32 9
  store i8* %151, i8** %153, align 8
  br label %163

154:                                              ; preds = %137
  %155 = load i32, i32* @IWL_MVM_UAPSD_RX_DATA_TIMEOUT, align 4
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %158 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %157, i32 0, i32 10
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* @IWL_MVM_UAPSD_TX_DATA_TIMEOUT, align 4
  %160 = call i8* @cpu_to_le32(i32 %159)
  %161 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %162 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %161, i32 0, i32 9
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %154, %145
  %164 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %165 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @POWER_FLAGS_SNOOZE_ENA_MSK, align 4
  %168 = call i32 @cpu_to_le16(i32 %167)
  %169 = and i32 %166, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %163
  %172 = load i32, i32* @IWL_MVM_PS_SNOOZE_HEAVY_TX_THLD_PACKETS, align 4
  %173 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %174 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %173, i32 0, i32 8
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @IWL_MVM_PS_SNOOZE_HEAVY_RX_THLD_PACKETS, align 4
  %176 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %177 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 4
  br label %185

178:                                              ; preds = %163
  %179 = load i32, i32* @IWL_MVM_PS_HEAVY_TX_THLD_PACKETS, align 4
  %180 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %181 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %180, i32 0, i32 8
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @IWL_MVM_PS_HEAVY_RX_THLD_PACKETS, align 4
  %183 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %184 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %178, %171
  %186 = load i32, i32* @IWL_MVM_PS_HEAVY_TX_THLD_PERCENT, align 4
  %187 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %188 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %187, i32 0, i32 6
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @IWL_MVM_PS_HEAVY_RX_THLD_PERCENT, align 4
  %190 = load %struct.iwl_mac_power_cmd*, %struct.iwl_mac_power_cmd** %6, align 8
  %191 = getelementptr inbounds %struct.iwl_mac_power_cmd, %struct.iwl_mac_power_cmd* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 4
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
