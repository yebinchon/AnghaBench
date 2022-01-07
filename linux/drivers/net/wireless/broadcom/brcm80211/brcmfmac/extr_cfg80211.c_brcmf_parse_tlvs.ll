; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_parse_tlvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_parse_tlvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_tlv = type { i32, i64 }

@TLV_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcmf_tlv* (i8*, i32, i64)* @brcmf_parse_tlvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcmf_tlv* @brcmf_parse_tlvs(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.brcmf_tlv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.brcmf_tlv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.brcmf_tlv*
  store %struct.brcmf_tlv* %12, %struct.brcmf_tlv** %8, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %35, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @TLV_HDR_LEN, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = load %struct.brcmf_tlv*, %struct.brcmf_tlv** %8, align 8
  %20 = getelementptr inbounds %struct.brcmf_tlv, %struct.brcmf_tlv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.brcmf_tlv*, %struct.brcmf_tlv** %8, align 8
  %23 = getelementptr inbounds %struct.brcmf_tlv, %struct.brcmf_tlv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @TLV_HDR_LEN, align 4
  %31 = add nsw i32 %29, %30
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load %struct.brcmf_tlv*, %struct.brcmf_tlv** %8, align 8
  store %struct.brcmf_tlv* %34, %struct.brcmf_tlv** %4, align 8
  br label %50

35:                                               ; preds = %27, %18
  %36 = load %struct.brcmf_tlv*, %struct.brcmf_tlv** %8, align 8
  %37 = bitcast %struct.brcmf_tlv* %36 to i32*
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @TLV_HDR_LEN, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = bitcast i32* %42 to %struct.brcmf_tlv*
  store %struct.brcmf_tlv* %43, %struct.brcmf_tlv** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @TLV_HDR_LEN, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %14

49:                                               ; preds = %14
  store %struct.brcmf_tlv* null, %struct.brcmf_tlv** %4, align 8
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.brcmf_tlv*, %struct.brcmf_tlv** %4, align 8
  ret %struct.brcmf_tlv* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
