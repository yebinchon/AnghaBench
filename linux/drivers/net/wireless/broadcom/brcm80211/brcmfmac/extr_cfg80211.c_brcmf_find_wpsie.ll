; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_find_wpsie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_find_wpsie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_vs_tlv = type { i32 }
%struct.brcmf_tlv = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WPA_OUI = common dso_local global i32 0, align 4
@TLV_OUI_LEN = common dso_local global i32 0, align 4
@WPS_OUI_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcmf_vs_tlv* (i32*, i32)* @brcmf_find_wpsie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcmf_vs_tlv* @brcmf_find_wpsie(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_vs_tlv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_tlv*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %11 = call %struct.brcmf_tlv* @brcmf_parse_tlvs(i32* %8, i32 %9, i32 %10)
  store %struct.brcmf_tlv* %11, %struct.brcmf_tlv** %6, align 8
  %12 = icmp ne %struct.brcmf_tlv* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.brcmf_tlv*, %struct.brcmf_tlv** %6, align 8
  %15 = bitcast %struct.brcmf_tlv* %14 to i32*
  %16 = load i32, i32* @WPA_OUI, align 4
  %17 = load i32, i32* @TLV_OUI_LEN, align 4
  %18 = load i32, i32* @WPS_OUI_TYPE, align 4
  %19 = call i64 @brcmf_tlv_has_ie(i32* %15, i32** %4, i32* %5, i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.brcmf_tlv*, %struct.brcmf_tlv** %6, align 8
  %23 = bitcast %struct.brcmf_tlv* %22 to %struct.brcmf_vs_tlv*
  store %struct.brcmf_vs_tlv* %23, %struct.brcmf_vs_tlv** %3, align 8
  br label %26

24:                                               ; preds = %13
  br label %7

25:                                               ; preds = %7
  store %struct.brcmf_vs_tlv* null, %struct.brcmf_vs_tlv** %3, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = load %struct.brcmf_vs_tlv*, %struct.brcmf_vs_tlv** %3, align 8
  ret %struct.brcmf_vs_tlv* %27
}

declare dso_local %struct.brcmf_tlv* @brcmf_parse_tlvs(i32*, i32, i32) #1

declare dso_local i64 @brcmf_tlv_has_ie(i32*, i32**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
