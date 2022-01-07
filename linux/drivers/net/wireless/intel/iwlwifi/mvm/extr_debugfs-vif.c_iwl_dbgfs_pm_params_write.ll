; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_pm_params_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_pm_params_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { %struct.iwl_mvm* }
%struct.iwl_mvm = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"keep_alive=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@MVM_DEBUGFS_PM_KEEP_ALIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"skip_over_dtim=\00", align 1
@MVM_DEBUGFS_PM_SKIP_OVER_DTIM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"skip_dtim_periods=\00", align 1
@MVM_DEBUGFS_PM_SKIP_DTIM_PERIODS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"rx_data_timeout=\00", align 1
@MVM_DEBUGFS_PM_RX_DATA_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"tx_data_timeout=\00", align 1
@MVM_DEBUGFS_PM_TX_DATA_TIMEOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"lprx=\00", align 1
@MVM_DEBUGFS_PM_LPRX_ENA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"lprx_rssi_threshold=\00", align 1
@POWER_LPRX_RSSI_THRESHOLD_MAX = common dso_local global i32 0, align 4
@POWER_LPRX_RSSI_THRESHOLD_MIN = common dso_local global i32 0, align 4
@MVM_DEBUGFS_PM_LPRX_RSSI_THRESHOLD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"snooze_enable=\00", align 1
@MVM_DEBUGFS_PM_SNOOZE_ENABLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"uapsd_misbehaving=\00", align 1
@MVM_DEBUGFS_PM_UAPSD_MISBEHAVING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"use_ps_poll=\00", align 1
@MVM_DEBUGFS_PM_USE_PS_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_vif*, i8*, i64, i32*)* @iwl_dbgfs_pm_params_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_pm_params_write(%struct.ieee80211_vif* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca %struct.iwl_mvm*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %15)
  store %struct.iwl_mvm_vif* %16, %struct.iwl_mvm_vif** %10, align 8
  %17 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %17, i32 0, i32 0
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %18, align 8
  store %struct.iwl_mvm* %19, %struct.iwl_mvm** %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strncmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %20, i32 11)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 11
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %204

31:                                               ; preds = %23
  %32 = load i32, i32* @MVM_DEBUGFS_PM_KEEP_ALIVE, align 4
  store i32 %32, i32* %12, align 4
  br label %182

33:                                               ; preds = %4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @strncmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 15)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 15
  %40 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %204

45:                                               ; preds = %37
  %46 = load i32, i32* @MVM_DEBUGFS_PM_SKIP_OVER_DTIM, align 4
  store i32 %46, i32* %12, align 4
  br label %181

47:                                               ; preds = %33
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @strncmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 18)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 18
  %54 = call i32 @sscanf(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i64, i64* @EINVAL, align 8
  %58 = sub i64 0, %57
  store i64 %58, i64* %5, align 8
  br label %204

59:                                               ; preds = %51
  %60 = load i32, i32* @MVM_DEBUGFS_PM_SKIP_DTIM_PERIODS, align 4
  store i32 %60, i32* %12, align 4
  br label %180

61:                                               ; preds = %47
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %62, i32 16)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 16
  %68 = call i32 @sscanf(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* @EINVAL, align 8
  %72 = sub i64 0, %71
  store i64 %72, i64* %5, align 8
  br label %204

73:                                               ; preds = %65
  %74 = load i32, i32* @MVM_DEBUGFS_PM_RX_DATA_TIMEOUT, align 4
  store i32 %74, i32* %12, align 4
  br label %179

75:                                               ; preds = %61
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %76, i32 16)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 16
  %82 = call i32 @sscanf(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i64, i64* @EINVAL, align 8
  %86 = sub i64 0, %85
  store i64 %86, i64* %5, align 8
  br label %204

87:                                               ; preds = %79
  %88 = load i32, i32* @MVM_DEBUGFS_PM_TX_DATA_TIMEOUT, align 4
  store i32 %88, i32* %12, align 4
  br label %178

89:                                               ; preds = %75
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %90, i32 5)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 5
  %96 = call i32 @sscanf(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i64, i64* @EINVAL, align 8
  %100 = sub i64 0, %99
  store i64 %100, i64* %5, align 8
  br label %204

101:                                              ; preds = %93
  %102 = load i32, i32* @MVM_DEBUGFS_PM_LPRX_ENA, align 4
  store i32 %102, i32* %12, align 4
  br label %177

103:                                              ; preds = %89
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @strncmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %104, i32 20)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %128, label %107

107:                                              ; preds = %103
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 20
  %110 = call i32 @sscanf(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i64, i64* @EINVAL, align 8
  %114 = sub i64 0, %113
  store i64 %114, i64* %5, align 8
  br label %204

115:                                              ; preds = %107
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @POWER_LPRX_RSSI_THRESHOLD_MAX, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @POWER_LPRX_RSSI_THRESHOLD_MIN, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119, %115
  %124 = load i64, i64* @EINVAL, align 8
  %125 = sub i64 0, %124
  store i64 %125, i64* %5, align 8
  br label %204

126:                                              ; preds = %119
  %127 = load i32, i32* @MVM_DEBUGFS_PM_LPRX_RSSI_THRESHOLD, align 4
  store i32 %127, i32* %12, align 4
  br label %176

128:                                              ; preds = %103
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @strncmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %129, i32 14)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 14
  %135 = call i32 @sscanf(i8* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i64, i64* @EINVAL, align 8
  %139 = sub i64 0, %138
  store i64 %139, i64* %5, align 8
  br label %204

140:                                              ; preds = %132
  %141 = load i32, i32* @MVM_DEBUGFS_PM_SNOOZE_ENABLE, align 4
  store i32 %141, i32* %12, align 4
  br label %175

142:                                              ; preds = %128
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 @strncmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %143, i32 18)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 18
  %149 = call i32 @sscanf(i8* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %150 = icmp ne i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i64, i64* @EINVAL, align 8
  %153 = sub i64 0, %152
  store i64 %153, i64* %5, align 8
  br label %204

154:                                              ; preds = %146
  %155 = load i32, i32* @MVM_DEBUGFS_PM_UAPSD_MISBEHAVING, align 4
  store i32 %155, i32* %12, align 4
  br label %174

156:                                              ; preds = %142
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %157, i32 12)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %156
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 12
  %163 = call i32 @sscanf(i8* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %164 = icmp ne i32 %163, 1
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i64, i64* @EINVAL, align 8
  %167 = sub i64 0, %166
  store i64 %167, i64* %5, align 8
  br label %204

168:                                              ; preds = %160
  %169 = load i32, i32* @MVM_DEBUGFS_PM_USE_PS_POLL, align 4
  store i32 %169, i32* %12, align 4
  br label %173

170:                                              ; preds = %156
  %171 = load i64, i64* @EINVAL, align 8
  %172 = sub i64 0, %171
  store i64 %172, i64* %5, align 8
  br label %204

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %173, %154
  br label %175

175:                                              ; preds = %174, %140
  br label %176

176:                                              ; preds = %175, %126
  br label %177

177:                                              ; preds = %176, %101
  br label %178

178:                                              ; preds = %177, %87
  br label %179

179:                                              ; preds = %178, %73
  br label %180

180:                                              ; preds = %179, %59
  br label %181

181:                                              ; preds = %180, %45
  br label %182

182:                                              ; preds = %181, %31
  %183 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %184 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %183, i32 0, i32 0
  %185 = call i32 @mutex_lock(i32* %184)
  %186 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %187 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @iwl_dbgfs_update_pm(%struct.iwl_mvm* %186, %struct.ieee80211_vif* %187, i32 %188, i32 %189)
  %191 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %192 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %191)
  store i32 %192, i32* %14, align 4
  %193 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %194 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %193, i32 0, i32 0
  %195 = call i32 @mutex_unlock(i32* %194)
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %182
  %199 = sext i32 %196 to i64
  br label %202

200:                                              ; preds = %182
  %201 = load i64, i64* %8, align 8
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i64 [ %199, %198 ], [ %201, %200 ]
  store i64 %203, i64* %5, align 8
  br label %204

204:                                              ; preds = %202, %170, %165, %151, %137, %123, %112, %98, %84, %70, %56, %42, %28
  %205 = load i64, i64* %5, align 8
  ret i64 %205
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_dbgfs_update_pm(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
