; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_select_ant_div_from_quick_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_select_ant_div_from_quick_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ant_comb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_hw_antcomb_conf = type { i32, i32, i32 }

@ATH_ANT_DIV_COMB_LNA1_DELTA_HI = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_LNA1_DELTA_LOW = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_LNA1_DELTA_MID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_ant_comb*, %struct.ath_hw_antcomb_conf*, i32, i32, i32)* @ath_select_ant_div_from_quick_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_select_ant_div_from_quick_scan(%struct.ath_ant_comb* %0, %struct.ath_hw_antcomb_conf* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ath_ant_comb*, align 8
  %7 = alloca %struct.ath_hw_antcomb_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_ant_comb* %0, %struct.ath_ant_comb** %6, align 8
  store %struct.ath_hw_antcomb_conf* %1, %struct.ath_hw_antcomb_conf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %12 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %243 [
    i32 0, label %14
    i32 1, label %25
    i32 2, label %109
  ]

14:                                               ; preds = %5
  %15 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %16 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %19 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %21 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %20, i32 0, i32 14
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %24 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  br label %244

25:                                               ; preds = %5
  %26 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %27 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %30 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %32 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %35 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %38 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %41 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %43 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 130
  br i1 %45, label %46, label %65

46:                                               ; preds = %25
  %47 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %50 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %54 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ath_is_alt_ant_ratio_better(%struct.ath_ant_comb* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %60 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %59, i32 0, i32 4
  store i32 1, i32* %60, align 4
  br label %64

61:                                               ; preds = %46
  %62 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %63 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %62, i32 0, i32 4
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %108

65:                                               ; preds = %25
  %66 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %67 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_MID, align 4
  %74 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %78 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ath_is_alt_ant_ratio_better(%struct.ath_ant_comb* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %84 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %83, i32 0, i32 4
  store i32 1, i32* %84, align 4
  br label %88

85:                                               ; preds = %70
  %86 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %87 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %86, i32 0, i32 4
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %107

89:                                               ; preds = %65
  %90 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %96 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %95, i32 0, i32 12
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ath_is_alt_ant_ratio_better(%struct.ath_ant_comb* %90, i32 %91, i32 %92, i32 0, i32 %93, i32 %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %102 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %101, i32 0, i32 4
  store i32 1, i32* %102, align 4
  br label %106

103:                                              ; preds = %89
  %104 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %105 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %104, i32 0, i32 4
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %88
  br label %108

108:                                              ; preds = %107, %64
  br label %244

109:                                              ; preds = %5
  %110 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %111 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %110, i32 0, i32 5
  store i32 0, i32* %111, align 4
  %112 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %113 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %112, i32 0, i32 6
  store i32 0, i32* %113, align 4
  %114 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %115 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %114, i32 0, i32 7
  store i32 0, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %118 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %121 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %123 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %122, i32 0, i32 13
  %124 = load i32, i32* %123, align 4
  switch i32 %124, label %153 [
    i32 130, label %125
    i32 128, label %129
    i32 129, label %133
  ]

125:                                              ; preds = %109
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %128 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %127, i32 0, i32 9
  store i32 %126, i32* %128, align 4
  br label %154

129:                                              ; preds = %109
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %132 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %131, i32 0, i32 10
  store i32 %130, i32* %132, align 4
  br label %154

133:                                              ; preds = %109
  %134 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %135 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 128
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %141 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %140, i32 0, i32 10
  store i32 %139, i32* %141, align 4
  br label %152

142:                                              ; preds = %133
  %143 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %144 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 130
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %150 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %149, i32 0, i32 9
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %142
  br label %152

152:                                              ; preds = %151, %138
  br label %154

153:                                              ; preds = %109
  br label %154

154:                                              ; preds = %153, %152, %129, %125
  %155 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %156 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %159 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %158, i32 0, i32 9
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %162 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %160, %163
  %165 = icmp sgt i32 %157, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %154
  %167 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %168 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %167, i32 0, i32 0
  store i32 128, i32* %168, align 4
  br label %172

169:                                              ; preds = %154
  %170 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %171 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %170, i32 0, i32 0
  store i32 130, i32* %171, align 4
  br label %172

172:                                              ; preds = %169, %166
  %173 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %174 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 130
  br i1 %176, label %177, label %196

177:                                              ; preds = %172
  %178 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %181 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %185 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %184, i32 0, i32 12
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ath_is_alt_ant_ratio_better(%struct.ath_ant_comb* %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %177
  %190 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %191 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %190, i32 0, i32 11
  store i32 1, i32* %191, align 4
  br label %195

192:                                              ; preds = %177
  %193 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %194 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %193, i32 0, i32 11
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %189
  br label %239

196:                                              ; preds = %172
  %197 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %198 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 128
  br i1 %200, label %201, label %220

201:                                              ; preds = %196
  %202 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_MID, align 4
  %205 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %209 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %208, i32 0, i32 12
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ath_is_alt_ant_ratio_better(%struct.ath_ant_comb* %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %201
  %214 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %215 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %214, i32 0, i32 11
  store i32 1, i32* %215, align 4
  br label %219

216:                                              ; preds = %201
  %217 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %218 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %217, i32 0, i32 11
  store i32 0, i32* %218, align 4
  br label %219

219:                                              ; preds = %216, %213
  br label %238

220:                                              ; preds = %196
  %221 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* %9, align 4
  %226 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %227 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %226, i32 0, i32 12
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @ath_is_alt_ant_ratio_better(%struct.ath_ant_comb* %221, i32 %222, i32 %223, i32 0, i32 %224, i32 %225, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %220
  %232 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %233 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %232, i32 0, i32 11
  store i32 1, i32* %233, align 4
  br label %237

234:                                              ; preds = %220
  %235 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %236 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %235, i32 0, i32 11
  store i32 0, i32* %236, align 4
  br label %237

237:                                              ; preds = %234, %231
  br label %238

238:                                              ; preds = %237, %219
  br label %239

239:                                              ; preds = %238, %195
  %240 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %241 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %242 = call i32 @ath_ant_set_alt_ratio(%struct.ath_ant_comb* %240, %struct.ath_hw_antcomb_conf* %241)
  br label %244

243:                                              ; preds = %5
  br label %244

244:                                              ; preds = %243, %239, %108, %14
  ret void
}

declare dso_local i32 @ath_is_alt_ant_ratio_better(%struct.ath_ant_comb*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath_ant_set_alt_ratio(%struct.ath_ant_comb*, %struct.ath_hw_antcomb_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
