; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_tlv_has_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_tlv_has_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLV_LEN_OFF = common dso_local global i64 0, align 8
@TLV_BODY_OFF = common dso_local global i64 0, align 8
@TLV_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32*, i32*, i32, i32)* @brcmf_tlv_has_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_tlv_has_ie(i32* %0, i32** %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i64, i64* @TLV_LEN_OFF, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %12, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %6
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* @TLV_BODY_OFF, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @memcmp(i32* %24, i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %13, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* @TLV_BODY_OFF, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %32, %34
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %30, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %67

40:                                               ; preds = %29, %21, %6
  %41 = load i32**, i32*** %9, align 8
  %42 = icmp eq i32** %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %67

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* @TLV_LEN_OFF, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TLV_HDR_LEN, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32*, i32** %8, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32**, i32*** %9, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = ptrtoint i32* %54 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32**, i32*** %9, align 8
  store i32* %65, i32** %66, align 8
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %44, %43, %39
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
