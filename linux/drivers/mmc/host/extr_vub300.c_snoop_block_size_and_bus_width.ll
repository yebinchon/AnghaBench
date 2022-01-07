; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_snoop_block_size_and_bus_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_snoop_block_size_and_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*, i32)* @snoop_block_size_and_bus_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snoop_block_size_and_bus_width(%struct.vub300_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.vub300_mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 -67109376, %5
  %7 = icmp eq i32 %6, -2147343872
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 8
  %11 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 255, %15
  %17 = or i32 %10, %16
  %18 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %17, i32* %21, align 4
  br label %285

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = and i32 -67109376, %23
  %25 = icmp eq i32 %24, -2147344384
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = and i32 255, %27
  %29 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 65280, %33
  %35 = or i32 %28, %34
  %36 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %35, i32* %39, align 4
  br label %284

40:                                               ; preds = %22
  %41 = load i32, i32* %4, align 4
  %42 = and i32 -67109376, %41
  %43 = icmp eq i32 %42, -2147212800
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 %45, 8
  %47 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %48 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 255, %51
  %53 = or i32 %46, %52
  %54 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 %53, i32* %57, align 4
  br label %283

58:                                               ; preds = %40
  %59 = load i32, i32* %4, align 4
  %60 = and i32 -67109376, %59
  %61 = icmp eq i32 %60, -2147213312
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = and i32 255, %63
  %65 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %66 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 65280, %69
  %71 = or i32 %64, %70
  %72 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %73 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %71, i32* %75, align 4
  br label %282

76:                                               ; preds = %58
  %77 = load i32, i32* %4, align 4
  %78 = and i32 -67109376, %77
  %79 = icmp eq i32 %78, -2147081728
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  %82 = shl i32 %81, 8
  %83 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %84 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 255, %87
  %89 = or i32 %82, %88
  %90 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %91 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32 %89, i32* %93, align 4
  br label %281

94:                                               ; preds = %76
  %95 = load i32, i32* %4, align 4
  %96 = and i32 -67109376, %95
  %97 = icmp eq i32 %96, -2147082240
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load i32, i32* %4, align 4
  %100 = and i32 255, %99
  %101 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %102 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = and i32 65280, %105
  %107 = or i32 %100, %106
  %108 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %109 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  store i32 %107, i32* %111, align 4
  br label %280

112:                                              ; preds = %94
  %113 = load i32, i32* %4, align 4
  %114 = and i32 -67109376, %113
  %115 = icmp eq i32 %114, -2146950656
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  %117 = load i32, i32* %4, align 4
  %118 = shl i32 %117, 8
  %119 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %120 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = and i32 255, %123
  %125 = or i32 %118, %124
  %126 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %127 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  store i32 %125, i32* %129, align 4
  br label %279

130:                                              ; preds = %112
  %131 = load i32, i32* %4, align 4
  %132 = and i32 -67109376, %131
  %133 = icmp eq i32 %132, -2146951168
  br i1 %133, label %134, label %148

134:                                              ; preds = %130
  %135 = load i32, i32* %4, align 4
  %136 = and i32 255, %135
  %137 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %138 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = load i32, i32* %140, align 4
  %142 = and i32 65280, %141
  %143 = or i32 %136, %142
  %144 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %145 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 4
  store i32 %143, i32* %147, align 4
  br label %278

148:                                              ; preds = %130
  %149 = load i32, i32* %4, align 4
  %150 = and i32 -67109376, %149
  %151 = icmp eq i32 %150, -2146819584
  br i1 %151, label %152, label %166

152:                                              ; preds = %148
  %153 = load i32, i32* %4, align 4
  %154 = shl i32 %153, 8
  %155 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %156 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 5
  %159 = load i32, i32* %158, align 4
  %160 = and i32 255, %159
  %161 = or i32 %154, %160
  %162 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %163 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 5
  store i32 %161, i32* %165, align 4
  br label %277

166:                                              ; preds = %148
  %167 = load i32, i32* %4, align 4
  %168 = and i32 -67109376, %167
  %169 = icmp eq i32 %168, -2146820096
  br i1 %169, label %170, label %184

170:                                              ; preds = %166
  %171 = load i32, i32* %4, align 4
  %172 = and i32 255, %171
  %173 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %174 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 5
  %177 = load i32, i32* %176, align 4
  %178 = and i32 65280, %177
  %179 = or i32 %172, %178
  %180 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %181 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 5
  store i32 %179, i32* %183, align 4
  br label %276

184:                                              ; preds = %166
  %185 = load i32, i32* %4, align 4
  %186 = and i32 -67109376, %185
  %187 = icmp eq i32 %186, -2146688512
  br i1 %187, label %188, label %202

188:                                              ; preds = %184
  %189 = load i32, i32* %4, align 4
  %190 = shl i32 %189, 8
  %191 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %192 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 6
  %195 = load i32, i32* %194, align 4
  %196 = and i32 255, %195
  %197 = or i32 %190, %196
  %198 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %199 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 6
  store i32 %197, i32* %201, align 4
  br label %275

202:                                              ; preds = %184
  %203 = load i32, i32* %4, align 4
  %204 = and i32 -67109376, %203
  %205 = icmp eq i32 %204, -2146689024
  br i1 %205, label %206, label %220

206:                                              ; preds = %202
  %207 = load i32, i32* %4, align 4
  %208 = and i32 255, %207
  %209 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %210 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 6
  %213 = load i32, i32* %212, align 4
  %214 = and i32 65280, %213
  %215 = or i32 %208, %214
  %216 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %217 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 6
  store i32 %215, i32* %219, align 4
  br label %274

220:                                              ; preds = %202
  %221 = load i32, i32* %4, align 4
  %222 = and i32 -67109376, %221
  %223 = icmp eq i32 %222, -2146557440
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = load i32, i32* %4, align 4
  %226 = shl i32 %225, 8
  %227 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %228 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 7
  %231 = load i32, i32* %230, align 4
  %232 = and i32 255, %231
  %233 = or i32 %226, %232
  %234 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %235 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 7
  store i32 %233, i32* %237, align 4
  br label %273

238:                                              ; preds = %220
  %239 = load i32, i32* %4, align 4
  %240 = and i32 -67109376, %239
  %241 = icmp eq i32 %240, -2146557952
  br i1 %241, label %242, label %256

242:                                              ; preds = %238
  %243 = load i32, i32* %4, align 4
  %244 = and i32 255, %243
  %245 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %246 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 7
  %249 = load i32, i32* %248, align 4
  %250 = and i32 65280, %249
  %251 = or i32 %244, %250
  %252 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %253 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 7
  store i32 %251, i32* %255, align 4
  br label %272

256:                                              ; preds = %238
  %257 = load i32, i32* %4, align 4
  %258 = and i32 -67109373, %257
  %259 = icmp eq i32 %258, -2147480064
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %262 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %261, i32 0, i32 1
  store i32 1, i32* %262, align 8
  br label %271

263:                                              ; preds = %256
  %264 = load i32, i32* %4, align 4
  %265 = and i32 -67109373, %264
  %266 = icmp eq i32 %265, -2147480062
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %269 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %268, i32 0, i32 1
  store i32 4, i32* %269, align 8
  br label %270

270:                                              ; preds = %267, %263
  br label %271

271:                                              ; preds = %270, %260
  br label %272

272:                                              ; preds = %271, %242
  br label %273

273:                                              ; preds = %272, %224
  br label %274

274:                                              ; preds = %273, %206
  br label %275

275:                                              ; preds = %274, %188
  br label %276

276:                                              ; preds = %275, %170
  br label %277

277:                                              ; preds = %276, %152
  br label %278

278:                                              ; preds = %277, %134
  br label %279

279:                                              ; preds = %278, %116
  br label %280

280:                                              ; preds = %279, %98
  br label %281

281:                                              ; preds = %280, %80
  br label %282

282:                                              ; preds = %281, %62
  br label %283

283:                                              ; preds = %282, %44
  br label %284

284:                                              ; preds = %283, %26
  br label %285

285:                                              ; preds = %284, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
