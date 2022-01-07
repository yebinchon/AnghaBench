; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_pmk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_pmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_wsec_pmk_le = type { i32*, i8*, i8* }

@BRCMF_WSEC_PASSPHRASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@BRCMF_C_SET_WSEC_PMK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to change PSK in firmware (len=%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, i32*, i32)* @brcmf_set_pmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_set_pmk(%struct.brcmf_if* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca %struct.brcmf_wsec_pmk_le, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %12 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %11, i32 0, i32 0
  %13 = load %struct.brcmf_pub*, %struct.brcmf_pub** %12, align 8
  store %struct.brcmf_pub* %13, %struct.brcmf_pub** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 1
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = getelementptr inbounds %struct.brcmf_wsec_pmk_le, %struct.brcmf_wsec_pmk_le* %8, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* @BRCMF_WSEC_PASSPHRASE, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = getelementptr inbounds %struct.brcmf_wsec_pmk_le, %struct.brcmf_wsec_pmk_le* %8, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %38, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.brcmf_wsec_pmk_le, %struct.brcmf_wsec_pmk_le* %8, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snprintf(i32* %31, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %43 = load i32, i32* @BRCMF_C_SET_WSEC_PMK, align 4
  %44 = call i32 @brcmf_fil_cmd_data_set(%struct.brcmf_if* %42, i32 %43, %struct.brcmf_wsec_pmk_le* %8, i32 24)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @bphy_err(%struct.brcmf_pub* %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @brcmf_fil_cmd_data_set(%struct.brcmf_if*, i32, %struct.brcmf_wsec_pmk_le*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
