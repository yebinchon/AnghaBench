; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_update_shm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_update_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@M_TXPWR_MAX = common dso_local global i32 0, align 4
@M_TXPWR_N = common dso_local global i32 0, align 4
@NUM_TSSI_FRAMES = common dso_local global i32 0, align 4
@M_TXPWR_TARGET = common dso_local global i32 0, align 4
@M_TXPWR_CUR = common dso_local global i32 0, align 4
@TXP_FIRST_OFDM = common dso_local global i32 0, align 4
@TXP_LAST_OFDM = common dso_local global i32 0, align 4
@wlc_phy_txpower_update_shm.ucode_ofdm_rates = internal constant [8 x i32] [i32 12, i32 18, i32 24, i32 36, i32 48, i32 72, i32 96, i32 108], align 16
@MHF2 = common dso_local global i32 0, align 4
@MHF2_HWPWRCTL = common dso_local global i32 0, align 4
@BRCM_BAND_ALL = common dso_local global i32 0, align 4
@M_OFDM_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpower_update_shm(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %7 = call i64 @ISNPHY(%struct.brcms_phy* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %168

10:                                               ; preds = %1
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %168

18:                                               ; preds = %10
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %126

23:                                               ; preds = %18
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @M_TXPWR_MAX, align 4
  %30 = call i32 @wlapi_bmac_write_shm(i32 %28, i32 %29, i32 63)
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @M_TXPWR_N, align 4
  %37 = load i32, i32* @NUM_TSSI_FRAMES, align 4
  %38 = shl i32 1, %37
  %39 = call i32 @wlapi_bmac_write_shm(i32 %35, i32 %36, i32 %38)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @M_TXPWR_TARGET, align 4
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NUM_TSSI_FRAMES, align 4
  %50 = shl i32 %48, %49
  %51 = call i32 @wlapi_bmac_write_shm(i32 %44, i32 %45, i32 %50)
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @M_TXPWR_CUR, align 4
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wlapi_bmac_write_shm(i32 %56, i32 %57, i32 %60)
  %62 = load i32, i32* @TXP_FIRST_OFDM, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %112, %23
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @TXP_LAST_OFDM, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %63
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @TXP_FIRST_OFDM, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* @wlc_phy_txpower_update_shm.ucode_ofdm_rates, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @wlapi_bmac_rate_shm_offset(i32 %72, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 6
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %88 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @wlapi_bmac_write_shm(i32 %84, i32 %86, i32 %93)
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %96 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 14
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %103 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 2
  %110 = sub nsw i32 0, %109
  %111 = call i32 @wlapi_bmac_write_shm(i32 %99, i32 %101, i32 %110)
  br label %112

112:                                              ; preds = %67
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %63

115:                                              ; preds = %63
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %117 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MHF2, align 4
  %122 = load i32, i32* @MHF2_HWPWRCTL, align 4
  %123 = load i32, i32* @MHF2_HWPWRCTL, align 4
  %124 = load i32, i32* @BRCM_BAND_ALL, align 4
  %125 = call i32 @wlapi_bmac_mhf(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  br label %168

126:                                              ; preds = %18
  %127 = load i32, i32* @TXP_FIRST_OFDM, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %148, %126
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @TXP_LAST_OFDM, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %134 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @roundup(i32 %139, i32 8)
  %141 = trunc i64 %140 to i32
  %142 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %143 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  br label %148

148:                                              ; preds = %132
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %128

151:                                              ; preds = %128
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %153 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %152, i32 0, i32 3
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @M_OFDM_OFFSET, align 4
  %158 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %159 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* @TXP_FIRST_OFDM, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 7
  %166 = ashr i32 %165, 3
  %167 = call i32 @wlapi_bmac_write_shm(i32 %156, i32 %157, i32 %166)
  br label %168

168:                                              ; preds = %9, %17, %151, %115
  ret void
}

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlapi_bmac_write_shm(i32, i32, i32) #1

declare dso_local i32 @wlapi_bmac_rate_shm_offset(i32, i32) #1

declare dso_local i32 @wlapi_bmac_mhf(i32, i32, i32, i32, i32) #1

declare dso_local i64 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
