; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwlagn_rxon_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwlagn_rxon_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i64 }
%struct.iwl_rxon_context = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_rxon_cmd = type { i32 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed to send timing (%d)!\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Error sending required beacon (%d)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Error setting new RXON (%d)\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Error sending IBSS beacon\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Error sending TX power (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*)* @iwlagn_rxon_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_rxon_connect(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_rxon_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  %8 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %8, i32 0, i32 4
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.iwl_rxon_cmd*
  store %struct.iwl_rxon_cmd* %11, %struct.iwl_rxon_cmd** %7, align 8
  %12 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %19 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %20 = call i32 @iwl_send_rxon_timing(%struct.iwl_priv* %18, %struct.iwl_rxon_context* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %120

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %31 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %32 = call i32 @iwlagn_update_qos(%struct.iwl_priv* %30, %struct.iwl_rxon_context* %31)
  %33 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %47 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 @iwlagn_update_beacon(%struct.iwl_priv* %46, %struct.TYPE_2__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %120

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %37, %29
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %63 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %64 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %67 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %66, i32 0, i32 2
  %68 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %62, i32 %65, i32 0, i32 4, i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %120

76:                                               ; preds = %59
  %77 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %78 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %79 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %78, i32 0, i32 2
  %80 = call i32 @memcpy(%struct.iwl_rxon_cmd* %77, i32* %79, i32 4)
  %81 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %82 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = icmp ne %struct.TYPE_2__* %83, null
  br i1 %84, label %85, label %104

85:                                               ; preds = %76
  %86 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %87 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %85
  %94 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %95 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %96 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = call i32 @iwlagn_update_beacon(%struct.iwl_priv* %94, %struct.TYPE_2__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %102 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %93
  br label %104

104:                                              ; preds = %103, %85, %76
  %105 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %106 = call i32 @iwl_init_sensitivity(%struct.iwl_priv* %105)
  %107 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %109 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @iwl_set_tx_power(%struct.iwl_priv* %107, i32 %110, i32 1)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %120

119:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %114, %71, %53, %23
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @iwl_send_rxon_timing(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @iwlagn_update_qos(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwlagn_update_beacon(%struct.iwl_priv*, %struct.TYPE_2__*) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(%struct.iwl_rxon_cmd*, i32*, i32) #1

declare dso_local i32 @iwl_init_sensitivity(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_set_tx_power(%struct.iwl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
