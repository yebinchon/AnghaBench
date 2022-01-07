; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_set_random.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_set_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_pno_info = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32 }
%struct.brcmf_pno_macaddr_le = type { i32, i32*, i32 }

@NL80211_SCAN_FLAG_RANDOM_ADDR = common dso_local global i32 0, align 4
@BRCMF_PFN_MACADDR_CFG_VER = common dso_local global i32 0, align 4
@BRCMF_PFN_MAC_OUI_ONLY = common dso_local global i32 0, align 4
@BRCMF_PFN_SET_MAC_UNASSOC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"enabling random mac: reqid=%llu mac=%pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pfn_macaddr\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"pfn_macaddr failed, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, %struct.brcmf_pno_info*)* @brcmf_pno_set_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pno_set_random(%struct.brcmf_if* %0, %struct.brcmf_pno_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca %struct.brcmf_pno_info*, align 8
  %6 = alloca %struct.brcmf_pub*, align 8
  %7 = alloca %struct.brcmf_pno_macaddr_le, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store %struct.brcmf_pno_info* %1, %struct.brcmf_pno_info** %5, align 8
  %12 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %13 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %12, i32 0, i32 0
  %14 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  store %struct.brcmf_pub* %14, %struct.brcmf_pub** %6, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %54, %2
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %5, align 8
  %18 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %15
  %22 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %5, align 8
  %23 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NL80211_SCAN_FLAG_RANDOM_ADDR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %21
  %35 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %5, align 8
  %36 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %8, align 8
  %44 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %5, align 8
  %45 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %9, align 8
  br label %57

53:                                               ; preds = %21
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %15

57:                                               ; preds = %34, %15
  %58 = load i32*, i32** %8, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %142

61:                                               ; preds = %57
  %62 = load i32, i32* @BRCMF_PFN_MACADDR_CFG_VER, align 4
  %63 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, %struct.brcmf_pno_macaddr_le* %7, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* @BRCMF_PFN_MAC_OUI_ONLY, align 4
  %65 = load i32, i32* @BRCMF_PFN_SET_MAC_UNASSOC, align 4
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, %struct.brcmf_pno_macaddr_le* %7, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, %struct.brcmf_pno_macaddr_le* %7, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = call i32 @memcpy(i32* %69, i32* %70, i32 %71)
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %105, %61
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @ETH_ALEN, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %73
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, %struct.brcmf_pno_macaddr_le* %7, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %82
  store i32 %89, i32* %87, align 4
  %90 = call i32 (...) @get_random_int()
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %90, %96
  %98 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, %struct.brcmf_pno_macaddr_le* %7, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %97
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %77
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %73

108:                                              ; preds = %73
  %109 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, %struct.brcmf_pno_macaddr_le* %7, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 254
  store i32 %113, i32* %111, align 4
  %114 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, %struct.brcmf_pno_macaddr_le* %7, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, 2
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* @SCAN, align 4
  %120 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %5, align 8
  %121 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %122, i64 %124
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, %struct.brcmf_pno_macaddr_le* %7, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @brcmf_dbg(i32 %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %128, i32* %130)
  %132 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %133 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.brcmf_pno_macaddr_le* %7, i32 24)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %108
  %137 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @bphy_err(%struct.brcmf_pub* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %136, %108
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %60
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get_random_int(...) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32*) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_pno_macaddr_le*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
