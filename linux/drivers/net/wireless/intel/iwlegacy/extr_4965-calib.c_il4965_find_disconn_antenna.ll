; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_find_disconn_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_find_disconn_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.il_chain_noise_data = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"average_sig: a %d b %d c %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"max_average_sig = %d, antenna %d\0A\00", align 1
@NUM_RX_CHAINS = common dso_local global i32 0, align 4
@MAXIMUM_ALLOWED_PATHLOSS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"i = %d  rssiDelta = %d  disconn_array[i] = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"All Tx chains are disconnected- declare %d as connected\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"Detected that not all antennas are connected! Connected: %#x, valid: %#x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"active_chains (bitwise) = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, i32*, %struct.il_chain_noise_data*)* @il4965_find_disconn_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_find_disconn_antenna(%struct.il_priv* %0, i32* %1, %struct.il_chain_noise_data* %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.il_chain_noise_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.il_chain_noise_data* %2, %struct.il_chain_noise_data** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %6, align 8
  %16 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %17, %22
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %6, align 8
  %27 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %28, %33
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %6, align 8
  %38 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %39, %44
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %3
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 1, %59
  store i32 %60, i32* %7, align 4
  br label %67

61:                                               ; preds = %3
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 1, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  store i32 2, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 1, %77
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, i32, ...) @D_CALIB(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (i8*, i32, ...) @D_CALIB(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %136, %79
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @NUM_RX_CHAINS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %139

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %135

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %102, %107
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @MAXIMUM_ALLOWED_PATHLOSS, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %6, align 8
  %114 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 1, i32* %118, align 4
  br label %124

119:                                              ; preds = %101
  %120 = load i32, i32* %12, align 4
  %121 = shl i32 1, %120
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %119, %112
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %6, align 8
  %128 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, i32, ...) @D_CALIB(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %126, i32 %133)
  br label %135

135:                                              ; preds = %124, %97
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %93

139:                                              ; preds = %93
  %140 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %141 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %7, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %210, %139
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @NUM_RX_CHAINS, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %213

150:                                              ; preds = %146
  %151 = load i32, i32* %12, align 4
  %152 = shl i32 1, %151
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %14, align 8
  %154 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %155 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %14, align 8
  %159 = and i64 %157, %158
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %150
  br label %210

162:                                              ; preds = %150
  %163 = load i64, i64* %10, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %10, align 8
  %165 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %6, align 8
  %166 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %162
  br label %213

174:                                              ; preds = %162
  %175 = load i64, i64* %10, align 8
  %176 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %177 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %175, %179
  br i1 %180, label %181, label %209

181:                                              ; preds = %174
  %182 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %6, align 8
  %183 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %209

190:                                              ; preds = %181
  %191 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %192 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %191, i32 0, i32 2
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @il4965_find_first_chain(i32 %195)
  store i64 %196, i64* %11, align 8
  %197 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %6, align 8
  %198 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* %11, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32 0, i32* %201, align 4
  %202 = load i64, i64* %11, align 8
  %203 = call i32 @BIT(i64 %202)
  %204 = load i32, i32* %7, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %7, align 4
  %206 = load i64, i64* %11, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i32 (i8*, i32, ...) @D_CALIB(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  br label %213

209:                                              ; preds = %181, %174
  br label %210

210:                                              ; preds = %209, %161
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %12, align 4
  br label %146

213:                                              ; preds = %190, %173, %146
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %216 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %214, %218
  br i1 %219, label %220, label %234

220:                                              ; preds = %213
  %221 = load i32, i32* %7, align 4
  %222 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %223 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %221, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %220
  %228 = load i32, i32* %7, align 4
  %229 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %230 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (i8*, i32, ...) @D_CALIB(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %228, i32 %232)
  br label %234

234:                                              ; preds = %227, %220, %213
  %235 = load i32, i32* %7, align 4
  %236 = load %struct.il_chain_noise_data*, %struct.il_chain_noise_data** %6, align 8
  %237 = getelementptr inbounds %struct.il_chain_noise_data, %struct.il_chain_noise_data* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* %7, align 4
  %239 = call i32 (i8*, i32, ...) @D_CALIB(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %238)
  ret void
}

declare dso_local i32 @D_CALIB(i8*, i32, ...) #1

declare dso_local i64 @il4965_find_first_chain(i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
