; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_is_ptk_eapol_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_is_ptk_eapol_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil_eapol_key = type { i64, i32 }
%struct.wil6210_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wil_1x_hdr = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"mac header was not set\0A\00", align 1
@WIL_1X_TYPE_EAPOL_KEY = common dso_local global i64 0, align 8
@WIL_EAPOL_KEY_TYPE_WPA = common dso_local global i64 0, align 8
@WIL_EAPOL_KEY_TYPE_RSN = common dso_local global i64 0, align 8
@WIL_KEY_INFO_KEY_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wil_eapol_key* (%struct.wil6210_priv*, %struct.sk_buff*)* @wil_is_ptk_eapol_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wil_eapol_key* @wil_is_ptk_eapol_key(%struct.wil6210_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.wil_eapol_key*, align 8
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wil_1x_hdr*, align 8
  %8 = alloca %struct.wil_eapol_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @skb_mac_header_was_set(%struct.sk_buff* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %19 = call i32 @wil_err(%struct.wil6210_priv* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.wil_eapol_key* null, %struct.wil_eapol_key** %3, align 8
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i64 @skb_mac_offset(%struct.sk_buff* %21)
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store %struct.wil_eapol_key* null, %struct.wil_eapol_key** %3, align 8
  br label %71

31:                                               ; preds = %20
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32* @skb_mac_header(%struct.sk_buff* %32)
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = bitcast i32* %35 to %struct.wil_1x_hdr*
  store %struct.wil_1x_hdr* %36, %struct.wil_1x_hdr** %7, align 8
  %37 = load %struct.wil_1x_hdr*, %struct.wil_1x_hdr** %7, align 8
  %38 = getelementptr inbounds %struct.wil_1x_hdr, %struct.wil_1x_hdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WIL_1X_TYPE_EAPOL_KEY, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store %struct.wil_eapol_key* null, %struct.wil_eapol_key** %3, align 8
  br label %71

43:                                               ; preds = %31
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  %46 = bitcast i32* %45 to %struct.wil_eapol_key*
  store %struct.wil_eapol_key* %46, %struct.wil_eapol_key** %8, align 8
  %47 = load %struct.wil_eapol_key*, %struct.wil_eapol_key** %8, align 8
  %48 = getelementptr inbounds %struct.wil_eapol_key, %struct.wil_eapol_key* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WIL_EAPOL_KEY_TYPE_WPA, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load %struct.wil_eapol_key*, %struct.wil_eapol_key** %8, align 8
  %54 = getelementptr inbounds %struct.wil_eapol_key, %struct.wil_eapol_key* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @WIL_EAPOL_KEY_TYPE_RSN, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store %struct.wil_eapol_key* null, %struct.wil_eapol_key** %3, align 8
  br label %71

59:                                               ; preds = %52, %43
  %60 = load %struct.wil_eapol_key*, %struct.wil_eapol_key** %8, align 8
  %61 = getelementptr inbounds %struct.wil_eapol_key, %struct.wil_eapol_key* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @be16_to_cpu(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @WIL_KEY_INFO_KEY_TYPE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  store %struct.wil_eapol_key* null, %struct.wil_eapol_key** %3, align 8
  br label %71

69:                                               ; preds = %59
  %70 = load %struct.wil_eapol_key*, %struct.wil_eapol_key** %8, align 8
  store %struct.wil_eapol_key* %70, %struct.wil_eapol_key** %3, align 8
  br label %71

71:                                               ; preds = %69, %68, %58, %42, %30, %17
  %72 = load %struct.wil_eapol_key*, %struct.wil_eapol_key** %3, align 8
  ret %struct.wil_eapol_key* %72
}

declare dso_local i32 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i64 @skb_mac_offset(%struct.sk_buff*) #1

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
