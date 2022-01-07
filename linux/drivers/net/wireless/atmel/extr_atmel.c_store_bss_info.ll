; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_store_bss_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_store_bss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.ieee80211_hdr = type { i64*, i64* }

@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@MAX_BSS_ENTRIES = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@SHORT_PREAMBLE = common dso_local global i32 0, align 4
@LONG_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, %struct.ieee80211_hdr*, i32, i32, i64, i64, i64, i64*, i32)* @store_bss_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_bss_info(%struct.atmel_private* %0, %struct.ieee80211_hdr* %1, i32 %2, i32 %3, i64 %4, i64 %5, i64 %6, i64* %7, i32 %8) #0 {
  %10 = alloca %struct.atmel_private*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %10, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64* %7, i64** %17, align 8
  store i32 %8, i32* %18, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %9
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  br label %34

30:                                               ; preds = %9
  %31 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i64* [ %29, %26 ], [ %33, %30 ]
  store i64* %35, i64** %19, align 8
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %36

36:                                               ; preds = %58, %34
  %37 = load i32, i32* %20, align 4
  %38 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %39 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load i64*, i64** %19, align 8
  %44 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %45 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %20, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @ETH_ALEN, align 8
  %53 = call i64 @memcmp(i64* %43, i32 %51, i64 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %20, align 4
  store i32 %56, i32* %21, align 4
  br label %57

57:                                               ; preds = %55, %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load i32, i32* %21, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  %65 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %66 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MAX_BSS_ENTRIES, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %212

71:                                               ; preds = %64
  %72 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %73 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  store i32 %74, i32* %21, align 4
  %76 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %77 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = load i64*, i64** %19, align 8
  %85 = load i64, i64* @ETH_ALEN, align 8
  %86 = call i32 @memcpy(i32 %83, i64* %84, i64 %85)
  %87 = load i64, i64* %15, align 8
  %88 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %89 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %21, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i64 %87, i64* %94, align 8
  br label %120

95:                                               ; preds = %61
  %96 = load i64, i64* %15, align 8
  %97 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %98 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %21, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %96, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %95
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %109 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %21, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i64 %107, i64* %114, align 8
  br label %115

115:                                              ; preds = %106, %95
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %212

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119, %71
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %123 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %21, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 7
  store i64 %121, i64* %128, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %131 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %21, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i32 %129, i32* %136, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %139 = and i32 %137, %138
  %140 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %141 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %21, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  store i32 %139, i32* %146, align 4
  %147 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %148 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %21, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = load i64*, i64** %17, align 8
  %156 = load i64, i64* %16, align 8
  %157 = call i32 @memcpy(i32 %154, i64* %155, i64 %156)
  %158 = load i64, i64* %16, align 8
  %159 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %160 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %21, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 5
  store i64 %158, i64* %165, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %120
  %171 = load i32, i32* @IW_MODE_ADHOC, align 4
  %172 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %173 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 4
  store i32 %171, i32* %178, align 4
  br label %194

179:                                              ; preds = %120
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = load i32, i32* @IW_MODE_INFRA, align 4
  %186 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %187 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %186, i32 0, i32 1
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = load i32, i32* %21, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 4
  store i32 %185, i32* %192, align 4
  br label %193

193:                                              ; preds = %184, %179
  br label %194

194:                                              ; preds = %193, %170
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i32, i32* @SHORT_PREAMBLE, align 4
  br label %203

201:                                              ; preds = %194
  %202 = load i32, i32* @LONG_PREAMBLE, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  %205 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %206 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %205, i32 0, i32 1
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = load i32, i32* %21, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 3
  store i32 %204, i32* %211, align 8
  br label %212

212:                                              ; preds = %203, %118, %70
  ret void
}

declare dso_local i64 @memcmp(i64*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
