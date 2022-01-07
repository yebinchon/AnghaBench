; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_build_tx_cmd_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_build_tx_cmd_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.il_priv = type { i32 }
%struct.il_device_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.il3945_tx_cmd = type { i32, i32, i32*, i32, i8* }
%struct.TYPE_6__ = type { i32 }

@RATE_COUNT_3945 = common dso_local global i32 0, align 4
@il3945_rates = common dso_local global %struct.TYPE_5__* null, align 8
@RATES_MASK_3945 = common dso_local global i32 0, align 4
@IL_DEFAULT_TX_RETRY = common dso_local global i32 0, align 4
@IL_OFDM_RATES_MASK = common dso_local global i32 0, align 4
@IL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Tx sta id: %d, rate: %d (plcp), flags: 0x%4X cck/ofdm mask: 0x%x/0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il3945_hw_build_tx_cmd_rate(%struct.il_priv* %0, %struct.il_device_cmd* %1, %struct.ieee80211_tx_info* %2, %struct.ieee80211_hdr* %3, i32 %4) #0 {
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca %struct.il_device_cmd*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.il3945_tx_cmd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store %struct.il_device_cmd* %1, %struct.il_device_cmd** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.ieee80211_hdr* %3, %struct.ieee80211_hdr** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %21 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %24 = call %struct.TYPE_6__* @ieee80211_get_tx_rate(i32 %22, %struct.ieee80211_tx_info* %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, 65535
  %29 = load i32, i32* @RATE_COUNT_3945, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i8* @min(i32 %28, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %12, align 4
  store i32 7, i32* %15, align 4
  %33 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %34 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %18, align 4
  %36 = load %struct.il_device_cmd*, %struct.il_device_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.il3945_tx_cmd*
  store %struct.il3945_tx_cmd* %40, %struct.il3945_tx_cmd** %19, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @il3945_rates, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %19, align 8
  %48 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* @RATES_MASK_3945, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %18, align 4
  %52 = call i64 @ieee80211_is_probe_resp(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %5
  store i32 3, i32* %16, align 4
  br label %57

55:                                               ; preds = %5
  %56 = load i32, i32* @IL_DEFAULT_TX_RETRY, align 4
  store i32 %56, i32* %16, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %19, align 8
  %60 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i8* @min(i32 %61, i32 7)
  %63 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %19, align 8
  %64 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %19, align 8
  %67 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %19, align 8
  %70 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @IL_OFDM_RATES_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %75 = ashr i32 %73, %74
  %76 = and i32 %75, 255
  %77 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %19, align 8
  %78 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = and i32 %81, 15
  %83 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %19, align 8
  %84 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %19, align 8
  %89 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %19, align 8
  %92 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @le32_to_cpu(i32 %93)
  %95 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %19, align 8
  %96 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.il3945_tx_cmd*, %struct.il3945_tx_cmd** %19, align 8
  %101 = getelementptr inbounds %struct.il3945_tx_cmd, %struct.il3945_tx_cmd* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @D_RATE(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %90, i32 %94, i32 %99, i32 %104)
  ret void
}

declare dso_local %struct.TYPE_6__* @ieee80211_get_tx_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @D_RATE(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
