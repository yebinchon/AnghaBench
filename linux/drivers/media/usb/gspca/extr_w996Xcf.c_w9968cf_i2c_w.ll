; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_i2c_w.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_i2c_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.gspca_dev = type { i32 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"i2c 0x%02x -> [0x%02x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32, i32)* @w9968cf_i2c_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_i2c_w(%struct.sd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gspca_dev*, align 8
  %8 = alloca i32*, align 8
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sd*, %struct.sd** %4, align 8
  %10 = bitcast %struct.sd* %9 to %struct.gspca_dev*
  store %struct.gspca_dev* %10, %struct.gspca_dev** %7, align 8
  %11 = load %struct.sd*, %struct.sd** %4, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %8, align 8
  %16 = load %struct.sd*, %struct.sd** %4, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 5376, i32 0
  %23 = or i32 2095, %22
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 64
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 16384, i32 0
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.sd*, %struct.sd** %4, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 64
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 5, i32 0
  %44 = or i32 8322, %43
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sd*, %struct.sd** %4, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 32
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 336, i32 0
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.sd*, %struct.sd** %4, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 16
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 21504, i32 0
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.sd*, %struct.sd** %4, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 8
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 21, i32 0
  %76 = or i32 33288, %75
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.sd*, %struct.sd** %4, align 8
  %80 = getelementptr inbounds %struct.sd, %struct.sd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1344, i32 0
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.sd*, %struct.sd** %4, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 2
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 20480, i32 0
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.sd*, %struct.sd** %4, align 8
  %102 = getelementptr inbounds %struct.sd, %struct.sd* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 2
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  %108 = or i32 7456, %107
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.sd*, %struct.sd** %4, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 84, i32 0
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.sd*, %struct.sd** %4, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @w9968cf_write_fsb(%struct.sd* %122, i32* %123)
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, 128
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 21, i32 0
  %130 = or i32 33288, %129
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, 64
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1344, i32 0
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %5, align 4
  %143 = and i32 %142, 32
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 20480, i32 0
  %147 = load i32*, i32** %8, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* %5, align 4
  %152 = and i32 %151, 32
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1, i32 0
  %156 = or i32 2080, %155
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %5, align 4
  %160 = and i32 %159, 16
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 84, i32 0
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %5, align 4
  %169 = and i32 %168, 8
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 5376, i32 0
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* %5, align 4
  %178 = and i32 %177, 4
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 16384, i32 0
  %182 = load i32*, i32** %8, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* %5, align 4
  %187 = and i32 %186, 4
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 5, i32 0
  %191 = or i32 8322, %190
  %192 = load i32*, i32** %8, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %5, align 4
  %195 = and i32 %194, 2
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 336, i32 0
  %199 = load i32*, i32** %8, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  %203 = load i32, i32* %5, align 4
  %204 = and i32 %203, 1
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 21504, i32 0
  %208 = load i32*, i32** %8, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  %212 = load i32*, i32** %8, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 3
  store i32 29, i32* %213, align 4
  %214 = load %struct.sd*, %struct.sd** %4, align 8
  %215 = load i32*, i32** %8, align 8
  %216 = call i32 @w9968cf_write_fsb(%struct.sd* %214, i32* %215)
  %217 = load i32, i32* %6, align 4
  %218 = and i32 %217, 128
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 21, i32 0
  %222 = or i32 33288, %221
  %223 = load i32*, i32** %8, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %6, align 4
  %226 = and i32 %225, 64
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 1344, i32 0
  %230 = load i32*, i32** %8, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* %6, align 4
  %235 = and i32 %234, 32
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i32 20480, i32 0
  %239 = load i32*, i32** %8, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load i32, i32* %6, align 4
  %244 = and i32 %243, 32
  %245 = icmp ne i32 %244, 0
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i32 1, i32 0
  %248 = or i32 2080, %247
  %249 = load i32*, i32** %8, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  store i32 %248, i32* %250, align 4
  %251 = load i32, i32* %6, align 4
  %252 = and i32 %251, 16
  %253 = icmp ne i32 %252, 0
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i32 84, i32 0
  %256 = load i32*, i32** %8, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  %260 = load i32, i32* %6, align 4
  %261 = and i32 %260, 8
  %262 = icmp ne i32 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i32 5376, i32 0
  %265 = load i32*, i32** %8, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load i32, i32* %6, align 4
  %270 = and i32 %269, 4
  %271 = icmp ne i32 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 16384, i32 0
  %274 = load i32*, i32** %8, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  %278 = load i32, i32* %6, align 4
  %279 = and i32 %278, 4
  %280 = icmp ne i32 %279, 0
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i32 5, i32 0
  %283 = or i32 8322, %282
  %284 = load i32*, i32** %8, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 2
  store i32 %283, i32* %285, align 4
  %286 = load i32, i32* %6, align 4
  %287 = and i32 %286, 2
  %288 = icmp ne i32 %287, 0
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i32 336, i32 0
  %291 = load i32*, i32** %8, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 4
  %295 = load i32, i32* %6, align 4
  %296 = and i32 %295, 1
  %297 = icmp ne i32 %296, 0
  %298 = zext i1 %297 to i64
  %299 = select i1 %297, i32 21504, i32 0
  %300 = load i32*, i32** %8, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 2
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 4
  %304 = load i32*, i32** %8, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 3
  store i32 65053, i32* %305, align 4
  %306 = load %struct.sd*, %struct.sd** %4, align 8
  %307 = load i32*, i32** %8, align 8
  %308 = call i32 @w9968cf_write_fsb(%struct.sd* %306, i32* %307)
  %309 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %310 = load i32, i32* @D_USBO, align 4
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* %5, align 4
  %313 = call i32 @gspca_dbg(%struct.gspca_dev* %309, i32 %310, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %311, i32 %312)
  ret void
}

declare dso_local i32 @w9968cf_write_fsb(%struct.sd*, i32*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
