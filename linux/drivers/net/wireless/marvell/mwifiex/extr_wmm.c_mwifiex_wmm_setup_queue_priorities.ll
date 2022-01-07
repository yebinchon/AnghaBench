; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_setup_queue_priorities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_setup_queue_priorities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.ieee_types_wmm_parameter = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"info: WMM Parameter IE: version=%d,\09qos_info Parameter Set Count=%d, Reserved=%#x\0A\00", align 1
@IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK = common dso_local global i32 0, align 4
@MWIFIEX_ECW_MIN = common dso_local global i32 0, align 4
@MWIFIEX_AIFSN = common dso_local global i32 0, align 4
@wmm_aci_to_qidx_map = common dso_local global i32* null, align 8
@MWIFIEX_ACI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"info: WMM: CWmax=%d CWmin=%d Avg Back-off=%d\0A\00", align 1
@MWIFIEX_ECW_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_wmm_setup_queue_priorities(%struct.mwifiex_private* %0, %struct.ieee_types_wmm_parameter* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.ieee_types_wmm_parameter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.ieee_types_wmm_parameter* %1, %struct.ieee_types_wmm_parameter** %4, align 8
  %14 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %4, align 8
  %15 = icmp ne %struct.ieee_types_wmm_parameter* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %18 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %23 = call i32 @mwifiex_wmm_default_queue_priorities(%struct.mwifiex_private* %22)
  br label %218

24:                                               ; preds = %16
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @INFO, align 4
  %29 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %4, align 8
  %30 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %4, align 8
  %33 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %4, align 8
  %38 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mwifiex_dbg(i32 %27, i32 %28, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36, i32 %39)
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %113, %24
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %4, align 8
  %44 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %45)
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %116

48:                                               ; preds = %41
  %49 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %4, align 8
  %50 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %49, i32 0, i32 3
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  %56 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %4, align 8
  %57 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @MWIFIEX_ECW_MIN, align 4
  %65 = and i32 %63, %64
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 1
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @MWIFIEX_AIFSN, align 4
  %72 = and i32 %70, %71
  %73 = add nsw i32 %69, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32*, i32** @wmm_aci_to_qidx_map, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @MWIFIEX_ACI, align 4
  %77 = and i32 %75, %76
  %78 = ashr i32 %77, 5
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %84 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %82, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %92
  store i32 %90, i32* %93, align 4
  %94 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %95 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @INFO, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @MWIFIEX_ECW_MAX, align 4
  %100 = and i32 %98, %99
  %101 = ashr i32 %100, 4
  %102 = shl i32 1, %101
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @mwifiex_dbg(i32 %96, i32 %97, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  %107 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %4, align 8
  %108 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %107, i32 0, i32 3
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %110
  %112 = call i32 @mwifiex_wmm_ac_debug_print(%struct.TYPE_5__* %111)
  br label %113

113:                                              ; preds = %48
  %114 = load i64, i64* %10, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %10, align 8
  br label %41

116:                                              ; preds = %41
  store i64 0, i64* %8, align 8
  br label %117

117:                                              ; preds = %212, %116
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %10, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %215

121:                                              ; preds = %117
  store i64 1, i64* %9, align 8
  br label %122

122:                                              ; preds = %208, %121
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %8, align 8
  %126 = sub i64 %124, %125
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %211

128:                                              ; preds = %122
  %129 = load i64, i64* %9, align 8
  %130 = sub i64 %129, 1
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %128
  %138 = load i64, i64* %9, align 8
  %139 = sub i64 %138, 1
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %9, align 8
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @swap(i32 %141, i32 %144)
  %146 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %147 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = sub i64 %150, 1
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %155 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @swap(i32 %153, i32 %160)
  br label %207

162:                                              ; preds = %128
  %163 = load i64, i64* %9, align 8
  %164 = sub i64 %163, 1
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %166, %169
  br i1 %170, label %171, label %206

171:                                              ; preds = %162
  %172 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %173 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %9, align 8
  %177 = sub i64 %176, 1
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %181 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* %9, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %179, %186
  br i1 %187, label %188, label %205

188:                                              ; preds = %171
  %189 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %190 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* %9, align 8
  %194 = sub i64 %193, 1
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %198 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %9, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @swap(i32 %196, i32 %203)
  br label %205

205:                                              ; preds = %188, %171
  br label %206

206:                                              ; preds = %205, %162
  br label %207

207:                                              ; preds = %206, %137
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %9, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %9, align 8
  br label %122

211:                                              ; preds = %122
  br label %212

212:                                              ; preds = %211
  %213 = load i64, i64* %8, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %8, align 8
  br label %117

215:                                              ; preds = %117
  %216 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %217 = call i32 @mwifiex_wmm_queue_priorities_tid(%struct.mwifiex_private* %216)
  br label %218

218:                                              ; preds = %215, %21
  ret void
}

declare dso_local i32 @mwifiex_wmm_default_queue_priorities(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @mwifiex_wmm_ac_debug_print(%struct.TYPE_5__*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @mwifiex_wmm_queue_priorities_tid(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
