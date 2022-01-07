; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_noa_notification.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_noa_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_wipan_noa_data = type { i32, i32* }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_wipan_noa_notification = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WLAN_OUI_WFA = common dso_local global i32 0, align 4
@WLAN_OUI_TYPE_WFA_P2P = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*)* @iwlagn_rx_noa_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_rx_noa_notification(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_wipan_noa_data*, align 8
  %6 = alloca %struct.iwl_wipan_noa_data*, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.iwl_wipan_noa_notification*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %11 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %12 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %11)
  store %struct.iwl_rx_packet* %12, %struct.iwl_rx_packet** %7, align 8
  %13 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.iwl_wipan_noa_notification*
  store %struct.iwl_wipan_noa_notification* %17, %struct.iwl_wipan_noa_notification** %8, align 8
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.iwl_wipan_noa_data* @rcu_dereference_protected(i32 %20, i32 1)
  store %struct.iwl_wipan_noa_data* %21, %struct.iwl_wipan_noa_data** %6, align 8
  %22 = load %struct.iwl_wipan_noa_notification*, %struct.iwl_wipan_noa_notification** %8, align 8
  %23 = getelementptr inbounds %struct.iwl_wipan_noa_notification, %struct.iwl_wipan_noa_notification* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %97

26:                                               ; preds = %2
  %27 = load %struct.iwl_wipan_noa_notification*, %struct.iwl_wipan_noa_notification** %8, align 8
  %28 = getelementptr inbounds %struct.iwl_wipan_noa_notification, %struct.iwl_wipan_noa_notification* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @le16_to_cpu(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 6
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 3
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 3
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 16, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.iwl_wipan_noa_data* @kmalloc(i32 %42, i32 %43)
  store %struct.iwl_wipan_noa_data* %44, %struct.iwl_wipan_noa_data** %5, align 8
  %45 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %5, align 8
  %46 = icmp ne %struct.iwl_wipan_noa_data* %45, null
  br i1 %46, label %47, label %96

47:                                               ; preds = %26
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %5, align 8
  %50 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %52 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 2
  %58 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %5, align 8
  %59 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* @WLAN_OUI_WFA, align 4
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %5, align 8
  %66 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @WLAN_OUI_WFA, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %5, align 8
  %73 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @WLAN_OUI_WFA, align 4
  %77 = ashr i32 %76, 0
  %78 = and i32 %77, 255
  %79 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %5, align 8
  %80 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @WLAN_OUI_TYPE_WFA_P2P, align 4
  %84 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %5, align 8
  %85 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  store i32 %83, i32* %87, align 4
  %88 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %5, align 8
  %89 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 6
  %92 = load %struct.iwl_wipan_noa_notification*, %struct.iwl_wipan_noa_notification** %8, align 8
  %93 = getelementptr inbounds %struct.iwl_wipan_noa_notification, %struct.iwl_wipan_noa_notification* %92, i32 0, i32 0
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @memcpy(i32* %91, %struct.TYPE_2__* %93, i32 %94)
  br label %96

96:                                               ; preds = %47, %26
  br label %98

97:                                               ; preds = %2
  store %struct.iwl_wipan_noa_data* null, %struct.iwl_wipan_noa_data** %5, align 8
  br label %98

98:                                               ; preds = %97, %96
  %99 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %100 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %5, align 8
  %103 = call i32 @rcu_assign_pointer(i32 %101, %struct.iwl_wipan_noa_data* %102)
  %104 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %6, align 8
  %105 = icmp ne %struct.iwl_wipan_noa_data* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %6, align 8
  %108 = load i32, i32* @rcu_head, align 4
  %109 = call i32 @kfree_rcu(%struct.iwl_wipan_noa_data* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %98
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local %struct.iwl_wipan_noa_data* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.iwl_wipan_noa_data* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.iwl_wipan_noa_data*) #1

declare dso_local i32 @kfree_rcu(%struct.iwl_wipan_noa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
