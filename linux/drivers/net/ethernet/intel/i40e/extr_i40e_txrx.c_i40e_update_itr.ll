; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_update_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_update_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_q_vector = type { %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.i40e_ring_container = type { i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@I40E_ITR_ADAPTIVE_MIN_USECS = common dso_local global i32 0, align 4
@I40E_ITR_ADAPTIVE_LATENCY = common dso_local global i32 0, align 4
@I40E_ITR_ADAPTIVE_MAX_USECS = common dso_local global i32 0, align 4
@I40E_ITR_MASK = common dso_local global i32 0, align 4
@I40E_ITR_ADAPTIVE_MIN_INC = common dso_local global i32 0, align 4
@I40E_ITR_ADAPTIVE_BULK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_q_vector*, %struct.i40e_ring_container*)* @i40e_update_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_update_itr(%struct.i40e_q_vector* %0, %struct.i40e_ring_container* %1) #0 {
  %3 = alloca %struct.i40e_q_vector*, align 8
  %4 = alloca %struct.i40e_ring_container*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.i40e_q_vector* %0, %struct.i40e_q_vector** %3, align 8
  store %struct.i40e_ring_container* %1, %struct.i40e_ring_container** %4, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %9, align 8
  %11 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %17 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ITR_IS_DYNAMIC(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15, %2
  br label %250

24:                                               ; preds = %15
  %25 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %3, align 8
  %26 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %27 = call i64 @i40e_container_is_rx(%struct.i40e_q_vector* %25, %struct.i40e_ring_container* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @I40E_ITR_ADAPTIVE_MIN_USECS, align 4
  %31 = load i32, i32* @I40E_ITR_ADAPTIVE_LATENCY, align 4
  %32 = or i32 %30, %31
  br label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @I40E_ITR_ADAPTIVE_MAX_USECS, align 4
  %35 = load i32, i32* @I40E_ITR_ADAPTIVE_LATENCY, align 4
  %36 = or i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  store i32 %38, i32* %8, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %41 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @time_after(i64 %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %238

46:                                               ; preds = %37
  %47 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %3, align 8
  %48 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %53 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %8, align 4
  br label %238

55:                                               ; preds = %46
  %56 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %57 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  %59 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %60 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %7, align 4
  %62 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %3, align 8
  %63 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %64 = call i64 @i40e_container_is_rx(%struct.i40e_q_vector* %62, %struct.i40e_ring_container* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %55
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp ult i32 %70, 4
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = icmp ult i32 %73, 9000
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %3, align 8
  %77 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @I40E_ITR_ADAPTIVE_LATENCY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @I40E_ITR_ADAPTIVE_LATENCY, align 4
  store i32 %84, i32* %8, align 4
  br label %173

85:                                               ; preds = %75, %72, %69, %66
  br label %118

86:                                               ; preds = %55
  %87 = load i32, i32* %6, align 4
  %88 = icmp ult i32 %87, 4
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %91 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @I40E_ITR_ADAPTIVE_MAX_USECS, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %3, align 8
  %97 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @I40E_ITR_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @I40E_ITR_ADAPTIVE_MAX_USECS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %238

105:                                              ; preds = %95, %89
  br label %117

106:                                              ; preds = %86
  %107 = load i32, i32* %6, align 4
  %108 = icmp ugt i32 %107, 32
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32, i32* @I40E_ITR_ADAPTIVE_LATENCY, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %113 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %109, %106
  br label %117

117:                                              ; preds = %116, %105
  br label %118

118:                                              ; preds = %117, %85
  %119 = load i32, i32* %6, align 4
  %120 = icmp ult i32 %119, 56
  br i1 %120, label %121, label %140

121:                                              ; preds = %118
  %122 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %123 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @I40E_ITR_ADAPTIVE_MIN_INC, align 4
  %126 = add i32 %124, %125
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @I40E_ITR_MASK, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @I40E_ITR_ADAPTIVE_MAX_USECS, align 4
  %131 = icmp ugt i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %121
  %133 = load i32, i32* @I40E_ITR_ADAPTIVE_LATENCY, align 4
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* @I40E_ITR_ADAPTIVE_MAX_USECS, align 4
  %137 = load i32, i32* %8, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %132, %121
  br label %238

140:                                              ; preds = %118
  %141 = load i32, i32* %6, align 4
  %142 = icmp ule i32 %141, 256
  br i1 %142, label %143, label %171

143:                                              ; preds = %140
  %144 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %3, align 8
  %145 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %3, align 8
  %149 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @min(i32 %147, i32 %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* @I40E_ITR_MASK, align 4
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ule i32 %156, 112
  br i1 %157, label %158, label %159

158:                                              ; preds = %143
  br label %238

159:                                              ; preds = %143
  %160 = load i32, i32* %8, align 4
  %161 = udiv i32 %160, 2
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* @I40E_ITR_MASK, align 4
  %163 = load i32, i32* %8, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @I40E_ITR_ADAPTIVE_MIN_USECS, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %159
  %169 = load i32, i32* @I40E_ITR_ADAPTIVE_MIN_USECS, align 4
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %168, %159
  br label %238

171:                                              ; preds = %140
  %172 = load i32, i32* @I40E_ITR_ADAPTIVE_BULK, align 4
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %171, %83
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %6, align 4
  %176 = udiv i32 %174, %175
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ule i32 %177, 60
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store i32 4096, i32* %5, align 4
  br label %208

180:                                              ; preds = %173
  %181 = load i32, i32* %5, align 4
  %182 = icmp ule i32 %181, 380
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i32, i32* %5, align 4
  %185 = mul i32 %184, 40
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = add i32 %186, 1696
  store i32 %187, i32* %5, align 4
  br label %207

188:                                              ; preds = %180
  %189 = load i32, i32* %5, align 4
  %190 = icmp ule i32 %189, 1084
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load i32, i32* %5, align 4
  %193 = mul i32 %192, 15
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = add i32 %194, 11452
  store i32 %195, i32* %5, align 4
  br label %206

196:                                              ; preds = %188
  %197 = load i32, i32* %5, align 4
  %198 = icmp ule i32 %197, 1980
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load i32, i32* %5, align 4
  %201 = mul i32 %200, 5
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %5, align 4
  %203 = add i32 %202, 22420
  store i32 %203, i32* %5, align 4
  br label %205

204:                                              ; preds = %196
  store i32 32256, i32* %5, align 4
  br label %205

205:                                              ; preds = %204, %199
  br label %206

206:                                              ; preds = %205, %191
  br label %207

207:                                              ; preds = %206, %183
  br label %208

208:                                              ; preds = %207, %179
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @I40E_ITR_ADAPTIVE_LATENCY, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load i32, i32* %5, align 4
  %215 = udiv i32 %214, 2
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %213, %208
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %3, align 8
  %219 = call i32 @i40e_itr_divisor(%struct.i40e_q_vector* %218)
  %220 = call i32 @DIV_ROUND_UP(i32 %217, i32 %219)
  %221 = load i32, i32* @I40E_ITR_ADAPTIVE_MIN_INC, align 4
  %222 = mul i32 %220, %221
  %223 = load i32, i32* %8, align 4
  %224 = add i32 %223, %222
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @I40E_ITR_MASK, align 4
  %227 = and i32 %225, %226
  %228 = load i32, i32* @I40E_ITR_ADAPTIVE_MAX_USECS, align 4
  %229 = icmp ugt i32 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %216
  %231 = load i32, i32* @I40E_ITR_ADAPTIVE_LATENCY, align 4
  %232 = load i32, i32* %8, align 4
  %233 = and i32 %232, %231
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* @I40E_ITR_ADAPTIVE_MAX_USECS, align 4
  %235 = load i32, i32* %8, align 4
  %236 = add i32 %235, %234
  store i32 %236, i32* %8, align 4
  br label %237

237:                                              ; preds = %230, %216
  br label %238

238:                                              ; preds = %237, %170, %158, %139, %104, %51, %45
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %241 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 8
  %242 = load i64, i64* %9, align 8
  %243 = add i64 %242, 1
  %244 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %245 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %244, i32 0, i32 0
  store i64 %243, i64* %245, align 8
  %246 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %247 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %246, i32 0, i32 3
  store i32 0, i32* %247, align 8
  %248 = load %struct.i40e_ring_container*, %struct.i40e_ring_container** %4, align 8
  %249 = getelementptr inbounds %struct.i40e_ring_container, %struct.i40e_ring_container* %248, i32 0, i32 2
  store i32 0, i32* %249, align 4
  br label %250

250:                                              ; preds = %238, %23
  ret void
}

declare dso_local i32 @ITR_IS_DYNAMIC(i32) #1

declare dso_local i64 @i40e_container_is_rx(%struct.i40e_q_vector*, %struct.i40e_ring_container*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @i40e_itr_divisor(%struct.i40e_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
