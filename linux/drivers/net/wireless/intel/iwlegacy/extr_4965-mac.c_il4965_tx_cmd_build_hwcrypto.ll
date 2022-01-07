; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_tx_cmd_build_hwcrypto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_tx_cmd_build_hwcrypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32 }
%struct.il_tx_cmd = type { i32, i32*, i32 }
%struct.sk_buff = type { i32 }

@TX_CMD_SEC_CCM = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@TX_CMD_FLG_AGG_CCMP_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"tx_cmd with AES hwcrypto\0A\00", align 1
@TX_CMD_SEC_TKIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"tx_cmd with tkip hwcrypto\0A\00", align 1
@TX_CMD_SEC_KEY128 = common dso_local global i32 0, align 4
@TX_CMD_SEC_WEP = common dso_local global i32 0, align 4
@TX_CMD_SEC_MSK = common dso_local global i32 0, align 4
@TX_CMD_SEC_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Configuring packet for WEP encryption with key %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unknown encode cipher %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.ieee80211_tx_info*, %struct.il_tx_cmd*, %struct.sk_buff*, i32)* @il4965_tx_cmd_build_hwcrypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_tx_cmd_build_hwcrypto(%struct.il_priv* %0, %struct.ieee80211_tx_info* %1, %struct.il_tx_cmd* %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.il_tx_cmd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %7, align 8
  store %struct.il_tx_cmd* %2, %struct.il_tx_cmd** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %14, align 8
  store %struct.ieee80211_key_conf* %15, %struct.ieee80211_key_conf** %11, align 8
  %16 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %17 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %93 [
    i32 131, label %19
    i32 130, label %47
    i32 129, label %58
    i32 128, label %64
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* @TX_CMD_SEC_CCM, align 4
  %21 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %8, align 8
  %22 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %8, align 8
  %24 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %27 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32* %25, i32 %28, i32 %31)
  %33 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %19
  %40 = load i32, i32* @TX_CMD_FLG_AGG_CCMP_MSK, align 4
  %41 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %8, align 8
  %42 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %19
  %46 = call i32 (i8*, ...) @D_TX(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %98

47:                                               ; preds = %5
  %48 = load i32, i32* @TX_CMD_SEC_TKIP, align 4
  %49 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %8, align 8
  %50 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %8, align 8
  %54 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @ieee80211_get_tkip_p2k(%struct.ieee80211_key_conf* %51, %struct.sk_buff* %52, i32* %55)
  %57 = call i32 (i8*, ...) @D_TX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %98

58:                                               ; preds = %5
  %59 = load i32, i32* @TX_CMD_SEC_KEY128, align 4
  %60 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %8, align 8
  %61 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %5, %58
  %65 = load i32, i32* @TX_CMD_SEC_WEP, align 4
  %66 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %67 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TX_CMD_SEC_MSK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @TX_CMD_SEC_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %65, %72
  %74 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %8, align 8
  %75 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %8, align 8
  %79 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %83 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %86 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i32* %81, i32 %84, i32 %87)
  %89 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %90 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @D_TX(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %98

93:                                               ; preds = %5
  %94 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %95 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @IL_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %64, %47, %45
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @D_TX(i8*, ...) #1

declare dso_local i32 @ieee80211_get_tkip_p2k(%struct.ieee80211_key_conf*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
