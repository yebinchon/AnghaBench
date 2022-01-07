; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_set_weight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_set_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_btcoex_hw }
%struct.ath_btcoex_hw = type { i32*, i32, i32*, i32*, %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i32 }

@__const.ath9k_hw_btcoex_set_weight.txprio_shift = private unnamed_addr constant [4 x i32] [i32 24, i32 16, i32 16, i32 0], align 16
@ar9003_wlan_weights = common dso_local global i32** null, align 8
@AR_BTCOEX_BT_WGHT = common dso_local global i32 0, align 4
@AR_BTCOEX_WL_WGHT = common dso_local global i32 0, align 4
@ATH_BTCOEX_STOMP_LOW = common dso_local global i32 0, align 4
@ATH_BTCOEX_STOMP_LOW_FTP = common dso_local global i32 0, align 4
@mci_wlan_weights = common dso_local global i32** null, align 8
@AR9300_NUM_WLAN_WEIGHTS = common dso_local global i32 0, align 4
@AR9300_BT_WGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_btcoex_set_weight(%struct.ath_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_btcoex_hw*, align 8
  %10 = alloca %struct.ath9k_hw_mci*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  store %struct.ath_btcoex_hw* %17, %struct.ath_btcoex_hw** %9, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %19, i32 0, i32 4
  store %struct.ath9k_hw_mci* %20, %struct.ath9k_hw_mci** %10, align 8
  %21 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([4 x i32]* @__const.ath9k_hw_btcoex_set_weight.txprio_shift to i8*), i64 16, i1 false)
  %22 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %10, align 8
  %23 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %9, align 8
  %28 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %26, %4
  %36 = phi i1 [ false, %4 ], [ %34, %26 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i32**, i32*** @ar9003_wlan_weights, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %13, align 8
  %43 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %44 = call i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @AR_BTCOEX_BT_WGHT, align 4
  %49 = call i32 @SM(i32 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AR_BTCOEX_WL_WGHT, align 4
  %52 = call i32 @SM(i32 %50, i32 %51)
  %53 = or i32 %49, %52
  %54 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %9, align 8
  %55 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %197

56:                                               ; preds = %35
  %57 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %58 = call i64 @AR_SREV_9462(%struct.ath_hw* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %62 = call i64 @AR_SREV_9565(%struct.ath_hw* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @ATH_BTCOEX_STOMP_LOW, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %9, align 8
  %70 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @ATH_BTCOEX_STOMP_LOW_FTP, align 4
  br label %78

76:                                               ; preds = %68, %64
  %77 = load i32, i32* %8, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %15, align 4
  %80 = load i32**, i32*** @mci_wlan_weights, align 8
  %81 = load i32, i32* %15, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %13, align 8
  br label %85

85:                                               ; preds = %78, %60
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %152, %85
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @AR9300_NUM_WLAN_WEIGHTS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %155

90:                                               ; preds = %86
  %91 = load i32, i32* @AR9300_BT_WGHT, align 4
  %92 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %9, align 8
  %93 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %9, align 8
  %104 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %90
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %151

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 255, %119
  %121 = xor i32 %120, -1
  %122 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %9, align 8
  %123 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %121
  store i32 %129, i32* %127, align 4
  %130 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %9, align 8
  %131 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %136, %141
  %143 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %9, align 8
  %144 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %142
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %114, %111, %90
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %86

155:                                              ; preds = %86
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %197

158:                                              ; preds = %155
  %159 = load i32, i32* %14, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 255, %163
  %165 = xor i32 %164, -1
  %166 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %9, align 8
  %167 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %165
  store i32 %174, i32* %172, align 4
  %175 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %9, align 8
  %176 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %14, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %181, %186
  %188 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %9, align 8
  %189 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %187
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %46, %158, %155
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #2

declare dso_local i32 @SM(i32, i32) #2

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #2

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
