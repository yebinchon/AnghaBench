; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_csa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32, %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_csa_notification = type { i64, i32 }
%struct.iwl_rxon_cmd = type { i64 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@STATUS_CHANNEL_SWITCH_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CSA notif: channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"CSA notif (fail) : channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*)* @iwlagn_rx_csa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_rx_csa(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_csa_notification*, align 8
  %7 = alloca %struct.iwl_rxon_context*, align 8
  %8 = alloca %struct.iwl_rxon_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %9 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %10 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %9)
  store %struct.iwl_rx_packet* %10, %struct.iwl_rx_packet** %5, align 8
  %11 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.iwl_csa_notification*
  store %struct.iwl_csa_notification* %15, %struct.iwl_csa_notification** %6, align 8
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 2
  %18 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %17, align 8
  %19 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %20 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %18, i64 %19
  store %struct.iwl_rxon_context* %20, %struct.iwl_rxon_context** %7, align 8
  %21 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %22 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %21, i32 0, i32 1
  %23 = bitcast i32* %22 to i8*
  %24 = bitcast i8* %23 to %struct.iwl_rxon_cmd*
  store %struct.iwl_rxon_cmd* %24, %struct.iwl_rxon_cmd** %8, align 8
  %25 = load i32, i32* @STATUS_CHANNEL_SWITCH_PENDING, align 4
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 1
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %74

31:                                               ; preds = %2
  %32 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %31
  %38 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %6, align 8
  %39 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %37
  %46 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %6, align 8
  %47 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %8, align 8
  %50 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %6, align 8
  %52 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %55 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %58 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %6, align 8
  %59 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @le16_to_cpu(i64 %60)
  %62 = call i32 @IWL_DEBUG_11H(%struct.iwl_priv* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %64 = call i32 @iwl_chswitch_done(%struct.iwl_priv* %63, i32 1)
  br label %74

65:                                               ; preds = %37, %31
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %67 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %6, align 8
  %68 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @le16_to_cpu(i64 %69)
  %71 = call i32 @IWL_ERR(%struct.iwl_priv* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %73 = call i32 @iwl_chswitch_done(%struct.iwl_priv* %72, i32 0)
  br label %74

74:                                               ; preds = %30, %65, %45
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_11H(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @iwl_chswitch_done(%struct.iwl_priv*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
