; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_tpc_config_get_rate_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_tpc_config_get_rate_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WMI_RATE_PREAMBLE_CCK = common dso_local global i32 0, align 4
@WMI_RATE_PREAMBLE_OFDM = common dso_local global i32 0, align 4
@WMI_RATE_PREAMBLE_HT = common dso_local global i32 0, align 4
@WMI_RATE_PREAMBLE_VHT = common dso_local global i32 0, align 4
@ATH10K_TPC_PREAM_TABLE_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_tpc_config_get_rate_code(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %23, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @WMI_RATE_PREAMBLE_CCK, align 4
  %17 = call i64 @ATH10K_HW_RATECODE(i32 %15, i32 0, i32 %16)
  %18 = load i64*, i64** %4, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load i64, i64* %10, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 %27, i64* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %46, %26
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @WMI_RATE_PREAMBLE_OFDM, align 4
  %40 = call i64 @ATH10K_HW_RATECODE(i32 %38, i32 0, i32 %39)
  %41 = load i64*, i64** %4, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %34

49:                                               ; preds = %34
  %50 = load i64, i64* %10, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %79, %49
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %75, %61
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @WMI_RATE_PREAMBLE_HT, align 4
  %69 = call i64 @ATH10K_HW_RATECODE(i32 %66, i32 %67, i32 %68)
  %70 = load i64*, i64** %4, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %69, i64* %72, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %62

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %57

82:                                               ; preds = %57
  %83 = load i64, i64* %10, align 8
  %84 = load i64*, i64** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %83, i64* %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %112, %82
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %90
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %108, %94
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 8
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @WMI_RATE_PREAMBLE_HT, align 4
  %102 = call i64 @ATH10K_HW_RATECODE(i32 %99, i32 %100, i32 %101)
  %103 = load i64*, i64** %4, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 %102, i64* %105, align 8
  %106 = load i64, i64* %10, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %10, align 8
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %95

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %90

115:                                              ; preds = %90
  %116 = load i64, i64* %10, align 8
  %117 = load i64*, i64** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 %116, i64* %120, align 8
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %145, %115
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %141, %127
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 10
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @WMI_RATE_PREAMBLE_VHT, align 4
  %135 = call i64 @ATH10K_HW_RATECODE(i32 %132, i32 %133, i32 %134)
  %136 = load i64*, i64** %4, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  store i64 %135, i64* %138, align 8
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %131
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %128

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %123

148:                                              ; preds = %123
  %149 = load i64, i64* %10, align 8
  %150 = load i64*, i64** %5, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 %149, i64* %153, align 8
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %178, %148
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %156
  store i32 0, i32* %8, align 4
  br label %161

161:                                              ; preds = %174, %160
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %162, 10
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @WMI_RATE_PREAMBLE_VHT, align 4
  %168 = call i64 @ATH10K_HW_RATECODE(i32 %165, i32 %166, i32 %167)
  %169 = load i64*, i64** %4, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  store i64 %168, i64* %171, align 8
  %172 = load i64, i64* %10, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %10, align 8
  br label %174

174:                                              ; preds = %164
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %161

177:                                              ; preds = %161
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %156

181:                                              ; preds = %156
  %182 = load i64, i64* %10, align 8
  %183 = load i64*, i64** %5, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  store i64 %182, i64* %186, align 8
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %189

189:                                              ; preds = %211, %181
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %189
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %207, %193
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %195, 10
  br i1 %196, label %197, label %210

197:                                              ; preds = %194
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @WMI_RATE_PREAMBLE_VHT, align 4
  %201 = call i64 @ATH10K_HW_RATECODE(i32 %198, i32 %199, i32 %200)
  %202 = load i64*, i64** %4, align 8
  %203 = load i64, i64* %10, align 8
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  store i64 %201, i64* %204, align 8
  %205 = load i64, i64* %10, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %10, align 8
  br label %207

207:                                              ; preds = %197
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %194

210:                                              ; preds = %194
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %189

214:                                              ; preds = %189
  %215 = load i64, i64* %10, align 8
  %216 = load i64*, i64** %5, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  store i64 %215, i64* %219, align 8
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* @WMI_RATE_PREAMBLE_CCK, align 4
  %223 = call i64 @ATH10K_HW_RATECODE(i32 0, i32 0, i32 %222)
  %224 = load i64*, i64** %4, align 8
  %225 = load i64, i64* %10, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %10, align 8
  %227 = getelementptr inbounds i64, i64* %224, i64 %225
  store i64 %223, i64* %227, align 8
  %228 = load i32, i32* @WMI_RATE_PREAMBLE_OFDM, align 4
  %229 = call i64 @ATH10K_HW_RATECODE(i32 0, i32 0, i32 %228)
  %230 = load i64*, i64** %4, align 8
  %231 = load i64, i64* %10, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %10, align 8
  %233 = getelementptr inbounds i64, i64* %230, i64 %231
  store i64 %229, i64* %233, align 8
  %234 = load i32, i32* @WMI_RATE_PREAMBLE_CCK, align 4
  %235 = call i64 @ATH10K_HW_RATECODE(i32 0, i32 0, i32 %234)
  %236 = load i64*, i64** %4, align 8
  %237 = load i64, i64* %10, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %10, align 8
  %239 = getelementptr inbounds i64, i64* %236, i64 %237
  store i64 %235, i64* %239, align 8
  %240 = load i32, i32* @WMI_RATE_PREAMBLE_OFDM, align 4
  %241 = call i64 @ATH10K_HW_RATECODE(i32 0, i32 0, i32 %240)
  %242 = load i64*, i64** %4, align 8
  %243 = load i64, i64* %10, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %10, align 8
  %245 = getelementptr inbounds i64, i64* %242, i64 %243
  store i64 %241, i64* %245, align 8
  %246 = load i32, i32* @WMI_RATE_PREAMBLE_OFDM, align 4
  %247 = call i64 @ATH10K_HW_RATECODE(i32 0, i32 0, i32 %246)
  %248 = load i64*, i64** %4, align 8
  %249 = load i64, i64* %10, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %10, align 8
  %251 = getelementptr inbounds i64, i64* %248, i64 %249
  store i64 %247, i64* %251, align 8
  %252 = load i64, i64* @ATH10K_TPC_PREAM_TABLE_END, align 8
  %253 = load i64*, i64** %5, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %253, i64 %255
  store i64 %252, i64* %256, align 8
  ret void
}

declare dso_local i64 @ATH10K_HW_RATECODE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
