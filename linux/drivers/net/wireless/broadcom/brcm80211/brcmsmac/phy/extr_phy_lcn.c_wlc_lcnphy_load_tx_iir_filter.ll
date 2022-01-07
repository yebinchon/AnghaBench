; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_load_tx_iir_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_load_tx_iir_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@__const.wlc_lcnphy_load_tx_iir_filter.addr = private unnamed_addr constant [16 x i32] [i32 2320, i32 2334, i32 2335, i32 2340, i32 2341, i32 2342, i32 2336, i32 2337, i32 2343, i32 2344, i32 2345, i32 2338, i32 2339, i32 2352, i32 2353, i32 2354], align 16
@__const.wlc_lcnphy_load_tx_iir_filter.addr_ofdm = private unnamed_addr constant [16 x i32] [i32 2319, i32 2304, i32 2305, i32 2310, i32 2311, i32 2312, i32 2306, i32 2307, i32 2313, i32 2314, i32 2315, i32 2308, i32 2309, i32 2316, i32 2317, i32 2318], align 16
@LCNPHY_NUM_TX_DIG_FILTERS_CCK = common dso_local global i32 0, align 4
@LCNPHY_txdigfiltcoeffs_cck = common dso_local global i64** null, align 8
@LCNPHY_NUM_DIG_FILT_COEFFS = common dso_local global i32 0, align 4
@LCNPHY_NUM_TX_DIG_FILTERS_OFDM = common dso_local global i32 0, align 4
@LCNPHY_txdigfiltcoeffs_ofdm = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*, i32, i64)* @wlc_lcnphy_load_tx_iir_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_lcnphy_load_tx_iir_filter(%struct.brcms_phy* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca [16 x i32], align 16
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 -1, i64* %7, align 8
  %11 = bitcast [16 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([16 x i32]* @__const.wlc_lcnphy_load_tx_iir_filter.addr to i8*), i64 64, i1 false)
  %12 = bitcast [16 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([16 x i32]* @__const.wlc_lcnphy_load_tx_iir_filter.addr_ofdm to i8*), i64 64, i1 false)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %66, label %15

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @LCNPHY_NUM_TX_DIG_FILTERS_CCK, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load i64**, i64*** @LCNPHY_txdigfiltcoeffs_cck, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64*, i64** %22, i64 %24
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %21, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %7, align 8
  br label %37

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %16

37:                                               ; preds = %30, %16
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @LCNPHY_NUM_DIG_FILT_COEFFS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i64**, i64*** @LCNPHY_txdigfiltcoeffs_cck, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i64*, i64** %51, i64 %52
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @write_phy_reg(%struct.brcms_phy* %46, i32 %50, i64 %59)
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %41

64:                                               ; preds = %41
  br label %65

65:                                               ; preds = %64, %37
  br label %117

66:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %85, %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @LCNPHY_NUM_TX_DIG_FILTERS_OFDM, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i64, i64* %6, align 8
  %73 = load i64**, i64*** @LCNPHY_txdigfiltcoeffs_ofdm, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64*, i64** %73, i64 %75
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %72, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %7, align 8
  br label %88

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %67

88:                                               ; preds = %81, %67
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, -1
  br i1 %90, label %91, label %116

91:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %112, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @LCNPHY_NUM_DIG_FILT_COEFFS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i64**, i64*** @LCNPHY_txdigfiltcoeffs_ofdm, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds i64*, i64** %102, i64 %103
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @write_phy_reg(%struct.brcms_phy* %97, i32 %101, i64 %110)
  br label %112

112:                                              ; preds = %96
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %92

115:                                              ; preds = %92
  br label %116

116:                                              ; preds = %115, %88
  br label %117

117:                                              ; preds = %116, %65
  %118 = load i64, i64* %7, align 8
  %119 = icmp ne i64 %118, -1
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 0, i32 -1
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
