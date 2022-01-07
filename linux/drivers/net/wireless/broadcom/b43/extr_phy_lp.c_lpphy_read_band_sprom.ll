; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_read_band_sprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_read_band_sprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i8**, i8*, i8**, i8*, i8**, i8*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_read_band_sprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_read_band_sprom(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca %struct.b43_phy_lp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.ssb_sprom*, %struct.ssb_sprom** %13, align 8
  store %struct.ssb_sprom* %14, %struct.ssb_sprom** %3, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %17, align 8
  store %struct.b43_phy_lp* %18, %struct.b43_phy_lp** %4, align 8
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @b43_current_band(i32 %21)
  %23 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %181

25:                                               ; preds = %1
  %26 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %27 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %26, i32 0, i32 35
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %30 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %29, i32 0, i32 15
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %32 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %31, i32 0, i32 34
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %35 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %37 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %36, i32 0, i32 33
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %40 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %39, i32 0, i32 12
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %42 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %41, i32 0, i32 32
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %45 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %44, i32 0, i32 11
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %47 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %46, i32 0, i32 31
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %50 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %52 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %51, i32 0, i32 30
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %55 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %57 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %56, i32 0, i32 29
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %60 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %64 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %63, i32 0, i32 28
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %67 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %66, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %65, i32* %69, align 4
  %70 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %71 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %70, i32 0, i32 27
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %74 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %73, i32 0, i32 8
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %72, i32* %76, align 4
  %77 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %78 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %77, i32 0, i32 26
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %82 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %84 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %83, i32 0, i32 25
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %141

88:                                               ; preds = %25
  %89 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %90 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %111, %88
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %114

95:                                               ; preds = %92
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 15
  %99 = mul nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr i8, i8* %96, i64 %101
  %103 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %104 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %103, i32 0, i32 2
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %102, i8** %108, align 8
  %109 = load i32, i32* %7, align 4
  %110 = ashr i32 %109, 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %95
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %92

114:                                              ; preds = %92
  %115 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %116 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %118

118:                                              ; preds = %137, %114
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 15
  br i1 %120, label %121, label %140

121:                                              ; preds = %118
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = and i32 %123, 15
  %125 = mul nsw i32 %124, 2
  %126 = sext i32 %125 to i64
  %127 = sub i64 0, %126
  %128 = getelementptr i8, i8* %122, i64 %127
  %129 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %130 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %129, i32 0, i32 2
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  store i8* %128, i8** %134, align 8
  %135 = load i32, i32* %7, align 4
  %136 = ashr i32 %135, 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %121
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %118

140:                                              ; preds = %118
  br label %180

141:                                              ; preds = %25
  %142 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %143 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %142, i32 0, i32 24
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %9, align 8
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %156, %141
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %146, 4
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load i8*, i8** %6, align 8
  %150 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %151 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %150, i32 0, i32 2
  %152 = load i8**, i8*** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  store i8* %149, i8** %155, align 8
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %145

159:                                              ; preds = %145
  store i32 4, i32* %8, align 4
  br label %160

160:                                              ; preds = %176, %159
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 15
  br i1 %162, label %163, label %179

163:                                              ; preds = %160
  %164 = load i8*, i8** %6, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = inttoptr i64 %168 to i8*
  %170 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %171 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %170, i32 0, i32 2
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  store i8* %169, i8** %175, align 8
  br label %176

176:                                              ; preds = %163
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %160

179:                                              ; preds = %160
  br label %180

180:                                              ; preds = %179, %140
  br label %381

181:                                              ; preds = %1
  %182 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %183 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %182, i32 0, i32 23
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %186 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %185, i32 0, i32 16
  store i32 %184, i32* %186, align 4
  %187 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %188 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %187, i32 0, i32 22
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %191 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %190, i32 0, i32 15
  store i32 %189, i32* %191, align 8
  %192 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %193 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %192, i32 0, i32 21
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %196 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %195, i32 0, i32 14
  store i32 %194, i32* %196, align 4
  %197 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %198 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %197, i32 0, i32 20
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %201 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %200, i32 0, i32 13
  store i32 %199, i32* %201, align 8
  %202 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %203 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %202, i32 0, i32 19
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %206 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %205, i32 0, i32 12
  store i32 %204, i32* %206, align 4
  %207 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %208 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %207, i32 0, i32 18
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %211 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %210, i32 0, i32 11
  store i32 %209, i32* %211, align 8
  %212 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %213 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %212, i32 0, i32 17
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %216 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %215, i32 0, i32 10
  store i32 %214, i32* %216, align 4
  %217 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %218 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %217, i32 0, i32 16
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %221 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %220, i32 0, i32 9
  store i32 %219, i32* %221, align 8
  %222 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %223 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %222, i32 0, i32 15
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %226 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %225, i32 0, i32 8
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  store i32 %224, i32* %228, align 4
  %229 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %230 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %229, i32 0, i32 14
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %233 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %232, i32 0, i32 8
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  store i32 %231, i32* %235, align 4
  %236 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %237 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %236, i32 0, i32 13
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %240 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %239, i32 0, i32 8
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  store i32 %238, i32* %242, align 4
  %243 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %244 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %243, i32 0, i32 12
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %247 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %246, i32 0, i32 7
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  store i32 %245, i32* %249, align 4
  %250 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %251 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %250, i32 0, i32 11
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %254 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %253, i32 0, i32 7
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  store i32 %252, i32* %256, align 4
  %257 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %258 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %257, i32 0, i32 10
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %261 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %260, i32 0, i32 7
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 2
  store i32 %259, i32* %263, align 4
  %264 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %265 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %264, i32 0, i32 9
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %268 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %267, i32 0, i32 6
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  store i32 %266, i32* %270, align 4
  %271 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %272 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %275 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %274, i32 0, i32 6
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  store i32 %273, i32* %277, align 4
  %278 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %279 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %278, i32 0, i32 7
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %282 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %281, i32 0, i32 6
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 2
  store i32 %280, i32* %284, align 4
  %285 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %286 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %285, i32 0, i32 6
  %287 = load i8*, i8** %286, align 8
  store i8* %287, i8** %6, align 8
  %288 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %289 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %7, align 4
  %291 = load i8*, i8** %6, align 8
  %292 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %293 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %292, i32 0, i32 5
  store i8* %291, i8** %293, align 8
  store i32 4, i32* %8, align 4
  br label %294

294:                                              ; preds = %313, %181
  %295 = load i32, i32* %8, align 4
  %296 = icmp slt i32 %295, 12
  br i1 %296, label %297, label %316

297:                                              ; preds = %294
  %298 = load i8*, i8** %6, align 8
  %299 = load i32, i32* %7, align 4
  %300 = and i32 %299, 15
  %301 = mul nsw i32 %300, 2
  %302 = sext i32 %301 to i64
  %303 = sub i64 0, %302
  %304 = getelementptr i8, i8* %298, i64 %303
  %305 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %306 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %305, i32 0, i32 4
  %307 = load i8**, i8*** %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8*, i8** %307, i64 %309
  store i8* %304, i8** %310, align 8
  %311 = load i32, i32* %7, align 4
  %312 = ashr i32 %311, 4
  store i32 %312, i32* %7, align 4
  br label %313

313:                                              ; preds = %297
  %314 = load i32, i32* %8, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %8, align 4
  br label %294

316:                                              ; preds = %294
  %317 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %318 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %317, i32 0, i32 5
  %319 = load i8*, i8** %318, align 8
  store i8* %319, i8** %6, align 8
  %320 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %321 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  store i32 %322, i32* %7, align 4
  %323 = load i8*, i8** %6, align 8
  %324 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %325 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %324, i32 0, i32 3
  store i8* %323, i8** %325, align 8
  store i32 4, i32* %8, align 4
  br label %326

326:                                              ; preds = %345, %316
  %327 = load i32, i32* %8, align 4
  %328 = icmp slt i32 %327, 12
  br i1 %328, label %329, label %348

329:                                              ; preds = %326
  %330 = load i8*, i8** %6, align 8
  %331 = load i32, i32* %7, align 4
  %332 = and i32 %331, 15
  %333 = mul nsw i32 %332, 2
  %334 = sext i32 %333 to i64
  %335 = sub i64 0, %334
  %336 = getelementptr i8, i8* %330, i64 %335
  %337 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %338 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %337, i32 0, i32 2
  %339 = load i8**, i8*** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  store i8* %336, i8** %342, align 8
  %343 = load i32, i32* %7, align 4
  %344 = ashr i32 %343, 4
  store i32 %344, i32* %7, align 4
  br label %345

345:                                              ; preds = %329
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %8, align 4
  br label %326

348:                                              ; preds = %326
  %349 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %350 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %349, i32 0, i32 4
  %351 = load i8*, i8** %350, align 8
  store i8* %351, i8** %6, align 8
  %352 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %353 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  store i32 %354, i32* %7, align 4
  %355 = load i8*, i8** %6, align 8
  %356 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %357 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %356, i32 0, i32 1
  store i8* %355, i8** %357, align 8
  store i32 4, i32* %8, align 4
  br label %358

358:                                              ; preds = %377, %348
  %359 = load i32, i32* %8, align 4
  %360 = icmp slt i32 %359, 12
  br i1 %360, label %361, label %380

361:                                              ; preds = %358
  %362 = load i8*, i8** %6, align 8
  %363 = load i32, i32* %7, align 4
  %364 = and i32 %363, 15
  %365 = mul nsw i32 %364, 2
  %366 = sext i32 %365 to i64
  %367 = sub i64 0, %366
  %368 = getelementptr i8, i8* %362, i64 %367
  %369 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %4, align 8
  %370 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %369, i32 0, i32 0
  %371 = load i8**, i8*** %370, align 8
  %372 = load i32, i32* %8, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8*, i8** %371, i64 %373
  store i8* %368, i8** %374, align 8
  %375 = load i32, i32* %7, align 4
  %376 = ashr i32 %375, 4
  store i32 %376, i32* %7, align 4
  br label %377

377:                                              ; preds = %361
  %378 = load i32, i32* %8, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %8, align 4
  br label %358

380:                                              ; preds = %358
  br label %381

381:                                              ; preds = %380, %180
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
