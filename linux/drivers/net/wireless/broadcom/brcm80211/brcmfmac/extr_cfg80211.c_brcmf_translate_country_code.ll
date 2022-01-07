; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_translate_country_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_translate_country_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcmfmac_pd_cc* }
%struct.brcmfmac_pd_cc = type { i32, %struct.brcmfmac_pd_cc_entry* }
%struct.brcmfmac_pd_cc_entry = type { i8*, i32, i32 }
%struct.brcmf_fil_country_le = type { i8*, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No country codes configured for device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Country code already set\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"No country code match found\0A\00", align 1
@BRCMF_COUNTRY_BUF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pub*, i8*, %struct.brcmf_fil_country_le*)* @brcmf_translate_country_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_translate_country_code(%struct.brcmf_pub* %0, i8* %1, %struct.brcmf_fil_country_le* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.brcmf_fil_country_le*, align 8
  %8 = alloca %struct.brcmfmac_pd_cc*, align 8
  %9 = alloca %struct.brcmfmac_pd_cc_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.brcmf_fil_country_le* %2, %struct.brcmf_fil_country_le** %7, align 8
  %12 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %13 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.brcmfmac_pd_cc*, %struct.brcmfmac_pd_cc** %15, align 8
  store %struct.brcmfmac_pd_cc* %16, %struct.brcmfmac_pd_cc** %8, align 8
  %17 = load %struct.brcmfmac_pd_cc*, %struct.brcmfmac_pd_cc** %8, align 8
  %18 = icmp ne %struct.brcmfmac_pd_cc* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @TRACE, align 4
  %21 = call i32 @brcmf_dbg(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %162

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load %struct.brcmf_fil_country_le*, %struct.brcmf_fil_country_le** %7, align 8
  %30 = getelementptr inbounds %struct.brcmf_fil_country_le, %struct.brcmf_fil_country_le* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %28, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %24
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load %struct.brcmf_fil_country_le*, %struct.brcmf_fil_country_le** %7, align 8
  %42 = getelementptr inbounds %struct.brcmf_fil_country_le, %struct.brcmf_fil_country_le* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %40, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load i32, i32* @TRACE, align 4
  %50 = call i32 @brcmf_dbg(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %162

53:                                               ; preds = %36, %24
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %106, %53
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.brcmfmac_pd_cc*, %struct.brcmfmac_pd_cc** %8, align 8
  %57 = getelementptr inbounds %struct.brcmfmac_pd_cc, %struct.brcmfmac_pd_cc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %54
  %61 = load %struct.brcmfmac_pd_cc*, %struct.brcmfmac_pd_cc** %8, align 8
  %62 = getelementptr inbounds %struct.brcmfmac_pd_cc, %struct.brcmfmac_pd_cc* %61, i32 0, i32 1
  %63 = load %struct.brcmfmac_pd_cc_entry*, %struct.brcmfmac_pd_cc_entry** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.brcmfmac_pd_cc_entry, %struct.brcmfmac_pd_cc_entry* %63, i64 %65
  store %struct.brcmfmac_pd_cc_entry* %66, %struct.brcmfmac_pd_cc_entry** %9, align 8
  %67 = load %struct.brcmfmac_pd_cc_entry*, %struct.brcmfmac_pd_cc_entry** %9, align 8
  %68 = getelementptr inbounds %struct.brcmfmac_pd_cc_entry, %struct.brcmfmac_pd_cc_entry* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %77, %74, %60
  %80 = load %struct.brcmfmac_pd_cc_entry*, %struct.brcmfmac_pd_cc_entry** %9, align 8
  %81 = getelementptr inbounds %struct.brcmfmac_pd_cc_entry, %struct.brcmfmac_pd_cc_entry* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %85, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %79
  %92 = load %struct.brcmfmac_pd_cc_entry*, %struct.brcmfmac_pd_cc_entry** %9, align 8
  %93 = getelementptr inbounds %struct.brcmfmac_pd_cc_entry, %struct.brcmfmac_pd_cc_entry* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %97, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %10, align 4
  br label %109

105:                                              ; preds = %91, %79
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %54

109:                                              ; preds = %103, %54
  %110 = load i32, i32* %10, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* @TRACE, align 4
  %114 = call i32 @brcmf_dbg(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %162

117:                                              ; preds = %109
  %118 = load %struct.brcmf_fil_country_le*, %struct.brcmf_fil_country_le** %7, align 8
  %119 = call i32 @memset(%struct.brcmf_fil_country_le* %118, i32 0, i32 16)
  %120 = load %struct.brcmfmac_pd_cc*, %struct.brcmfmac_pd_cc** %8, align 8
  %121 = getelementptr inbounds %struct.brcmfmac_pd_cc, %struct.brcmfmac_pd_cc* %120, i32 0, i32 1
  %122 = load %struct.brcmfmac_pd_cc_entry*, %struct.brcmfmac_pd_cc_entry** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.brcmfmac_pd_cc_entry, %struct.brcmfmac_pd_cc_entry* %122, i64 %124
  %126 = getelementptr inbounds %struct.brcmfmac_pd_cc_entry, %struct.brcmfmac_pd_cc_entry* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @cpu_to_le32(i32 %127)
  %129 = load %struct.brcmf_fil_country_le*, %struct.brcmf_fil_country_le** %7, align 8
  %130 = getelementptr inbounds %struct.brcmf_fil_country_le, %struct.brcmf_fil_country_le* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load %struct.brcmf_fil_country_le*, %struct.brcmf_fil_country_le** %7, align 8
  %132 = getelementptr inbounds %struct.brcmf_fil_country_le, %struct.brcmf_fil_country_le* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.brcmfmac_pd_cc*, %struct.brcmfmac_pd_cc** %8, align 8
  %135 = getelementptr inbounds %struct.brcmfmac_pd_cc, %struct.brcmfmac_pd_cc* %134, i32 0, i32 1
  %136 = load %struct.brcmfmac_pd_cc_entry*, %struct.brcmfmac_pd_cc_entry** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.brcmfmac_pd_cc_entry, %struct.brcmfmac_pd_cc_entry* %136, i64 %138
  %140 = getelementptr inbounds %struct.brcmfmac_pd_cc_entry, %struct.brcmfmac_pd_cc_entry* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @BRCMF_COUNTRY_BUF_SZ, align 4
  %143 = call i32 @memcpy(i32 %133, i32 %141, i32 %142)
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = load %struct.brcmf_fil_country_le*, %struct.brcmf_fil_country_le** %7, align 8
  %148 = getelementptr inbounds %struct.brcmf_fil_country_le, %struct.brcmf_fil_country_le* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  store i8 %146, i8* %150, align 1
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = load %struct.brcmf_fil_country_le*, %struct.brcmf_fil_country_le** %7, align 8
  %155 = getelementptr inbounds %struct.brcmf_fil_country_le, %struct.brcmf_fil_country_le* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  store i8 %153, i8* %157, align 1
  %158 = load %struct.brcmf_fil_country_le*, %struct.brcmf_fil_country_le** %7, align 8
  %159 = getelementptr inbounds %struct.brcmf_fil_country_le, %struct.brcmf_fil_country_le* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 2
  store i8 0, i8* %161, align 1
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %117, %112, %48, %19
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @memset(%struct.brcmf_fil_country_le*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
