; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_ppr.c_b43_ppr_load_max_from_sprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_ppr.c_b43_ppr_load_max_from_sprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, %struct.TYPE_3__* }
%struct.b43_phy = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i32*, i32, i32, i32, i32*, i32, i32*, i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.b43_ppr = type { %struct.b43_ppr_rates }
%struct.b43_ppr_rates = type { i8**, i8**, i8**, i8**, i8**, i8**, i8** }

@B43_PHYTYPE_N = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_ppr_load_max_from_sprom(%struct.b43_wldev* %0, %struct.b43_ppr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca %struct.b43_ppr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.b43_ppr_rates*, align 8
  %9 = alloca %struct.ssb_sprom*, align 8
  %10 = alloca %struct.b43_phy*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store %struct.b43_ppr* %1, %struct.b43_ppr** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.b43_ppr*, %struct.b43_ppr** %6, align 8
  %19 = getelementptr inbounds %struct.b43_ppr, %struct.b43_ppr* %18, i32 0, i32 0
  store %struct.b43_ppr_rates* %19, %struct.b43_ppr_rates** %8, align 8
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.ssb_sprom*, %struct.ssb_sprom** %23, align 8
  store %struct.ssb_sprom* %24, %struct.ssb_sprom** %9, align 8
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 0
  store %struct.b43_phy* %26, %struct.b43_phy** %10, align 8
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %164 [
    i32 131, label %28
    i32 129, label %62
    i32 128, label %96
    i32 130, label %130
  ]

28:                                               ; preds = %3
  %29 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %30 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %29, i32 0, i32 11
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %36 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %35, i32 0, i32 11
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @min(i32 %34, i32 %40)
  store i8* %41, i8** %11, align 8
  %42 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %43 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  %45 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %46 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %14, align 8
  %48 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %49 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 0
  %52 = and i32 %51, 15
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %15, align 8
  %55 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %56 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 0
  %59 = and i32 %58, 15
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %16, align 8
  br label %166

62:                                               ; preds = %3
  %63 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %64 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %63, i32 0, i32 11
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %70 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %69, i32 0, i32 11
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @min(i32 %68, i32 %74)
  store i8* %75, i8** %11, align 8
  %76 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %77 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %13, align 4
  %79 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %80 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %14, align 8
  %82 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %83 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 15
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  store i8* %88, i8** %15, align 8
  %89 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %90 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 8
  %93 = and i32 %92, 15
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %16, align 8
  br label %166

96:                                               ; preds = %3
  %97 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %98 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %97, i32 0, i32 11
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %104 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %103, i32 0, i32 11
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @min(i32 %102, i32 %108)
  store i8* %109, i8** %11, align 8
  %110 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %111 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %13, align 4
  %113 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %114 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %113, i32 0, i32 7
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %14, align 8
  %116 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %117 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = ashr i32 %118, 4
  %120 = and i32 %119, 15
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  store i8* %122, i8** %15, align 8
  %123 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %124 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 4
  %127 = and i32 %126, 15
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  store i8* %129, i8** %16, align 8
  br label %166

130:                                              ; preds = %3
  %131 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %132 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %131, i32 0, i32 11
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %138 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %137, i32 0, i32 11
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @min(i32 %136, i32 %142)
  store i8* %143, i8** %11, align 8
  %144 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %145 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %13, align 4
  %147 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %148 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %147, i32 0, i32 9
  %149 = load i32*, i32** %148, align 8
  store i32* %149, i32** %14, align 8
  %150 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %151 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = ashr i32 %152, 12
  %154 = and i32 %153, 15
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  store i8* %156, i8** %15, align 8
  %157 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %158 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 12
  %161 = and i32 %160, 15
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  store i8* %163, i8** %16, align 8
  br label %166

164:                                              ; preds = %3
  %165 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %4, align 4
  br label %654

166:                                              ; preds = %130, %96, %62, %28
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 131
  br i1 %168, label %169, label %200

169:                                              ; preds = %166
  store i32 0, i32* %17, align 4
  br label %170

170:                                              ; preds = %196, %169
  %171 = load i32, i32* %17, align 4
  %172 = icmp slt i32 %171, 4
  br i1 %172, label %173, label %199

173:                                              ; preds = %170
  %174 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %175 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %174, i32 0, i32 10
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %17, align 4
  %178 = mul nsw i32 %177, 4
  %179 = ashr i32 %176, %178
  %180 = and i32 %179, 15
  %181 = mul nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  store i8* %183, i8** %12, align 8
  %184 = load i8*, i8** %11, align 8
  %185 = load i8*, i8** %12, align 8
  %186 = ptrtoint i8* %184 to i64
  %187 = ptrtoint i8* %185 to i64
  %188 = sub i64 %186, %187
  %189 = inttoptr i64 %188 to i8*
  %190 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %191 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %190, i32 0, i32 6
  %192 = load i8**, i8*** %191, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  store i8* %189, i8** %195, align 8
  br label %196

196:                                              ; preds = %173
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %17, align 4
  br label %170

199:                                              ; preds = %170
  br label %200

200:                                              ; preds = %199, %166
  store i32 0, i32* %17, align 4
  br label %201

201:                                              ; preds = %225, %200
  %202 = load i32, i32* %17, align 4
  %203 = icmp slt i32 %202, 8
  br i1 %203, label %204, label %228

204:                                              ; preds = %201
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %17, align 4
  %207 = mul nsw i32 %206, 4
  %208 = ashr i32 %205, %207
  %209 = and i32 %208, 15
  %210 = mul nsw i32 %209, 2
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i8*
  store i8* %212, i8** %12, align 8
  %213 = load i8*, i8** %11, align 8
  %214 = load i8*, i8** %12, align 8
  %215 = ptrtoint i8* %213 to i64
  %216 = ptrtoint i8* %214 to i64
  %217 = sub i64 %215, %216
  %218 = inttoptr i64 %217 to i8*
  %219 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %220 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %219, i32 0, i32 4
  %221 = load i8**, i8*** %220, align 8
  %222 = load i32, i32* %17, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  store i8* %218, i8** %224, align 8
  br label %225

225:                                              ; preds = %204
  %226 = load i32, i32* %17, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %17, align 4
  br label %201

228:                                              ; preds = %201
  %229 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %230 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %229, i32 0, i32 4
  %231 = load i8**, i8*** %230, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 0
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %235 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %234, i32 0, i32 5
  %236 = load i8**, i8*** %235, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 0
  store i8* %233, i8** %237, align 8
  %238 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %239 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %238, i32 0, i32 4
  %240 = load i8**, i8*** %239, align 8
  %241 = getelementptr inbounds i8*, i8** %240, i64 2
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %244 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %243, i32 0, i32 5
  %245 = load i8**, i8*** %244, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 1
  store i8* %242, i8** %246, align 8
  %247 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %248 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %247, i32 0, i32 4
  %249 = load i8**, i8*** %248, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 3
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %253 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %252, i32 0, i32 5
  %254 = load i8**, i8*** %253, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 2
  store i8* %251, i8** %255, align 8
  %256 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %257 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %256, i32 0, i32 4
  %258 = load i8**, i8*** %257, align 8
  %259 = getelementptr inbounds i8*, i8** %258, i64 4
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %262 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %261, i32 0, i32 5
  %263 = load i8**, i8*** %262, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 3
  store i8* %260, i8** %264, align 8
  %265 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %266 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %265, i32 0, i32 4
  %267 = load i8**, i8*** %266, align 8
  %268 = getelementptr inbounds i8*, i8** %267, i64 5
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %271 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %270, i32 0, i32 5
  %272 = load i8**, i8*** %271, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 4
  store i8* %269, i8** %273, align 8
  %274 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %275 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %274, i32 0, i32 4
  %276 = load i8**, i8*** %275, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i64 6
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %280 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %279, i32 0, i32 5
  %281 = load i8**, i8*** %280, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 5
  store i8* %278, i8** %282, align 8
  %283 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %284 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %283, i32 0, i32 4
  %285 = load i8**, i8*** %284, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 7
  %287 = load i8*, i8** %286, align 8
  %288 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %289 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %288, i32 0, i32 5
  %290 = load i8**, i8*** %289, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 6
  store i8* %287, i8** %291, align 8
  %292 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %293 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %292, i32 0, i32 4
  %294 = load i8**, i8*** %293, align 8
  %295 = getelementptr inbounds i8*, i8** %294, i64 7
  %296 = load i8*, i8** %295, align 8
  %297 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %298 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %297, i32 0, i32 5
  %299 = load i8**, i8*** %298, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 7
  store i8* %296, i8** %300, align 8
  store i32 0, i32* %17, align 4
  br label %301

301:                                              ; preds = %351, %228
  %302 = load i32, i32* %17, align 4
  %303 = icmp slt i32 %302, 4
  br i1 %303, label %304, label %354

304:                                              ; preds = %301
  %305 = load i32*, i32** %14, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %17, align 4
  %309 = mul nsw i32 %308, 4
  %310 = ashr i32 %307, %309
  %311 = and i32 %310, 15
  %312 = mul nsw i32 %311, 2
  %313 = sext i32 %312 to i64
  %314 = inttoptr i64 %313 to i8*
  store i8* %314, i8** %12, align 8
  %315 = load i8*, i8** %11, align 8
  %316 = load i8*, i8** %12, align 8
  %317 = ptrtoint i8* %315 to i64
  %318 = ptrtoint i8* %316 to i64
  %319 = sub i64 %317, %318
  %320 = inttoptr i64 %319 to i8*
  %321 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %322 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %321, i32 0, i32 0
  %323 = load i8**, i8*** %322, align 8
  %324 = load i32, i32* %17, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8*, i8** %323, i64 %325
  store i8* %320, i8** %326, align 8
  %327 = load %struct.b43_phy*, %struct.b43_phy** %10, align 8
  %328 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @B43_PHYTYPE_N, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %350

332:                                              ; preds = %304
  %333 = load %struct.b43_phy*, %struct.b43_phy** %10, align 8
  %334 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = icmp sge i32 %335, 3
  br i1 %336, label %337, label %350

337:                                              ; preds = %332
  %338 = load i8*, i8** %15, align 8
  %339 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %340 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %339, i32 0, i32 0
  %341 = load i8**, i8*** %340, align 8
  %342 = load i32, i32* %17, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8*, i8** %341, i64 %343
  %345 = load i8*, i8** %344, align 8
  %346 = ptrtoint i8* %345 to i64
  %347 = ptrtoint i8* %338 to i64
  %348 = sub i64 %346, %347
  %349 = inttoptr i64 %348 to i8*
  store i8* %349, i8** %344, align 8
  br label %350

350:                                              ; preds = %337, %332, %304
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %17, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %17, align 4
  br label %301

354:                                              ; preds = %301
  store i32 0, i32* %17, align 4
  br label %355

355:                                              ; preds = %407, %354
  %356 = load i32, i32* %17, align 4
  %357 = icmp slt i32 %356, 4
  br i1 %357, label %358, label %410

358:                                              ; preds = %355
  %359 = load i32*, i32** %14, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 1
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %17, align 4
  %363 = mul nsw i32 %362, 4
  %364 = ashr i32 %361, %363
  %365 = and i32 %364, 15
  %366 = mul nsw i32 %365, 2
  %367 = sext i32 %366 to i64
  %368 = inttoptr i64 %367 to i8*
  store i8* %368, i8** %12, align 8
  %369 = load i8*, i8** %11, align 8
  %370 = load i8*, i8** %12, align 8
  %371 = ptrtoint i8* %369 to i64
  %372 = ptrtoint i8* %370 to i64
  %373 = sub i64 %371, %372
  %374 = inttoptr i64 %373 to i8*
  %375 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %376 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %375, i32 0, i32 0
  %377 = load i8**, i8*** %376, align 8
  %378 = load i32, i32* %17, align 4
  %379 = add nsw i32 4, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8*, i8** %377, i64 %380
  store i8* %374, i8** %381, align 8
  %382 = load %struct.b43_phy*, %struct.b43_phy** %10, align 8
  %383 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @B43_PHYTYPE_N, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %406

387:                                              ; preds = %358
  %388 = load %struct.b43_phy*, %struct.b43_phy** %10, align 8
  %389 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = icmp sge i32 %390, 3
  br i1 %391, label %392, label %406

392:                                              ; preds = %387
  %393 = load i8*, i8** %15, align 8
  %394 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %395 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %394, i32 0, i32 0
  %396 = load i8**, i8*** %395, align 8
  %397 = load i32, i32* %17, align 4
  %398 = add nsw i32 4, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8*, i8** %396, i64 %399
  %401 = load i8*, i8** %400, align 8
  %402 = ptrtoint i8* %401 to i64
  %403 = ptrtoint i8* %393 to i64
  %404 = sub i64 %402, %403
  %405 = inttoptr i64 %404 to i8*
  store i8* %405, i8** %400, align 8
  br label %406

406:                                              ; preds = %392, %387, %358
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %17, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %17, align 4
  br label %355

410:                                              ; preds = %355
  %411 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %412 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %411, i32 0, i32 0
  %413 = load i8**, i8*** %412, align 8
  %414 = getelementptr inbounds i8*, i8** %413, i64 0
  %415 = load i8*, i8** %414, align 8
  %416 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %417 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %416, i32 0, i32 1
  %418 = load i8**, i8*** %417, align 8
  %419 = getelementptr inbounds i8*, i8** %418, i64 0
  store i8* %415, i8** %419, align 8
  %420 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %421 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %420, i32 0, i32 0
  %422 = load i8**, i8*** %421, align 8
  %423 = getelementptr inbounds i8*, i8** %422, i64 0
  %424 = load i8*, i8** %423, align 8
  %425 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %426 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %425, i32 0, i32 1
  %427 = load i8**, i8*** %426, align 8
  %428 = getelementptr inbounds i8*, i8** %427, i64 1
  store i8* %424, i8** %428, align 8
  %429 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %430 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %429, i32 0, i32 0
  %431 = load i8**, i8*** %430, align 8
  %432 = getelementptr inbounds i8*, i8** %431, i64 1
  %433 = load i8*, i8** %432, align 8
  %434 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %435 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %434, i32 0, i32 1
  %436 = load i8**, i8*** %435, align 8
  %437 = getelementptr inbounds i8*, i8** %436, i64 2
  store i8* %433, i8** %437, align 8
  %438 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %439 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %438, i32 0, i32 0
  %440 = load i8**, i8*** %439, align 8
  %441 = getelementptr inbounds i8*, i8** %440, i64 2
  %442 = load i8*, i8** %441, align 8
  %443 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %444 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %443, i32 0, i32 1
  %445 = load i8**, i8*** %444, align 8
  %446 = getelementptr inbounds i8*, i8** %445, i64 3
  store i8* %442, i8** %446, align 8
  %447 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %448 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %447, i32 0, i32 0
  %449 = load i8**, i8*** %448, align 8
  %450 = getelementptr inbounds i8*, i8** %449, i64 3
  %451 = load i8*, i8** %450, align 8
  %452 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %453 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %452, i32 0, i32 1
  %454 = load i8**, i8*** %453, align 8
  %455 = getelementptr inbounds i8*, i8** %454, i64 4
  store i8* %451, i8** %455, align 8
  %456 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %457 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %456, i32 0, i32 0
  %458 = load i8**, i8*** %457, align 8
  %459 = getelementptr inbounds i8*, i8** %458, i64 4
  %460 = load i8*, i8** %459, align 8
  %461 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %462 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %461, i32 0, i32 1
  %463 = load i8**, i8*** %462, align 8
  %464 = getelementptr inbounds i8*, i8** %463, i64 5
  store i8* %460, i8** %464, align 8
  %465 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %466 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %465, i32 0, i32 0
  %467 = load i8**, i8*** %466, align 8
  %468 = getelementptr inbounds i8*, i8** %467, i64 5
  %469 = load i8*, i8** %468, align 8
  %470 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %471 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %470, i32 0, i32 1
  %472 = load i8**, i8*** %471, align 8
  %473 = getelementptr inbounds i8*, i8** %472, i64 6
  store i8* %469, i8** %473, align 8
  %474 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %475 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %474, i32 0, i32 0
  %476 = load i8**, i8*** %475, align 8
  %477 = getelementptr inbounds i8*, i8** %476, i64 6
  %478 = load i8*, i8** %477, align 8
  %479 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %480 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %479, i32 0, i32 1
  %481 = load i8**, i8*** %480, align 8
  %482 = getelementptr inbounds i8*, i8** %481, i64 7
  store i8* %478, i8** %482, align 8
  store i32 0, i32* %17, align 4
  br label %483

483:                                              ; preds = %533, %410
  %484 = load i32, i32* %17, align 4
  %485 = icmp slt i32 %484, 4
  br i1 %485, label %486, label %536

486:                                              ; preds = %483
  %487 = load i32*, i32** %14, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 0
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* %17, align 4
  %491 = mul nsw i32 %490, 4
  %492 = ashr i32 %489, %491
  %493 = and i32 %492, 15
  %494 = mul nsw i32 %493, 2
  %495 = sext i32 %494 to i64
  %496 = inttoptr i64 %495 to i8*
  store i8* %496, i8** %12, align 8
  %497 = load i8*, i8** %11, align 8
  %498 = load i8*, i8** %12, align 8
  %499 = ptrtoint i8* %497 to i64
  %500 = ptrtoint i8* %498 to i64
  %501 = sub i64 %499, %500
  %502 = inttoptr i64 %501 to i8*
  %503 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %504 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %503, i32 0, i32 2
  %505 = load i8**, i8*** %504, align 8
  %506 = load i32, i32* %17, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8*, i8** %505, i64 %507
  store i8* %502, i8** %508, align 8
  %509 = load %struct.b43_phy*, %struct.b43_phy** %10, align 8
  %510 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = load i64, i64* @B43_PHYTYPE_N, align 8
  %513 = icmp eq i64 %511, %512
  br i1 %513, label %514, label %532

514:                                              ; preds = %486
  %515 = load %struct.b43_phy*, %struct.b43_phy** %10, align 8
  %516 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 8
  %518 = icmp sge i32 %517, 3
  br i1 %518, label %519, label %532

519:                                              ; preds = %514
  %520 = load i8*, i8** %16, align 8
  %521 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %522 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %521, i32 0, i32 2
  %523 = load i8**, i8*** %522, align 8
  %524 = load i32, i32* %17, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i8*, i8** %523, i64 %525
  %527 = load i8*, i8** %526, align 8
  %528 = ptrtoint i8* %527 to i64
  %529 = ptrtoint i8* %520 to i64
  %530 = sub i64 %528, %529
  %531 = inttoptr i64 %530 to i8*
  store i8* %531, i8** %526, align 8
  br label %532

532:                                              ; preds = %519, %514, %486
  br label %533

533:                                              ; preds = %532
  %534 = load i32, i32* %17, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %17, align 4
  br label %483

536:                                              ; preds = %483
  store i32 0, i32* %17, align 4
  br label %537

537:                                              ; preds = %589, %536
  %538 = load i32, i32* %17, align 4
  %539 = icmp slt i32 %538, 4
  br i1 %539, label %540, label %592

540:                                              ; preds = %537
  %541 = load i32*, i32** %14, align 8
  %542 = getelementptr inbounds i32, i32* %541, i64 1
  %543 = load i32, i32* %542, align 4
  %544 = load i32, i32* %17, align 4
  %545 = mul nsw i32 %544, 4
  %546 = ashr i32 %543, %545
  %547 = and i32 %546, 15
  %548 = mul nsw i32 %547, 2
  %549 = sext i32 %548 to i64
  %550 = inttoptr i64 %549 to i8*
  store i8* %550, i8** %12, align 8
  %551 = load i8*, i8** %11, align 8
  %552 = load i8*, i8** %12, align 8
  %553 = ptrtoint i8* %551 to i64
  %554 = ptrtoint i8* %552 to i64
  %555 = sub i64 %553, %554
  %556 = inttoptr i64 %555 to i8*
  %557 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %558 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %557, i32 0, i32 2
  %559 = load i8**, i8*** %558, align 8
  %560 = load i32, i32* %17, align 4
  %561 = add nsw i32 4, %560
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i8*, i8** %559, i64 %562
  store i8* %556, i8** %563, align 8
  %564 = load %struct.b43_phy*, %struct.b43_phy** %10, align 8
  %565 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* @B43_PHYTYPE_N, align 8
  %568 = icmp eq i64 %566, %567
  br i1 %568, label %569, label %588

569:                                              ; preds = %540
  %570 = load %struct.b43_phy*, %struct.b43_phy** %10, align 8
  %571 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 8
  %573 = icmp sge i32 %572, 3
  br i1 %573, label %574, label %588

574:                                              ; preds = %569
  %575 = load i8*, i8** %16, align 8
  %576 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %577 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %576, i32 0, i32 2
  %578 = load i8**, i8*** %577, align 8
  %579 = load i32, i32* %17, align 4
  %580 = add nsw i32 4, %579
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i8*, i8** %578, i64 %581
  %583 = load i8*, i8** %582, align 8
  %584 = ptrtoint i8* %583 to i64
  %585 = ptrtoint i8* %575 to i64
  %586 = sub i64 %584, %585
  %587 = inttoptr i64 %586 to i8*
  store i8* %587, i8** %582, align 8
  br label %588

588:                                              ; preds = %574, %569, %540
  br label %589

589:                                              ; preds = %588
  %590 = load i32, i32* %17, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %17, align 4
  br label %537

592:                                              ; preds = %537
  store i32 0, i32* %17, align 4
  br label %593

593:                                              ; preds = %619, %592
  %594 = load i32, i32* %17, align 4
  %595 = icmp slt i32 %594, 4
  br i1 %595, label %596, label %622

596:                                              ; preds = %593
  %597 = load i32*, i32** %14, align 8
  %598 = getelementptr inbounds i32, i32* %597, i64 2
  %599 = load i32, i32* %598, align 4
  %600 = load i32, i32* %17, align 4
  %601 = mul nsw i32 %600, 4
  %602 = ashr i32 %599, %601
  %603 = and i32 %602, 15
  %604 = mul nsw i32 %603, 2
  %605 = sext i32 %604 to i64
  %606 = inttoptr i64 %605 to i8*
  store i8* %606, i8** %12, align 8
  %607 = load i8*, i8** %11, align 8
  %608 = load i8*, i8** %12, align 8
  %609 = ptrtoint i8* %607 to i64
  %610 = ptrtoint i8* %608 to i64
  %611 = sub i64 %609, %610
  %612 = inttoptr i64 %611 to i8*
  %613 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %614 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %613, i32 0, i32 3
  %615 = load i8**, i8*** %614, align 8
  %616 = load i32, i32* %17, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i8*, i8** %615, i64 %617
  store i8* %612, i8** %618, align 8
  br label %619

619:                                              ; preds = %596
  %620 = load i32, i32* %17, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %17, align 4
  br label %593

622:                                              ; preds = %593
  store i32 0, i32* %17, align 4
  br label %623

623:                                              ; preds = %650, %622
  %624 = load i32, i32* %17, align 4
  %625 = icmp slt i32 %624, 4
  br i1 %625, label %626, label %653

626:                                              ; preds = %623
  %627 = load i32*, i32** %14, align 8
  %628 = getelementptr inbounds i32, i32* %627, i64 3
  %629 = load i32, i32* %628, align 4
  %630 = load i32, i32* %17, align 4
  %631 = mul nsw i32 %630, 4
  %632 = ashr i32 %629, %631
  %633 = and i32 %632, 15
  %634 = mul nsw i32 %633, 2
  %635 = sext i32 %634 to i64
  %636 = inttoptr i64 %635 to i8*
  store i8* %636, i8** %12, align 8
  %637 = load i8*, i8** %11, align 8
  %638 = load i8*, i8** %12, align 8
  %639 = ptrtoint i8* %637 to i64
  %640 = ptrtoint i8* %638 to i64
  %641 = sub i64 %639, %640
  %642 = inttoptr i64 %641 to i8*
  %643 = load %struct.b43_ppr_rates*, %struct.b43_ppr_rates** %8, align 8
  %644 = getelementptr inbounds %struct.b43_ppr_rates, %struct.b43_ppr_rates* %643, i32 0, i32 3
  %645 = load i8**, i8*** %644, align 8
  %646 = load i32, i32* %17, align 4
  %647 = add nsw i32 4, %646
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8*, i8** %645, i64 %648
  store i8* %642, i8** %649, align 8
  br label %650

650:                                              ; preds = %626
  %651 = load i32, i32* %17, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %17, align 4
  br label %623

653:                                              ; preds = %623
  store i32 1, i32* %4, align 4
  br label %654

654:                                              ; preds = %653, %164
  %655 = load i32, i32* %4, align 4
  ret i32 %655
}

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
