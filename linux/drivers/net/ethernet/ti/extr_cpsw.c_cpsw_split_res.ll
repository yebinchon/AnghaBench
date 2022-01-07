; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_split_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_split_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_common = type { i32, i32, i32, %struct.TYPE_2__*, %struct.cpsw_vector* }
%struct.TYPE_2__ = type { i32 }
%struct.cpsw_vector = type { i32, i32 }

@CPSW_POLL_WEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_split_res(%struct.cpsw_common* %0) #0 {
  %2 = alloca %struct.cpsw_common*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpsw_vector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cpsw_common* %0, %struct.cpsw_common** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %14 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %15 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %14, i32 0, i32 4
  %16 = load %struct.cpsw_vector*, %struct.cpsw_vector** %15, align 8
  store %struct.cpsw_vector* %16, %struct.cpsw_vector** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %40, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %20 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.cpsw_vector*, %struct.cpsw_vector** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %24, i64 %26
  %28 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpdma_chan_get_rate(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %40

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %33
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %17

43:                                               ; preds = %17
  %44 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %45 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* %12, align 4
  br label %104

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @CPSW_POLL_WEIGHT, align 4
  %56 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %57 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %55, %58
  store i32 %59, i32* %13, align 4
  store i32 0, i32* %4, align 4
  %60 = load i32, i32* %3, align 4
  store i32 %60, i32* %12, align 4
  br label %103

61:                                               ; preds = %51
  %62 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %63 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 1000
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %70, 10
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %69, %61
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 %77, 10
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @CPSW_POLL_WEIGHT, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %12, align 4
  %84 = sdiv i32 %82, %83
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* @CPSW_POLL_WEIGHT, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %89 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sdiv i32 %87, %92
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %3, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %98 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sdiv i32 %96, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %79, %54
  br label %104

104:                                              ; preds = %103, %49
  %105 = load i32, i32* @CPSW_POLL_WEIGHT, align 4
  store i32 %105, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %206, %104
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %109 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %209

112:                                              ; preds = %106
  %113 = load %struct.cpsw_vector*, %struct.cpsw_vector** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %113, i64 %115
  %117 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @cpdma_chan_get_rate(i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %176

122:                                              ; preds = %112
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @CPSW_POLL_WEIGHT, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %12, align 4
  %127 = sdiv i32 %125, %126
  %128 = load %struct.cpsw_vector*, %struct.cpsw_vector** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %128, i64 %130
  %132 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %131, i32 0, i32 0
  store i32 %127, i32* %132, align 4
  %133 = load %struct.cpsw_vector*, %struct.cpsw_vector** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %133, i64 %135
  %137 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %122
  %141 = load %struct.cpsw_vector*, %struct.cpsw_vector** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %141, i64 %143
  %145 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %140, %122
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %152, %148
  %156 = load i32, i32* %11, align 4
  %157 = mul nsw i32 %156, 100
  %158 = load i32, i32* %12, align 4
  %159 = sdiv i32 %157, %158
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %162, %155
  %166 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %167 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %166, i32 0, i32 4
  %168 = load %struct.cpsw_vector*, %struct.cpsw_vector** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %168, i64 %170
  %172 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @cpdma_chan_set_weight(i32 %173, i32 %174)
  br label %197

176:                                              ; preds = %112
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.cpsw_vector*, %struct.cpsw_vector** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %178, i64 %180
  %182 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %181, i32 0, i32 0
  store i32 %177, i32* %182, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %185, %176
  %188 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %189 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %188, i32 0, i32 4
  %190 = load %struct.cpsw_vector*, %struct.cpsw_vector** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %190, i64 %192
  %194 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @cpdma_chan_set_weight(i32 %195, i32 0)
  br label %197

197:                                              ; preds = %187, %165
  %198 = load %struct.cpsw_vector*, %struct.cpsw_vector** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %198, i64 %200
  %202 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %9, align 4
  %205 = sub nsw i32 %204, %203
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %197
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %106

209:                                              ; preds = %106
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %209
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.cpsw_vector*, %struct.cpsw_vector** %5, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %214, i64 %216
  %218 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, %213
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %212, %209
  %222 = load i32, i32* @CPSW_POLL_WEIGHT, align 4
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %225 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = sdiv i32 %223, %226
  store i32 %227, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %246, %221
  %229 = load i32, i32* %6, align 4
  %230 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %231 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %249

234:                                              ; preds = %228
  %235 = load i32, i32* %13, align 4
  %236 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %237 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %236, i32 0, i32 3
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  store i32 %235, i32* %242, align 4
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %9, align 4
  %245 = sub nsw i32 %244, %243
  store i32 %245, i32* %9, align 4
  br label %246

246:                                              ; preds = %234
  %247 = load i32, i32* %6, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %6, align 4
  br label %228

249:                                              ; preds = %228
  %250 = load i32, i32* %9, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %249
  %253 = load i32, i32* %9, align 4
  %254 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %255 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %254, i32 0, i32 3
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, %253
  store i32 %260, i32* %258, align 4
  br label %261

261:                                              ; preds = %252, %249
  ret void
}

declare dso_local i32 @cpdma_chan_get_rate(i32) #1

declare dso_local i32 @cpdma_chan_set_weight(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
