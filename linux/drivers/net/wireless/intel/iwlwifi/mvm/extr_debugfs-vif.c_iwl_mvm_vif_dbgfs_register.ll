; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_mvm_vif_dbgfs_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_mvm_vif_dbgfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.iwl_mvm = type { i32, %struct.iwl_mvm_vif* }
%struct.iwl_mvm_vif = type { i32, i32 }
%struct.ieee80211_vif = type { i64, i64, %struct.dentry* }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"iwlmvm\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to create debugfs directory under %pd\0A\00", align 1
@iwlmvm_mod_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IWL_POWER_SCHEME_CAM = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@pm_params = common dso_local global i32 0, align 4
@tx_pwr_lmt = common dso_local global i32 0, align 4
@mac_params = common dso_local global i32 0, align 4
@low_latency = common dso_local global i32 0, align 4
@low_latency_force = common dso_local global i32 0, align 4
@uapsd_misbehaving = common dso_local global i32 0, align 4
@rx_phyinfo = common dso_local global i32 0, align 4
@quota_min = common dso_local global i32 0, align 4
@os_device_timediff = common dso_local global i32 0, align 4
@bf_params = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"../../../%pd3/%pd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_vif_dbgfs_register(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca [100 x i8], align 16
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %8, i32 0, i32 2
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %5, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = icmp ne %struct.dentry* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  br label %148

21:                                               ; preds = %15
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.dentry* %22)
  %24 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR_OR_NULL(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = call i32 @IWL_ERR(%struct.iwl_mvm* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %33)
  br label %148

35:                                               ; preds = %21
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iwlmvm_mod_params, i32 0, i32 0), align 8
  %37 = load i64, i64* @IWL_POWER_SCHEME_CAM, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45, %39
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56, %45
  %62 = load i32, i32* @pm_params, align 4
  %63 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %64 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32 %62, i32 %65, i32 384)
  br label %67

67:                                               ; preds = %61, %56, %50, %35
  %68 = load i32, i32* @tx_pwr_lmt, align 4
  %69 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32 %68, i32 %71, i32 256)
  %73 = load i32, i32* @mac_params, align 4
  %74 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32 %73, i32 %76, i32 256)
  %78 = load i32, i32* @low_latency, align 4
  %79 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %80 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32 %78, i32 %81, i32 384)
  %83 = load i32, i32* @low_latency_force, align 4
  %84 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32 %83, i32 %86, i32 384)
  %88 = load i32, i32* @uapsd_misbehaving, align 4
  %89 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %90 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32 %88, i32 %91, i32 384)
  %93 = load i32, i32* @rx_phyinfo, align 4
  %94 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %95 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32 %93, i32 %96, i32 384)
  %98 = load i32, i32* @quota_min, align 4
  %99 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %100 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32 %98, i32 %101, i32 384)
  %103 = load i32, i32* @os_device_timediff, align 4
  %104 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32 %103, i32 %106, i32 256)
  %108 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %109 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %67
  %114 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %115 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %113
  %119 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %120 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %121 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %120, i32 0, i32 1
  %122 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %121, align 8
  %123 = icmp eq %struct.iwl_mvm_vif* %119, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i32, i32* @bf_params, align 4
  %126 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32 %125, i32 %128, i32 384)
  br label %130

130:                                              ; preds = %124, %118, %113, %67
  %131 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %132 = load %struct.dentry*, %struct.dentry** %5, align 8
  %133 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %134 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @snprintf(i8* %131, i32 100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %132, i32 %135)
  %137 = load %struct.dentry*, %struct.dentry** %5, align 8
  %138 = getelementptr inbounds %struct.dentry, %struct.dentry* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %142 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %145 = call i32 @debugfs_create_symlink(i32 %140, i32 %143, i8* %144)
  %146 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %147 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %130, %31, %20
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, %struct.dentry*) #1

declare dso_local i32 @MVM_DEBUGFS_ADD_FILE_VIF(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, %struct.dentry*, i32) #1

declare dso_local i32 @debugfs_create_symlink(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
