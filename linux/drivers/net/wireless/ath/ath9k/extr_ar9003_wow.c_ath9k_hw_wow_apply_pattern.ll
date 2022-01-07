; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_wow.c_ath9k_hw_wow_apply_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_wow.c_ath9k_hw_wow_apply_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@MAX_NUM_PATTERN_LEGACY = common dso_local global i32 0, align 4
@AR_WOW_PATTERN = common dso_local global i32 0, align 4
@AR_MAC_PCU_WOW4 = common dso_local global i32 0, align 4
@MAX_PATTERN_SIZE = common dso_local global i32 0, align 4
@MAX_PATTERN_MASK_SIZE = common dso_local global i32 0, align 4
@AR_WOW_PAT_FOUND_SHIFT = common dso_local global i32 0, align 4
@AR_WOW_LENGTH_MAX = common dso_local global i32 0, align 4
@AR_WOW_LENGTH1 = common dso_local global i32 0, align 4
@AR_WOW_LENGTH2 = common dso_local global i32 0, align 4
@AR_WOW_LENGTH3 = common dso_local global i32 0, align 4
@MAX_NUM_PATTERN = common dso_local global i32 0, align 4
@AR_WOW_LENGTH4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_wow_apply_pattern(%struct.ath_hw* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %183

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @MAX_NUM_PATTERN_LEGACY, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %32 = load i32, i32* @AR_WOW_PATTERN, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = call i32 @REG_SET_BIT(%struct.ath_hw* %31, i32 %32, i32 %34)
  br label %43

36:                                               ; preds = %26
  %37 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %38 = load i32, i32* @AR_MAC_PCU_WOW4, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 8
  %41 = call i32 @BIT(i32 %40)
  %42 = call i32 @REG_SET_BIT(%struct.ath_hw* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %30
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @MAX_PATTERN_SIZE, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @memcpy(i32* %13, i32* %49, i32 4)
  %51 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @AR_WOW_TB_PATTERN(i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @REG_WRITE(%struct.ath_hw* %51, i64 %56, i32 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32* %60, i32** %8, align 8
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 4
  store i32 %63, i32* %12, align 4
  br label %44

64:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %82, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @MAX_PATTERN_MASK_SIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @memcpy(i32* %14, i32* %70, i32 4)
  %72 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @AR_WOW_TB_MASK(i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @REG_WRITE(%struct.ath_hw* %72, i64 %77, i32 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  store i32* %81, i32** %9, align 8
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 4
  store i32 %84, i32* %12, align 4
  br label %65

85:                                               ; preds = %65
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @MAX_NUM_PATTERN_LEGACY, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @AR_WOW_PAT_FOUND_SHIFT, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @BIT(i32 %92)
  %94 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %95 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  br label %110

99:                                               ; preds = %85
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 8
  %102 = load i32, i32* @AR_WOW_PAT_FOUND_SHIFT, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @BIT(i32 %103)
  %105 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %106 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %104
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %99, %89
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @AR_WOW_LENGTH_MAX, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @AR_WOW_LEN1_SHIFT(i32 %117)
  %119 = shl i32 %116, %118
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @AR_WOW_LENGTH1_MASK(i32 %120)
  store i32 %121, i32* %16, align 4
  %122 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %123 = load i32, i32* @AR_WOW_LENGTH1, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @REG_RMW(%struct.ath_hw* %122, i32 %123, i32 %124, i32 %125)
  br label %182

127:                                              ; preds = %110
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %128, 8
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @AR_WOW_LENGTH_MAX, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @AR_WOW_LEN2_SHIFT(i32 %134)
  %136 = shl i32 %133, %135
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @AR_WOW_LENGTH2_MASK(i32 %137)
  store i32 %138, i32* %16, align 4
  %139 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %140 = load i32, i32* @AR_WOW_LENGTH2, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %16, align 4
  %143 = call i32 @REG_RMW(%struct.ath_hw* %139, i32 %140, i32 %141, i32 %142)
  br label %181

144:                                              ; preds = %127
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %145, 12
  br i1 %146, label %147, label %161

147:                                              ; preds = %144
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @AR_WOW_LENGTH_MAX, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @AR_WOW_LEN3_SHIFT(i32 %151)
  %153 = shl i32 %150, %152
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @AR_WOW_LENGTH3_MASK(i32 %154)
  store i32 %155, i32* %16, align 4
  %156 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %157 = load i32, i32* @AR_WOW_LENGTH3, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @REG_RMW(%struct.ath_hw* %156, i32 %157, i32 %158, i32 %159)
  br label %180

161:                                              ; preds = %144
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @MAX_NUM_PATTERN, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %161
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @AR_WOW_LENGTH_MAX, align 4
  %168 = and i32 %166, %167
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @AR_WOW_LEN4_SHIFT(i32 %169)
  %171 = shl i32 %168, %170
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @AR_WOW_LENGTH4_MASK(i32 %172)
  store i32 %173, i32* %16, align 4
  %174 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %175 = load i32, i32* @AR_WOW_LENGTH4, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %16, align 4
  %178 = call i32 @REG_RMW(%struct.ath_hw* %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %165, %161
  br label %180

180:                                              ; preds = %179, %147
  br label %181

181:                                              ; preds = %180, %130
  br label %182

182:                                              ; preds = %181, %113
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %182, %23
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i32) #1

declare dso_local i64 @AR_WOW_TB_PATTERN(i32) #1

declare dso_local i64 @AR_WOW_TB_MASK(i32) #1

declare dso_local i32 @AR_WOW_LEN1_SHIFT(i32) #1

declare dso_local i32 @AR_WOW_LENGTH1_MASK(i32) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @AR_WOW_LEN2_SHIFT(i32) #1

declare dso_local i32 @AR_WOW_LENGTH2_MASK(i32) #1

declare dso_local i32 @AR_WOW_LEN3_SHIFT(i32) #1

declare dso_local i32 @AR_WOW_LENGTH3_MASK(i32) #1

declare dso_local i32 @AR_WOW_LEN4_SHIFT(i32) #1

declare dso_local i32 @AR_WOW_LENGTH4_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
