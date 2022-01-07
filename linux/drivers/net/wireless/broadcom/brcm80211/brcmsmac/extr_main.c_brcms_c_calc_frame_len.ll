; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_calc_frame_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_calc_frame_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RSPEC_RATE_MASK = common dso_local global i32 0, align 4
@PREN_PREAMBLE = common dso_local global i64 0, align 8
@PREN_PREAMBLE_EXT = common dso_local global i32 0, align 4
@BRCM_BAND_2G = common dso_local global i64 0, align 8
@DOT11_OFDM_SIGNAL_EXTENSION = common dso_local global i64 0, align 8
@APHY_SYMBOL_TIME = common dso_local global i32 0, align 4
@APHY_SERVICE_NBITS = common dso_local global i32 0, align 4
@APHY_TAIL_NBITS = common dso_local global i32 0, align 4
@APHY_PREAMBLE_TIME = common dso_local global i64 0, align 8
@APHY_SIGNAL_TIME = common dso_local global i64 0, align 8
@BRCMS_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@BPHY_PLCP_SHORT_TIME = common dso_local global i64 0, align 8
@BPHY_PLCP_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i32, i32, i32)* @brcms_c_calc_frame_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_calc_frame_len(%struct.brcms_c_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_c_info*, align 8
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
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rspec2rate(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @is_mcs_rate(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %73

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @RSPEC_RATE_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @mcs_2_txstreams(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rspec_stc(i32 %27)
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %15, align 4
  %30 = load i64, i64* @PREN_PREAMBLE, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @PREN_PREAMBLE_EXT, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %41 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BRCM_BAND_2G, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %21
  %48 = load i64, i64* @DOT11_OFDM_SIGNAL_EXTENSION, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %47, %21
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @rspec_is40mhz(i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @rspec_issgi(i32 %57)
  %59 = call i32 @mcs_2_rate(i32 %54, i32 %56, i32 %58)
  %60 = mul nsw i32 %59, 4
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @APHY_SYMBOL_TIME, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %12, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* @APHY_SERVICE_NBITS, align 4
  %68 = load i32, i32* @APHY_TAIL_NBITS, align 4
  %69 = add nsw i32 %67, %68
  %70 = mul nsw i32 %69, 1000
  %71 = sub nsw i32 %66, %70
  %72 = sdiv i32 %71, 8000
  store i32 %72, i32* %10, align 4
  br label %126

73:                                               ; preds = %4
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @is_ofdm_rate(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i64, i64* @APHY_PREAMBLE_TIME, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load i64, i64* @APHY_SIGNAL_TIME, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %88, 2
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @APHY_SYMBOL_TIME, align 4
  %92 = sdiv i32 %90, %91
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* @APHY_SERVICE_NBITS, align 4
  %97 = load i32, i32* @APHY_TAIL_NBITS, align 4
  %98 = add nsw i32 %96, %97
  %99 = sub nsw i32 %95, %98
  %100 = sdiv i32 %99, 8
  store i32 %100, i32* %10, align 4
  br label %125

101:                                              ; preds = %73
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @BRCMS_SHORT_PREAMBLE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i64, i64* @BPHY_PLCP_SHORT_TIME, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %8, align 4
  br label %118

112:                                              ; preds = %101
  %113 = load i64, i64* @BPHY_PLCP_TIME, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %13, align 4
  %121 = mul nsw i32 %119, %120
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sdiv i32 %122, 8
  %124 = sdiv i32 %123, 2
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %118, %77
  br label %126

126:                                              ; preds = %125, %53
  %127 = load i32, i32* %10, align 4
  ret i32 %127
}

declare dso_local i32 @rspec2rate(i32) #1

declare dso_local i64 @is_mcs_rate(i32) #1

declare dso_local i32 @mcs_2_txstreams(i32) #1

declare dso_local i32 @rspec_stc(i32) #1

declare dso_local i32 @mcs_2_rate(i32, i32, i32) #1

declare dso_local i32 @rspec_is40mhz(i32) #1

declare dso_local i32 @rspec_issgi(i32) #1

declare dso_local i64 @is_ofdm_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
