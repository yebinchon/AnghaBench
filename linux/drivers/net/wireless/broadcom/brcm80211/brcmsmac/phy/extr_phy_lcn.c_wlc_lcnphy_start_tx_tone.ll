; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_start_tx_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_start_tx_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i64 }
%struct.cordic_iq = type { i32, i32 }
%struct.phytbl_info = type { i32*, i32, i32, i64, i32 }

@LCNPHY_TBL_ID_SAMPLEPLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_start_tx_tone(%struct.brcms_phy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cordic_iq, align 4
  %17 = alloca [64 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.phytbl_info, align 8
  %21 = alloca %struct.brcms_phy_lcnphy*, align 8
  %22 = alloca %struct.cordic_iq, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %25, align 8
  store %struct.brcms_phy_lcnphy* %26, %struct.brcms_phy_lcnphy** %21, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %31 = call i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy* %30, i32 1)
  store i32 40, i32* %9, align 4
  %32 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %21, align 8
  %33 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %4
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %38 = call i32 @write_phy_reg(%struct.brcms_phy* %37, i32 2370, i32 2)
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %40 = call i32 @write_phy_reg(%struct.brcms_phy* %39, i32 2363, i32 0)
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %42 = call i32 @write_phy_reg(%struct.brcms_phy* %41, i32 2364, i32 0)
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %44 = call i32 @wlc_lcnphy_txrx_spur_avoidance_mode(%struct.brcms_phy* %43, i32 0)
  br label %45

45:                                               ; preds = %36, %4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  store i32 1, i32* %12, align 4
  br label %49

49:                                               ; preds = %60, %48
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %50, 1000
  %52 = load i32, i32* %12, align 4
  %53 = mul nsw i32 %51, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @abs(i32 %55) #4
  %57 = sdiv i32 %54, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @abs(i32 %62) #4
  %64 = mul nsw i32 %61, %63
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %49, label %67

67:                                               ; preds = %60
  br label %69

68:                                               ; preds = %45
  store i32 2, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %70, 36
  %72 = load i32, i32* %9, align 4
  %73 = sdiv i32 %71, %72
  %74 = sdiv i32 %73, 100
  store i32 %74, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %107, %69
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = call i64 @cordic_calc_iq(i32 %80)
  %82 = bitcast %struct.cordic_iq* %22 to i64*
  store i64 %81, i64* %82, align 4
  %83 = bitcast %struct.cordic_iq* %16 to i8*
  %84 = bitcast %struct.cordic_iq* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 8, i1 false)
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %16, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 %89, %90
  %92 = call i32 @CORDIC_FLOAT(i32 %91)
  %93 = and i32 %92, 1023
  store i32 %93, i32* %18, align 4
  %94 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %16, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = mul nsw i32 %95, %96
  %98 = call i32 @CORDIC_FLOAT(i32 %97)
  %99 = and i32 %98, 1023
  store i32 %99, i32* %19, align 4
  %100 = load i32, i32* %18, align 4
  %101 = shl i32 %100, 10
  %102 = load i32, i32* %19, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %79
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %75

110:                                              ; preds = %75
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %112 = call i32 @mod_phy_reg(%struct.brcms_phy* %111, i32 1750, i32 3, i32 0)
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %114 = call i32 @mod_phy_reg(%struct.brcms_phy* %113, i32 1754, i32 8, i32 8)
  %115 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %116 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %20, i32 0, i32 0
  store i32* %115, i32** %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %20, i32 0, i32 1
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* @LCNPHY_TBL_ID_SAMPLEPLAY, align 4
  %120 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %20, i32 0, i32 4
  store i32 %119, i32* %120, align 8
  %121 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %20, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %20, i32 0, i32 2
  store i32 32, i32* %122, align 4
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %124 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %123, %struct.phytbl_info* %20)
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @wlc_lcnphy_run_samples(%struct.brcms_phy* %125, i32 %126, i32 65535, i32 0, i32 %127)
  ret void
}

declare dso_local i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_txrx_spur_avoidance_mode(%struct.brcms_phy*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @cordic_calc_iq(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @CORDIC_FLOAT(i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i32 @wlc_lcnphy_run_samples(%struct.brcms_phy*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
