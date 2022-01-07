; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_calc_frame_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_calc_frame_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"wl%d: WAR: using rate of 1 mbps\0A\00", align 1
@BRCM_RATE_1M = common dso_local global i32 0, align 4
@RSPEC_RATE_MASK = common dso_local global i32 0, align 4
@PREN_PREAMBLE = common dso_local global i32 0, align 4
@PREN_PREAMBLE_EXT = common dso_local global i32 0, align 4
@BRCMS_MM_PREAMBLE = common dso_local global i32 0, align 4
@PREN_MM_EXT = common dso_local global i64 0, align 8
@APHY_SERVICE_NBITS = common dso_local global i32 0, align 4
@APHY_TAIL_NBITS = common dso_local global i32 0, align 4
@APHY_SYMBOL_TIME = common dso_local global i32 0, align 4
@BRCM_BAND_2G = common dso_local global i64 0, align 8
@DOT11_OFDM_SIGNAL_EXTENSION = common dso_local global i64 0, align 8
@APHY_PREAMBLE_TIME = common dso_local global i32 0, align 4
@APHY_SIGNAL_TIME = common dso_local global i64 0, align 8
@BRCMS_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@BPHY_PLCP_SHORT_TIME = common dso_local global i64 0, align 8
@BPHY_PLCP_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i32, i32, i32)* @brcms_c_calc_frame_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_calc_frame_time(%struct.brcms_c_info* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rspec2rate(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %4
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %22 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %27 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @brcms_err(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @BRCM_RATE_1M, align 4
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %20, %4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @is_mcs_rate(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %113

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @RSPEC_RATE_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @mcs_2_txstreams(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @rspec_stc(i32 %43)
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* @PREN_PREAMBLE, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @PREN_PREAMBLE_EXT, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %46, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @BRCMS_MM_PREAMBLE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %37
  %55 = load i64, i64* @PREN_MM_EXT, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %54, %37
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @rspec_is40mhz(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @rspec_issgi(i32 %64)
  %66 = call i32 @mcs_2_rate(i32 %61, i32 %63, i32 %65)
  %67 = mul nsw i32 %66, 4
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @rspec_stc(i32 %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %60
  %72 = load i32, i32* @APHY_SERVICE_NBITS, align 4
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 8, %73
  %75 = add nsw i32 %72, %74
  %76 = load i32, i32* @APHY_TAIL_NBITS, align 4
  %77 = add nsw i32 %75, %76
  %78 = mul nsw i32 %77, 1000
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @CEIL(i32 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  br label %93

81:                                               ; preds = %60
  %82 = load i32, i32* @APHY_SERVICE_NBITS, align 4
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 8, %83
  %85 = add nsw i32 %82, %84
  %86 = load i32, i32* @APHY_TAIL_NBITS, align 4
  %87 = add nsw i32 %85, %86
  %88 = mul nsw i32 %87, 1000
  %89 = load i32, i32* %12, align 4
  %90 = mul nsw i32 2, %89
  %91 = call i32 @CEIL(i32 %88, i32 %90)
  %92 = mul nsw i32 2, %91
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %81, %71
  %94 = load i32, i32* @APHY_SYMBOL_TIME, align 4
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %100 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BRCM_BAND_2G, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %93
  %107 = load i64, i64* @DOT11_OFDM_SIGNAL_EXTENSION, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %106, %93
  br label %181

113:                                              ; preds = %33
  %114 = load i32, i32* %13, align 4
  %115 = call i64 @is_ofdm_rate(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %153

117:                                              ; preds = %113
  %118 = load i32, i32* @APHY_PREAMBLE_TIME, align 4
  store i32 %118, i32* %10, align 4
  %119 = load i64, i64* @APHY_SIGNAL_TIME, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %13, align 4
  %125 = mul nsw i32 %124, 2
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* @APHY_SERVICE_NBITS, align 4
  %127 = load i32, i32* %8, align 4
  %128 = mul nsw i32 8, %127
  %129 = add nsw i32 %126, %128
  %130 = load i32, i32* @APHY_TAIL_NBITS, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @CEIL(i32 %131, i32 %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* @APHY_SYMBOL_TIME, align 4
  %135 = load i32, i32* %9, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %10, align 4
  %139 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %140 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @BRCM_BAND_2G, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %117
  %147 = load i64, i64* @DOT11_OFDM_SIGNAL_EXTENSION, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %146, %117
  br label %180

153:                                              ; preds = %113
  %154 = load i32, i32* %8, align 4
  %155 = mul nsw i32 %154, 8
  %156 = mul nsw i32 %155, 2
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %157, %158
  %160 = sub nsw i32 %159, 1
  %161 = load i32, i32* %13, align 4
  %162 = sdiv i32 %160, %161
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @BRCMS_SHORT_PREAMBLE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %153
  %168 = load i64, i64* @BPHY_PLCP_SHORT_TIME, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %168
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %10, align 4
  br label %179

173:                                              ; preds = %153
  %174 = load i64, i64* @BPHY_PLCP_TIME, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %173, %167
  br label %180

180:                                              ; preds = %179, %152
  br label %181

181:                                              ; preds = %180, %112
  %182 = load i32, i32* %10, align 4
  ret i32 %182
}

declare dso_local i32 @rspec2rate(i32) #1

declare dso_local i32 @brcms_err(i32, i8*, i32) #1

declare dso_local i64 @is_mcs_rate(i32) #1

declare dso_local i32 @mcs_2_txstreams(i32) #1

declare dso_local i32 @rspec_stc(i32) #1

declare dso_local i32 @mcs_2_rate(i32, i32, i32) #1

declare dso_local i32 @rspec_is40mhz(i32) #1

declare dso_local i32 @rspec_issgi(i32) #1

declare dso_local i32 @CEIL(i32, i32) #1

declare dso_local i64 @is_ofdm_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
