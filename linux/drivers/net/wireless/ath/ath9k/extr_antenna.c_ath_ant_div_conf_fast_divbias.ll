; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_div_conf_fast_divbias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_div_conf_fast_divbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw_antcomb_conf = type { i32, i32, i32, i32, i64, i64 }
%struct.ath_ant_comb = type { i32, i32, i32 }

@ATH_ANT_DIV_COMB_ALT_ANT_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw_antcomb_conf*, %struct.ath_ant_comb*, i32)* @ath_ant_div_conf_fast_divbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_ant_div_conf_fast_divbias(%struct.ath_hw_antcomb_conf* %0, %struct.ath_ant_comb* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw_antcomb_conf*, align 8
  %5 = alloca %struct.ath_ant_comb*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw_antcomb_conf* %0, %struct.ath_hw_antcomb_conf** %4, align 8
  store %struct.ath_ant_comb* %1, %struct.ath_ant_comb** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %8 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %10 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %12 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %3
  %16 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %17 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 4
  %20 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %21 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %19, %22
  switch i32 %23, label %60 [
    i32 1, label %24
    i32 2, label %27
    i32 3, label %30
    i32 16, label %33
    i32 18, label %36
    i32 19, label %39
    i32 32, label %42
    i32 33, label %45
    i32 35, label %48
    i32 48, label %51
    i32 49, label %54
    i32 50, label %57
  ]

24:                                               ; preds = %15
  %25 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %26 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %25, i32 0, i32 3
  store i32 59, i32* %26, align 4
  br label %61

27:                                               ; preds = %15
  %28 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %28, i32 0, i32 3
  store i32 61, i32* %29, align 4
  br label %61

30:                                               ; preds = %15
  %31 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %32 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  br label %61

33:                                               ; preds = %15
  %34 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %35 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %34, i32 0, i32 3
  store i32 7, i32* %35, align 4
  br label %61

36:                                               ; preds = %15
  %37 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %38 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %37, i32 0, i32 3
  store i32 2, i32* %38, align 4
  br label %61

39:                                               ; preds = %15
  %40 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %41 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %40, i32 0, i32 3
  store i32 7, i32* %41, align 4
  br label %61

42:                                               ; preds = %15
  %43 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %44 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %43, i32 0, i32 3
  store i32 6, i32* %44, align 4
  br label %61

45:                                               ; preds = %15
  %46 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %47 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %46, i32 0, i32 3
  store i32 0, i32* %47, align 4
  br label %61

48:                                               ; preds = %15
  %49 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %50 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %49, i32 0, i32 3
  store i32 6, i32* %50, align 4
  br label %61

51:                                               ; preds = %15
  %52 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %53 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  br label %61

54:                                               ; preds = %15
  %55 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %56 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %55, i32 0, i32 3
  store i32 59, i32* %56, align 4
  br label %61

57:                                               ; preds = %15
  %58 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %59 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %58, i32 0, i32 3
  store i32 61, i32* %59, align 4
  br label %61

60:                                               ; preds = %15
  br label %61

61:                                               ; preds = %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24
  br label %344

62:                                               ; preds = %3
  %63 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %64 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %166

67:                                               ; preds = %62
  %68 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %69 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 4
  %72 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %73 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %71, %74
  switch i32 %75, label %164 [
    i32 1, label %76
    i32 2, label %79
    i32 3, label %82
    i32 16, label %85
    i32 18, label %101
    i32 19, label %104
    i32 32, label %120
    i32 33, label %136
    i32 35, label %139
    i32 48, label %155
    i32 49, label %158
    i32 50, label %161
  ]

76:                                               ; preds = %67
  %77 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %78 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  br label %165

79:                                               ; preds = %67
  %80 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %81 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  br label %165

82:                                               ; preds = %67
  %83 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %84 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %83, i32 0, i32 3
  store i32 1, i32* %84, align 4
  br label %165

85:                                               ; preds = %67
  %86 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %87 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %96 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %95, i32 0, i32 3
  store i32 63, i32* %96, align 4
  br label %100

97:                                               ; preds = %90, %85
  %98 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %99 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %98, i32 0, i32 3
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  br label %165

101:                                              ; preds = %67
  %102 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %103 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  br label %165

104:                                              ; preds = %67
  %105 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %106 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %115 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %114, i32 0, i32 3
  store i32 63, i32* %115, align 4
  br label %119

116:                                              ; preds = %109, %104
  %117 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %118 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %117, i32 0, i32 3
  store i32 1, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %113
  br label %165

120:                                              ; preds = %67
  %121 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %122 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %131 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %130, i32 0, i32 3
  store i32 63, i32* %131, align 4
  br label %135

132:                                              ; preds = %125, %120
  %133 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %134 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %133, i32 0, i32 3
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %129
  br label %165

136:                                              ; preds = %67
  %137 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %138 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %137, i32 0, i32 3
  store i32 1, i32* %138, align 4
  br label %165

139:                                              ; preds = %67
  %140 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %141 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %150 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %149, i32 0, i32 3
  store i32 63, i32* %150, align 4
  br label %154

151:                                              ; preds = %144, %139
  %152 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %153 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %152, i32 0, i32 3
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %148
  br label %165

155:                                              ; preds = %67
  %156 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %157 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %156, i32 0, i32 3
  store i32 1, i32* %157, align 4
  br label %165

158:                                              ; preds = %67
  %159 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %160 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %159, i32 0, i32 3
  store i32 1, i32* %160, align 4
  br label %165

161:                                              ; preds = %67
  %162 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %163 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %162, i32 0, i32 3
  store i32 1, i32* %163, align 4
  br label %165

164:                                              ; preds = %67
  br label %165

165:                                              ; preds = %164, %161, %158, %155, %154, %136, %135, %119, %101, %100, %82, %79, %76
  br label %343

166:                                              ; preds = %62
  %167 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %168 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %289

171:                                              ; preds = %166
  %172 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %173 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 4
  %176 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %177 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %175, %178
  switch i32 %179, label %276 [
    i32 1, label %180
    i32 2, label %183
    i32 3, label %186
    i32 16, label %189
    i32 18, label %207
    i32 19, label %210
    i32 32, label %228
    i32 33, label %246
    i32 35, label %249
    i32 48, label %267
    i32 49, label %270
    i32 50, label %273
  ]

180:                                              ; preds = %171
  %181 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %182 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %181, i32 0, i32 3
  store i32 1, i32* %182, align 4
  br label %277

183:                                              ; preds = %171
  %184 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %185 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %184, i32 0, i32 3
  store i32 1, i32* %185, align 4
  br label %277

186:                                              ; preds = %171
  %187 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %188 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %187, i32 0, i32 3
  store i32 1, i32* %188, align 4
  br label %277

189:                                              ; preds = %171
  %190 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %191 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %6, align 4
  %196 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %197 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp sgt i32 %195, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %202 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %201, i32 0, i32 3
  store i32 1, i32* %202, align 4
  br label %206

203:                                              ; preds = %194, %189
  %204 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %205 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %204, i32 0, i32 3
  store i32 2, i32* %205, align 4
  br label %206

206:                                              ; preds = %203, %200
  br label %277

207:                                              ; preds = %171
  %208 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %209 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %208, i32 0, i32 3
  store i32 1, i32* %209, align 4
  br label %277

210:                                              ; preds = %171
  %211 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %212 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %210
  %216 = load i32, i32* %6, align 4
  %217 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %218 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp sgt i32 %216, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %223 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %222, i32 0, i32 3
  store i32 1, i32* %223, align 4
  br label %227

224:                                              ; preds = %215, %210
  %225 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %226 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %225, i32 0, i32 3
  store i32 2, i32* %226, align 4
  br label %227

227:                                              ; preds = %224, %221
  br label %277

228:                                              ; preds = %171
  %229 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %230 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %228
  %234 = load i32, i32* %6, align 4
  %235 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %236 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp sgt i32 %234, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %241 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %240, i32 0, i32 3
  store i32 1, i32* %241, align 4
  br label %245

242:                                              ; preds = %233, %228
  %243 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %244 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %243, i32 0, i32 3
  store i32 2, i32* %244, align 4
  br label %245

245:                                              ; preds = %242, %239
  br label %277

246:                                              ; preds = %171
  %247 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %248 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %247, i32 0, i32 3
  store i32 1, i32* %248, align 4
  br label %277

249:                                              ; preds = %171
  %250 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %251 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %263, label %254

254:                                              ; preds = %249
  %255 = load i32, i32* %6, align 4
  %256 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %257 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %255, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %254
  %261 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %262 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %261, i32 0, i32 3
  store i32 1, i32* %262, align 4
  br label %266

263:                                              ; preds = %254, %249
  %264 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %265 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %264, i32 0, i32 3
  store i32 2, i32* %265, align 4
  br label %266

266:                                              ; preds = %263, %260
  br label %277

267:                                              ; preds = %171
  %268 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %269 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %268, i32 0, i32 3
  store i32 1, i32* %269, align 4
  br label %277

270:                                              ; preds = %171
  %271 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %272 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %271, i32 0, i32 3
  store i32 1, i32* %272, align 4
  br label %277

273:                                              ; preds = %171
  %274 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %275 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %274, i32 0, i32 3
  store i32 1, i32* %275, align 4
  br label %277

276:                                              ; preds = %171
  br label %277

277:                                              ; preds = %276, %273, %270, %267, %266, %246, %245, %227, %207, %206, %186, %183, %180
  %278 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %279 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %5, align 8
  %284 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %287 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 4
  br label %288

288:                                              ; preds = %282, %277
  br label %342

289:                                              ; preds = %166
  %290 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %291 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp eq i32 %292, 3
  br i1 %293, label %294, label %341

294:                                              ; preds = %289
  %295 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %296 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = shl i32 %297, 4
  %299 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %300 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %298, %301
  switch i32 %302, label %339 [
    i32 1, label %303
    i32 2, label %306
    i32 3, label %309
    i32 16, label %312
    i32 18, label %315
    i32 19, label %318
    i32 32, label %321
    i32 33, label %324
    i32 35, label %327
    i32 48, label %330
    i32 49, label %333
    i32 50, label %336
  ]

303:                                              ; preds = %294
  %304 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %305 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %304, i32 0, i32 3
  store i32 1, i32* %305, align 4
  br label %340

306:                                              ; preds = %294
  %307 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %308 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %307, i32 0, i32 3
  store i32 57, i32* %308, align 4
  br label %340

309:                                              ; preds = %294
  %310 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %311 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %310, i32 0, i32 3
  store i32 1, i32* %311, align 4
  br label %340

312:                                              ; preds = %294
  %313 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %314 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %313, i32 0, i32 3
  store i32 2, i32* %314, align 4
  br label %340

315:                                              ; preds = %294
  %316 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %317 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %316, i32 0, i32 3
  store i32 63, i32* %317, align 4
  br label %340

318:                                              ; preds = %294
  %319 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %320 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %319, i32 0, i32 3
  store i32 2, i32* %320, align 4
  br label %340

321:                                              ; preds = %294
  %322 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %323 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %322, i32 0, i32 3
  store i32 3, i32* %323, align 4
  br label %340

324:                                              ; preds = %294
  %325 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %326 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %325, i32 0, i32 3
  store i32 3, i32* %326, align 4
  br label %340

327:                                              ; preds = %294
  %328 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %329 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %328, i32 0, i32 3
  store i32 3, i32* %329, align 4
  br label %340

330:                                              ; preds = %294
  %331 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %332 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %331, i32 0, i32 3
  store i32 1, i32* %332, align 4
  br label %340

333:                                              ; preds = %294
  %334 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %335 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %334, i32 0, i32 3
  store i32 6, i32* %335, align 4
  br label %340

336:                                              ; preds = %294
  %337 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %338 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %337, i32 0, i32 3
  store i32 1, i32* %338, align 4
  br label %340

339:                                              ; preds = %294
  br label %340

340:                                              ; preds = %339, %336, %333, %330, %327, %324, %321, %318, %315, %312, %309, %306, %303
  br label %341

341:                                              ; preds = %340, %289
  br label %342

342:                                              ; preds = %341, %288
  br label %343

343:                                              ; preds = %342, %165
  br label %344

344:                                              ; preds = %343, %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
