; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dfs.c_ath9k_check_chirping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dfs.c_ath9k_check_chirping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_dfs_fft_40 = type { i32 }
%struct.ath9k_dfs_fft_20 = type { i32 }

@FFT_NUM_SAMPLES = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"HT40: datalen=%d, num_fft_packets=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"not enough packets for chirp\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"fixing datalen by 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"HT20: datalen=%d, num_fft_packets=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"bin_max = [%d, %d, %d, %d]\0A\00", align 1
@NUM_DIFFS = common dso_local global i32 0, align 4
@BIN_DELTA_MIN = common dso_local global i64 0, align 8
@BIN_DELTA_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"CHIRP: invalid delta %d in sample %d\0A\00", align 1
@MAX_DIFF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"CHIRP: ddelta %d too high\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"CHIRP - %d: delta=%d, ddelta=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, i32*, i32, i32, i32)* @ath9k_check_chirping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_check_chirping(%struct.ath_softc* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_softc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ath_hw*, align 8
  %16 = alloca %struct.ath_common*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ath9k_dfs_fft_40*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ath9k_dfs_fft_20*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %25 = load i32, i32* @FFT_NUM_SAMPLES, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %29 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 0
  %31 = load %struct.ath_hw*, %struct.ath_hw** %30, align 8
  store %struct.ath_hw* %31, %struct.ath_hw** %15, align 8
  %32 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %33 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %32)
  store %struct.ath_common* %33, %struct.ath_common** %16, align 8
  %34 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_CHAN_HT40(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %104

39:                                               ; preds = %5
  %40 = load i32*, i32** %8, align 8
  %41 = bitcast i32* %40 to %struct.ath9k_dfs_fft_40*
  store %struct.ath9k_dfs_fft_40* %41, %struct.ath9k_dfs_fft_40** %18, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %220

49:                                               ; preds = %39
  %50 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %51 = load i32, i32* @DFS, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %19, align 4
  %54 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %50, i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* @FFT_NUM_SAMPLES, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %60 = load i32, i32* @DFS, align 4
  %61 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %59, i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %220

62:                                               ; preds = %49
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = urem i64 %64, 4
  %66 = icmp eq i64 %65, 2
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = bitcast i32* %69 to %struct.ath9k_dfs_fft_40*
  store %struct.ath9k_dfs_fft_40* %70, %struct.ath9k_dfs_fft_40** %18, align 8
  %71 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %72 = load i32, i32* @DFS, align 4
  %73 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %71, i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %67, %62
  %75 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @IS_CHAN_HT40MINUS(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @swap(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %74
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %100, %84
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @FFT_NUM_SAMPLES, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load %struct.ath9k_dfs_fft_40*, %struct.ath9k_dfs_fft_40** %18, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ath9k_dfs_fft_40, %struct.ath9k_dfs_fft_40* %90, i64 %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @ath9k_get_max_index_ht40(%struct.ath9k_dfs_fft_40* %93, i32 %94, i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %28, i64 %98
  store i32 %96, i32* %99, align 4
  br label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %85

103:                                              ; preds = %85
  br label %148

104:                                              ; preds = %5
  %105 = load i32*, i32** %8, align 8
  %106 = bitcast i32* %105 to %struct.ath9k_dfs_fft_20*
  store %struct.ath9k_dfs_fft_20* %106, %struct.ath9k_dfs_fft_20** %21, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = udiv i64 %108, 4
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %22, align 4
  %111 = load i32, i32* %22, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %220

114:                                              ; preds = %104
  %115 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %116 = load i32, i32* @DFS, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %22, align 4
  %119 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %115, i32 %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* @FFT_NUM_SAMPLES, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %125 = load i32, i32* @DFS, align 4
  %126 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %124, i32 %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %220

127:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %144, %127
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @FFT_NUM_SAMPLES, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %128
  %133 = load %struct.ath9k_dfs_fft_20*, %struct.ath9k_dfs_fft_20** %21, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ath9k_dfs_fft_20, %struct.ath9k_dfs_fft_20* %133, i64 %135
  %137 = getelementptr inbounds %struct.ath9k_dfs_fft_20, %struct.ath9k_dfs_fft_20* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @fft_max_index(i32 %138)
  %140 = xor i32 %139, 32
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %28, i64 %142
  store i32 %140, i32* %143, align 4
  br label %144

144:                                              ; preds = %132
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %128

147:                                              ; preds = %128
  br label %148

148:                                              ; preds = %147, %103
  %149 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %150 = load i32, i32* @DFS, align 4
  %151 = getelementptr inbounds i32, i32* %28, i64 0
  %152 = load i32, i32* %151, align 16
  %153 = getelementptr inbounds i32, i32* %28, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds i32, i32* %28, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds i32, i32* %28, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %149, i32 %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %154, i32 %156, i32 %158)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %160

160:                                              ; preds = %216, %148
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @NUM_DIFFS, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %219

164:                                              ; preds = %160
  store i32 -1, i32* %23, align 4
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %28, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %28, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %169, %173
  store i32 %174, i32* %24, align 4
  %175 = load i32, i32* %24, align 4
  %176 = call i64 @abs(i32 %175)
  %177 = load i64, i64* @BIN_DELTA_MIN, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %184, label %179

179:                                              ; preds = %164
  %180 = load i32, i32* %24, align 4
  %181 = call i64 @abs(i32 %180)
  %182 = load i64, i64* @BIN_DELTA_MAX, align 8
  %183 = icmp sgt i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %179, %164
  %185 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %186 = load i32, i32* @DFS, align 4
  %187 = load i32, i32* %24, align 4
  %188 = load i32, i32* %12, align 4
  %189 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %185, i32 %186, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %187, i32 %188)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %220

190:                                              ; preds = %179
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %208

194:                                              ; preds = %190
  %195 = load i32, i32* %24, align 4
  %196 = load i32, i32* %17, align 4
  %197 = sub nsw i32 %195, %196
  store i32 %197, i32* %23, align 4
  %198 = load i32, i32* %23, align 4
  %199 = call i64 @abs(i32 %198)
  %200 = load i64, i64* @MAX_DIFF, align 8
  %201 = icmp sgt i64 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %194
  %203 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %204 = load i32, i32* @DFS, align 4
  %205 = load i32, i32* %23, align 4
  %206 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %203, i32 %204, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %205)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %220

207:                                              ; preds = %194
  br label %208

208:                                              ; preds = %207, %193
  %209 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %210 = load i32, i32* @DFS, align 4
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %24, align 4
  %213 = load i32, i32* %23, align 4
  %214 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %209, i32 %210, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %24, align 4
  store i32 %215, i32* %17, align 4
  br label %216

216:                                              ; preds = %208
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  br label %160

219:                                              ; preds = %160
  store i32 1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %220

220:                                              ; preds = %219, %202, %184, %123, %113, %58, %48
  %221 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #2

declare dso_local i64 @IS_CHAN_HT40(i32) #2

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #2

declare dso_local i64 @IS_CHAN_HT40MINUS(i32) #2

declare dso_local i32 @swap(i32, i32) #2

declare dso_local i32 @ath9k_get_max_index_ht40(%struct.ath9k_dfs_fft_40*, i32, i32) #2

declare dso_local i32 @fft_max_index(i32) #2

declare dso_local i64 @abs(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
