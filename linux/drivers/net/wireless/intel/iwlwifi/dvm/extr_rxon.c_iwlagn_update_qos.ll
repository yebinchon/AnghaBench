; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwlagn_update_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwlagn_update_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@QOS_PARAM_FLG_UPDATE_EDCA_MSK = common dso_local global i32 0, align 4
@QOS_PARAM_FLG_TGN_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"send QoS cmd with Qos active=%d FLAGS=0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to update QoS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rxon_context*)* @iwlagn_update_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_update_qos(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rxon_context*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %4, align 8
  %6 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %68

11:                                               ; preds = %2
  %12 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = load i32, i32* @QOS_PARAM_FLG_UPDATE_EDCA_MSK, align 4
  %23 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %21, %11
  %30 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* @QOS_PARAM_FLG_TGN_MSK, align 4
  %37 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %38 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %35, %29
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %45 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %48, i32 %53)
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %56 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %57 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %60 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %55, i32 %58, i32 0, i32 4, %struct.TYPE_6__* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %43
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %67 = call i32 @IWL_DEBUG_QUIET_RFKILL(%struct.iwl_priv* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %10, %65, %43
  ret void
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i64, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @IWL_DEBUG_QUIET_RFKILL(%struct.iwl_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
