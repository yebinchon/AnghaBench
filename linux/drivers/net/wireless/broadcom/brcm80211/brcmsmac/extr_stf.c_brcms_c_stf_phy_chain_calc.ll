; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_phy_chain_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_phy_chain_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ssb_sprom }
%struct.ssb_sprom = type { i32, i32 }

@TXCHAIN_DEF_NPHY = common dso_local global i32 0, align 4
@TXCHAIN_DEF = common dso_local global i32 0, align 4
@RXCHAIN_DEF_NPHY = common dso_local global i32 0, align 4
@RXCHAIN_DEF = common dso_local global i32 0, align 4
@txcore_default = common dso_local global i32 0, align 4
@MIN_SPATIAL_EXPANSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_stf_phy_chain_calc(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %4 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %4, i32 0, i32 2
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.ssb_sprom* %11, %struct.ssb_sprom** %3, align 8
  %12 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %13 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 8
  %19 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %20 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %27 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %1
  %33 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %34 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 15
  br i1 %38, label %39, label %58

39:                                               ; preds = %32, %1
  %40 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @BRCMS_ISNPHY(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @TXCHAIN_DEF_NPHY, align 4
  %47 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %48 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  br label %57

51:                                               ; preds = %39
  %52 = load i32, i32* @TXCHAIN_DEF, align 4
  %53 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %54 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %60 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %65 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 8
  %68 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %69 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @hweight8(i32 %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %76 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 7
  store i8* %74, i8** %78, align 8
  %79 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %80 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %58
  %86 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %87 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 15
  br i1 %91, label %92, label %111

92:                                               ; preds = %85, %58
  %93 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %94 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @BRCMS_ISNPHY(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i32, i32* @RXCHAIN_DEF_NPHY, align 4
  %100 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %101 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i32 %99, i32* %103, align 4
  br label %110

104:                                              ; preds = %92
  %105 = load i32, i32* @RXCHAIN_DEF, align 4
  %106 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %107 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %85
  %112 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %113 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %118 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  store i32 %116, i32* %120, align 4
  %121 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %122 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @hweight8(i32 %125)
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %129 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 6
  store i8* %127, i8** %131, align 8
  %132 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %133 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @txcore_default, align 4
  %138 = call i32 @memcpy(i32 %136, i32 %137, i32 4)
  %139 = load i32, i32* @MIN_SPATIAL_EXPANSION, align 4
  %140 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %141 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %140, i32 0, i32 0
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  store i32 %139, i32* %143, align 8
  %144 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %145 = load i32, i32* @MIN_SPATIAL_EXPANSION, align 4
  %146 = call i32 @brcms_c_stf_spatial_policy_set(%struct.brcms_c_info* %144, i32 %145)
  ret void
}

declare dso_local i64 @BRCMS_ISNPHY(i32) #1

declare dso_local i64 @hweight8(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @brcms_c_stf_spatial_policy_set(%struct.brcms_c_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
