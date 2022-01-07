; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwlagn_fill_txpower_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwlagn_fill_txpower_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_bt_uart_msg = type { i32 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"BSS ctx not active or not in sta mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"no rssi data available\0A\00", align 1
@IWL_RXON_CTX_PAN = common dso_local global i32 0, align 4
@BT_ENABLE_REDUCED_TXPOWER_THRESHOLD = common dso_local global i32 0, align 4
@BT_UART_MSG_FRAME3ACL_MSK = common dso_local global i32 0, align 4
@BT_UART_MSG_FRAME3OBEX_MSK = common dso_local global i32 0, align 4
@BT_UART_MSG_FRAME3SCOESCO_MSK = common dso_local global i32 0, align 4
@BT_UART_MSG_FRAME3SNIFF_MSK = common dso_local global i32 0, align 4
@BT_UART_MSG_FRAME3A2DP_MSK = common dso_local global i32 0, align 4
@IWLAGN_BT_VALID_REDUCED_TX_PWR = common dso_local global i32 0, align 4
@BT_DISABLE_REDUCED_TXPOWER_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_bt_uart_msg*)* @iwlagn_fill_txpower_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_fill_txpower_mode(%struct.iwl_priv* %0, %struct.iwl_bt_uart_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_bt_uart_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_rxon_context*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_bt_uart_msg* %1, %struct.iwl_bt_uart_msg** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 2
  %11 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %12 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %13 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %11, i64 %12
  store %struct.iwl_rxon_context* %13, %struct.iwl_rxon_context** %7, align 8
  %14 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18, %2
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %28 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %127

29:                                               ; preds = %18
  %30 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @ieee80211_ave_rssi(%struct.TYPE_2__* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %38 = call i32 @IWL_DEBUG_COEX(%struct.iwl_priv* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %127

40:                                               ; preds = %29
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %82, label %45

45:                                               ; preds = %40
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %47 = load i32, i32* @IWL_RXON_CTX_PAN, align 4
  %48 = call i64 @iwl_is_associated(%struct.iwl_priv* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %82, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @BT_ENABLE_REDUCED_TXPOWER_THRESHOLD, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %50
  %55 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %5, align 8
  %56 = getelementptr inbounds %struct.iwl_bt_uart_msg, %struct.iwl_bt_uart_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BT_UART_MSG_FRAME3ACL_MSK, align 4
  %59 = load i32, i32* @BT_UART_MSG_FRAME3OBEX_MSK, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %54
  %64 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %5, align 8
  %65 = getelementptr inbounds %struct.iwl_bt_uart_msg, %struct.iwl_bt_uart_msg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BT_UART_MSG_FRAME3SCOESCO_MSK, align 4
  %68 = load i32, i32* @BT_UART_MSG_FRAME3SNIFF_MSK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @BT_UART_MSG_FRAME3A2DP_MSK, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %66, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %63
  %75 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %76 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i32, i32* @IWLAGN_BT_VALID_REDUCED_TX_PWR, align 4
  %78 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %79 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  store i32 1, i32* %6, align 4
  br label %125

82:                                               ; preds = %63, %54, %50, %45, %40
  %83 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %84 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %82
  %88 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %89 = load i32, i32* @IWL_RXON_CTX_PAN, align 4
  %90 = call i64 @iwl_is_associated(%struct.iwl_priv* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @BT_DISABLE_REDUCED_TXPOWER_THRESHOLD, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %116, label %96

96:                                               ; preds = %92
  %97 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %5, align 8
  %98 = getelementptr inbounds %struct.iwl_bt_uart_msg, %struct.iwl_bt_uart_msg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BT_UART_MSG_FRAME3SCOESCO_MSK, align 4
  %101 = load i32, i32* @BT_UART_MSG_FRAME3SNIFF_MSK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @BT_UART_MSG_FRAME3A2DP_MSK, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %99, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %96
  %108 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %5, align 8
  %109 = getelementptr inbounds %struct.iwl_bt_uart_msg, %struct.iwl_bt_uart_msg* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @BT_UART_MSG_FRAME3ACL_MSK, align 4
  %112 = load i32, i32* @BT_UART_MSG_FRAME3OBEX_MSK, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %107, %96, %92, %87
  %117 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %118 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load i32, i32* @IWLAGN_BT_VALID_REDUCED_TX_PWR, align 4
  %120 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %121 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  store i32 1, i32* %6, align 4
  br label %124

124:                                              ; preds = %116, %107, %82
  br label %125

125:                                              ; preds = %124, %74
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %36, %26
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @ieee80211_ave_rssi(%struct.TYPE_2__*) #1

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_priv*, i8*) #1

declare dso_local i64 @iwl_is_associated(%struct.iwl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
