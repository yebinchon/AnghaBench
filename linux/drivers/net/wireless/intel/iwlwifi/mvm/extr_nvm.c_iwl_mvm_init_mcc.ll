; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_mvm_init_mcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_mvm_init_mcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_regdomain = type { i32 }

@IWL_NVM_EXT = common dso_local global i64 0, align 8
@IWL_UCODE_TLV_CAPA_LAR_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Conflict between TLV & NVM regarding enabling LAR (TLV = %s NVM =%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MCC_SOURCE_BIOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_init_mcc(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_regdomain*, align 8
  %8 = alloca [3 x i8], align 1
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 5
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IWL_NVM_EXT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %1
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* @IWL_UCODE_TLV_CAPA_LAR_SUPPORT, align 4
  %22 = call i32 @fw_has_capa(i32* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %16
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 @IWL_INFO(%struct.iwl_mvm* %32, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %40)
  br label %42

42:                                               ; preds = %31, %16
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %45 = call i32 @iwl_mvm_is_lar_supported(%struct.iwl_mvm* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %108

48:                                               ; preds = %43
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %50 = call i32 @iwl_mvm_init_fw_regd(%struct.iwl_mvm* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %108

57:                                               ; preds = %48
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %61 = call %struct.ieee80211_regdomain* @iwl_mvm_get_current_regdomain(%struct.iwl_mvm* %60, i32* null)
  store %struct.ieee80211_regdomain* %61, %struct.ieee80211_regdomain** %7, align 8
  %62 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  %63 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_regdomain* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %108

68:                                               ; preds = %57
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %70 = call i64 @iwl_mvm_is_wifi_mcc_supported(%struct.iwl_mvm* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %77 = call i32 @iwl_acpi_get_mcc(i32 %75, i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %72
  %80 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  %81 = call i32 @kfree(%struct.ieee80211_regdomain* %80)
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %88 = load i32, i32* @MCC_SOURCE_BIOS, align 4
  %89 = call %struct.ieee80211_regdomain* @iwl_mvm_get_regdomain(i32 %86, i8* %87, i32 %88, i32* null)
  store %struct.ieee80211_regdomain* %89, %struct.ieee80211_regdomain** %7, align 8
  %90 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  %91 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_regdomain* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %108

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96, %72, %68
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %98, i32 0, i32 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  %104 = call i32 @regulatory_set_wiphy_regd_sync_rtnl(i32 %102, %struct.ieee80211_regdomain* %103)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  %106 = call i32 @kfree(%struct.ieee80211_regdomain* %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %97, %93, %65, %55, %47
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @IWL_INFO(%struct.iwl_mvm*, i8*, i8*, i8*) #1

declare dso_local i32 @iwl_mvm_is_lar_supported(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_init_fw_regd(%struct.iwl_mvm*) #1

declare dso_local %struct.ieee80211_regdomain* @iwl_mvm_get_current_regdomain(%struct.iwl_mvm*, i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_regdomain*) #1

declare dso_local i64 @iwl_mvm_is_wifi_mcc_supported(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_acpi_get_mcc(i32, i8*) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

declare dso_local %struct.ieee80211_regdomain* @iwl_mvm_get_regdomain(i32, i8*, i32, i32*) #1

declare dso_local i32 @regulatory_set_wiphy_regd_sync_rtnl(i32, %struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
