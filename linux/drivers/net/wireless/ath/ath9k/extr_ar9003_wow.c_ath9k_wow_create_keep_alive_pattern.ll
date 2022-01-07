; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_wow.c_ath9k_wow_create_keep_alive_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_wow.c_ath9k_wow_create_keep_alive_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32 }
%struct.ath_common = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@KAL_NUM_DATA_WORDS = common dso_local global i32 0, align 4
@KAL_FRAME_LEN = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i32 0, align 4
@KAL_NUM_DESC_WORDS = common dso_local global i32 0, align 4
@AR_WOW_KA_DESC_WORD2 = common dso_local global i32 0, align 4
@KAL_FRAME_TYPE = common dso_local global i32 0, align 4
@KAL_FRAME_SUB_TYPE = common dso_local global i32 0, align 4
@KAL_TO_DS = common dso_local global i32 0, align 4
@KAL_DURATION_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_wow_create_keep_alive_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_wow_create_keep_alive_pattern(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [13 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %3, align 8
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = bitcast [13 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 52, i1 false)
  %21 = load i32, i32* @KAL_NUM_DATA_WORDS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @memcpy(i32* %16, i32 %26, i32 %27)
  %29 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %30 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32* %19, i32 %31, i32 %32)
  %34 = load i32, i32* @KAL_FRAME_LEN, align 4
  %35 = load i32, i32* @MAX_RATE_POWER, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %34, %36
  %38 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 0
  store i32 %37, i32* %38, align 16
  %39 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 4
  store i32 0, i32* %40, align 16
  %41 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 2
  %45 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 7
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 2
  store i32 983040, i32* %46, align 8
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_CHAN_2GHZ(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 3
  store i32 27, i32* %53, align 4
  br label %56

54:                                               ; preds = %1
  %55 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 3
  store i32 11, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %52
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @KAL_NUM_DESC_WORDS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %63 = load i32, i32* @AR_WOW_KA_DESC_WORD2, align 4
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 %64, 4
  %66 = add nsw i32 %63, %65
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @REG_WRITE(%struct.ath_hw* %62, i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %57

75:                                               ; preds = %57
  %76 = load i32, i32* @KAL_FRAME_TYPE, align 4
  %77 = shl i32 %76, 2
  %78 = load i32, i32* @KAL_FRAME_SUB_TYPE, align 4
  %79 = shl i32 %78, 4
  %80 = or i32 %77, %79
  %81 = load i32, i32* @KAL_TO_DS, align 4
  %82 = shl i32 %81, 8
  %83 = or i32 %80, %82
  %84 = load i32, i32* @KAL_DURATION_ID, align 4
  %85 = shl i32 %84, 16
  %86 = or i32 %83, %85
  %87 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %86, i32* %87, align 16
  %88 = getelementptr inbounds i32, i32* %19, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 24
  %91 = getelementptr inbounds i32, i32* %19, i64 2
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %92, 16
  %94 = or i32 %90, %93
  %95 = getelementptr inbounds i32, i32* %19, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = or i32 %94, %97
  %99 = getelementptr inbounds i32, i32* %19, i64 0
  %100 = load i32, i32* %99, align 16
  %101 = or i32 %98, %100
  %102 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds i32, i32* %16, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 24
  %106 = getelementptr inbounds i32, i32* %16, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = shl i32 %107, 16
  %109 = or i32 %105, %108
  %110 = getelementptr inbounds i32, i32* %19, i64 5
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = or i32 %109, %112
  %114 = getelementptr inbounds i32, i32* %19, i64 4
  %115 = load i32, i32* %114, align 16
  %116 = or i32 %113, %115
  %117 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds i32, i32* %16, i64 5
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 24
  %121 = getelementptr inbounds i32, i32* %16, i64 4
  %122 = load i32, i32* %121, align 16
  %123 = shl i32 %122, 16
  %124 = or i32 %120, %123
  %125 = getelementptr inbounds i32, i32* %16, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 8
  %128 = or i32 %124, %127
  %129 = getelementptr inbounds i32, i32* %16, i64 2
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %128, %130
  %132 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds i32, i32* %19, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 24
  %136 = getelementptr inbounds i32, i32* %19, i64 2
  %137 = load i32, i32* %136, align 8
  %138 = shl i32 %137, 16
  %139 = or i32 %135, %138
  %140 = getelementptr inbounds i32, i32* %19, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 8
  %143 = or i32 %139, %142
  %144 = getelementptr inbounds i32, i32* %19, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = or i32 %143, %145
  %147 = getelementptr inbounds i32, i32* %23, i64 4
  store i32 %146, i32* %147, align 16
  %148 = getelementptr inbounds i32, i32* %19, i64 5
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 8
  %151 = getelementptr inbounds i32, i32* %19, i64 4
  %152 = load i32, i32* %151, align 16
  %153 = or i32 %150, %152
  %154 = getelementptr inbounds i32, i32* %23, i64 5
  store i32 %153, i32* %154, align 4
  %155 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %156 = call i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %75
  %159 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %160 = call i64 @AR_SREV_9565(%struct.ath_hw* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158, %75
  %163 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %164 = load i32, i32* @AR_WOW_KA_DESC_WORD2, align 4
  %165 = add nsw i32 %164, 48
  %166 = call i32 @REG_WRITE(%struct.ath_hw* %163, i32 %165, i32 0)
  %167 = call i32 @AR_WOW_TXBUF(i32 13)
  store i32 %167, i32* %10, align 4
  br label %170

168:                                              ; preds = %158
  %169 = call i32 @AR_WOW_TXBUF(i32 12)
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %168, %162
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %186, %170
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @KAL_NUM_DATA_WORDS, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %171
  %176 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %9, align 4
  %179 = mul nsw i32 %178, 4
  %180 = add nsw i32 %177, %179
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %23, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @REG_WRITE(%struct.ath_hw* %176, i32 %180, i32 %184)
  br label %186

186:                                              ; preds = %175
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %171

189:                                              ; preds = %171
  %190 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %190)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @AR_WOW_TXBUF(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
