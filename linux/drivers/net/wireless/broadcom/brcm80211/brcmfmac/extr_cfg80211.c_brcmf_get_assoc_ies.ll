; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_get_assoc_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_get_assoc_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i64, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { i32 }
%struct.brcmf_cfg80211_assoc_ielen_le = type { i32, i32 }
%struct.brcmf_cfg80211_connect_info = type { i8*, i8*, i32*, i32* }

@.str = private unnamed_addr constant [11 x i8] c"assoc_info\00", align 1
@WL_ASSOC_INFO_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not get assoc info (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"assoc_req_ies\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"could not get assoc req (%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"assoc_resp_ies\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"could not get assoc resp (%d)\0A\00", align 1
@CONN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"req len (%d) resp len (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_cfg80211_info*, %struct.brcmf_if*)* @brcmf_get_assoc_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_get_assoc_ies(%struct.brcmf_cfg80211_info* %0, %struct.brcmf_if* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.brcmf_cfg80211_info*, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.brcmf_pub*, align 8
  %7 = alloca %struct.brcmf_cfg80211_assoc_ielen_le*, align 8
  %8 = alloca %struct.brcmf_cfg80211_connect_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %4, align 8
  store %struct.brcmf_if* %1, %struct.brcmf_if** %5, align 8
  %12 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %12, i32 0, i32 1
  %14 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  store %struct.brcmf_pub* %14, %struct.brcmf_pub** %6, align 8
  %15 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %16 = call %struct.brcmf_cfg80211_connect_info* @cfg_to_conn(%struct.brcmf_cfg80211_info* %15)
  store %struct.brcmf_cfg80211_connect_info* %16, %struct.brcmf_cfg80211_connect_info** %8, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %18 = call i32 @brcmf_clear_assoc_ies(%struct.brcmf_cfg80211_info* %17)
  %19 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %20 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %21 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @WL_ASSOC_INFO_MAX, align 4
  %24 = call i64 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @bphy_err(%struct.brcmf_pub* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %3, align 8
  br label %144

32:                                               ; preds = %2
  %33 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %34 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.brcmf_cfg80211_assoc_ielen_le*
  store %struct.brcmf_cfg80211_assoc_ielen_le* %36, %struct.brcmf_cfg80211_assoc_ielen_le** %7, align 8
  %37 = load %struct.brcmf_cfg80211_assoc_ielen_le*, %struct.brcmf_cfg80211_assoc_ielen_le** %7, align 8
  %38 = getelementptr inbounds %struct.brcmf_cfg80211_assoc_ielen_le, %struct.brcmf_cfg80211_assoc_ielen_le* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le32_to_cpu(i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load %struct.brcmf_cfg80211_assoc_ielen_le*, %struct.brcmf_cfg80211_assoc_ielen_le** %7, align 8
  %42 = getelementptr inbounds %struct.brcmf_cfg80211_assoc_ielen_le, %struct.brcmf_cfg80211_assoc_ielen_le* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le32_to_cpu(i32 %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %84

47:                                               ; preds = %32
  %48 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %49 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %50 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @WL_ASSOC_INFO_MAX, align 4
  %53 = call i64 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %51, i32 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @bphy_err(%struct.brcmf_pub* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* %3, align 8
  br label %144

61:                                               ; preds = %47
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %64 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %66 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %69 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @kmemdup(i64 %67, i8* %70, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %75 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %74, i32 0, i32 3
  store i32* %73, i32** %75, align 8
  %76 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %77 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %61
  %81 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %82 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %81, i32 0, i32 1
  store i8* null, i8** %82, align 8
  br label %83

83:                                               ; preds = %80, %61
  br label %89

84:                                               ; preds = %32
  %85 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %86 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %85, i32 0, i32 1
  store i8* null, i8** %86, align 8
  %87 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %88 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %87, i32 0, i32 3
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %84, %83
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %129

92:                                               ; preds = %89
  %93 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %94 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %95 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @WL_ASSOC_INFO_MAX, align 4
  %98 = call i64 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %96, i32 %97)
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @bphy_err(%struct.brcmf_pub* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %103)
  %105 = load i64, i64* %11, align 8
  store i64 %105, i64* %3, align 8
  br label %144

106:                                              ; preds = %92
  %107 = load i8*, i8** %10, align 8
  %108 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %109 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %111 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %114 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i8* @kmemdup(i64 %112, i8* %115, i32 %116)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %120 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  %121 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %122 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %106
  %126 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %127 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %126, i32 0, i32 0
  store i8* null, i8** %127, align 8
  br label %128

128:                                              ; preds = %125, %106
  br label %134

129:                                              ; preds = %89
  %130 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %131 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %130, i32 0, i32 0
  store i8* null, i8** %131, align 8
  %132 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %133 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %132, i32 0, i32 2
  store i32* null, i32** %133, align 8
  br label %134

134:                                              ; preds = %129, %128
  %135 = load i32, i32* @CONN, align 4
  %136 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %137 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %8, align 8
  %140 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @brcmf_dbg(i32 %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %138, i8* %141)
  %143 = load i64, i64* %11, align 8
  store i64 %143, i64* %3, align 8
  br label %144

144:                                              ; preds = %134, %101, %56, %27
  %145 = load i64, i64* %3, align 8
  ret i64 %145
}

declare dso_local %struct.brcmf_cfg80211_connect_info* @cfg_to_conn(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @brcmf_clear_assoc_ies(%struct.brcmf_cfg80211_info*) #1

declare dso_local i64 @brcmf_fil_iovar_data_get(%struct.brcmf_if*, i8*, i64, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @kmemdup(i64, i8*, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
