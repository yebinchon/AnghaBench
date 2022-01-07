; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_reg_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_reg_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i8*, i32 }
%struct.brcmf_cfg80211_info = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { i32 }
%struct.brcmf_fil_country_le = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"not an ISO3166 code (0x%02x 0x%02x)\0A\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Enter: initiator=%d, alpha=%c%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"country\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Country code iovar returned err = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Firmware rejected country setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.regulatory_request*)* @brcmf_cfg80211_reg_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_cfg80211_reg_notifier(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  %5 = alloca %struct.brcmf_cfg80211_info*, align 8
  %6 = alloca %struct.brcmf_if*, align 8
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca %struct.brcmf_fil_country_le, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %4, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %12 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %11)
  store %struct.brcmf_cfg80211_info* %12, %struct.brcmf_cfg80211_info** %5, align 8
  %13 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %13, i32 0, i32 0
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %14, align 8
  %16 = call %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub* %15, i32 0)
  store %struct.brcmf_if* %16, %struct.brcmf_if** %6, align 8
  %17 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %17, i32 0, i32 0
  %19 = load %struct.brcmf_pub*, %struct.brcmf_pub** %18, align 8
  store %struct.brcmf_pub* %19, %struct.brcmf_pub** %7, align 8
  %20 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %21 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 48
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %29 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 48
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %126

36:                                               ; preds = %27, %2
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %76, %36
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %42 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp slt i32 %48, 65
  br i1 %49, label %60, label %50

50:                                               ; preds = %40
  %51 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %52 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sgt i32 %58, 90
  br i1 %59, label %60, label %75

60:                                               ; preds = %50, %40
  %61 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %62 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %63 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %69 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %73)
  br label %126

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %37

79:                                               ; preds = %37
  %80 = load i32, i32* @TRACE, align 4
  %81 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %82 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %85 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %90 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @brcmf_dbg(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %83, i8 signext %88, i8 signext %93)
  %95 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %96 = call signext i8 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.brcmf_fil_country_le* %8, i32 4)
  store i8 %96, i8* %9, align 1
  %97 = load i8, i8* %9, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %79
  %100 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %101 = load i8, i8* %9, align 1
  %102 = sext i8 %101 to i32
  %103 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %126

104:                                              ; preds = %79
  %105 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %106 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %109 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call signext i8 @brcmf_translate_country_code(i32 %107, i8* %110, %struct.brcmf_fil_country_le* %8)
  store i8 %111, i8* %9, align 1
  %112 = load i8, i8* %9, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %126

115:                                              ; preds = %104
  %116 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %117 = call signext i8 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.brcmf_fil_country_le* %8, i32 4)
  store i8 %117, i8* %9, align 1
  %118 = load i8, i8* %9, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %122 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %126

123:                                              ; preds = %115
  %124 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %125 = call i32 @brcmf_setup_wiphybands(%struct.brcmf_cfg80211_info* %124)
  br label %126

126:                                              ; preds = %123, %120, %114, %99, %60, %35
  ret void
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i8 signext, i8 signext) #1

declare dso_local signext i8 @brcmf_fil_iovar_data_get(%struct.brcmf_if*, i8*, %struct.brcmf_fil_country_le*, i32) #1

declare dso_local signext i8 @brcmf_translate_country_code(i32, i8*, %struct.brcmf_fil_country_le*) #1

declare dso_local signext i8 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_fil_country_le*, i32) #1

declare dso_local i32 @brcmf_setup_wiphybands(%struct.brcmf_cfg80211_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
