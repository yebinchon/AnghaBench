; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_lo_b_measure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_lo_b_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_phy_lo_b_measure(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca [12 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 0
  store %struct.b43legacy_phy* %10, %struct.b43legacy_phy** %3, align 8
  %11 = bitcast [12 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 48, i1 false)
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %13 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %12, i32 21)
  %14 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  store i32 %13, i32* %14, align 16
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %16 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %15, i32 82)
  %17 = and i32 %16, 65520
  %18 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %20 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 8275
  br i1 %22, label %23, label %69

23:                                               ; preds = %1
  %24 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %25 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %24, i32 10)
  %26 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %28 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %27, i32 42)
  %29 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %31 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %30, i32 53)
  %32 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 4
  store i32 %31, i32* %32, align 16
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %34 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %33, i32 3)
  %35 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 5
  store i32 %34, i32* %35, align 4
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %37 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %36, i32 1)
  %38 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 6
  store i32 %37, i32* %38, align 8
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %40 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %39, i32 48)
  %41 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 7
  store i32 %40, i32* %41, align 4
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %43 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %42, i32 67)
  %44 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 8
  store i32 %43, i32* %44, align 16
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %46 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %45, i32 122)
  %47 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 9
  store i32 %46, i32* %47, align 4
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %49 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %48, i32 1004)
  %50 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 10
  store i32 %49, i32* %50, align 8
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %52 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %51, i32 82)
  %53 = and i32 %52, 240
  %54 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 11
  store i32 %53, i32* %54, align 4
  %55 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %56 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %55, i32 48, i32 255)
  %57 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %58 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %57, i32 1004, i32 16191)
  %59 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %60 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 4
  %61 = load i32, i32* %60, align 16
  %62 = and i32 %61, 65407
  %63 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %59, i32 53, i32 %62)
  %64 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %65 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 9
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 65520
  %68 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %64, i32 122, i32 %67)
  br label %69

69:                                               ; preds = %23, %1
  %70 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %71 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %70, i32 21, i32 45056)
  %72 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %73 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %72, i32 43, i32 4)
  %74 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %75 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 8275
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %80 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %79, i32 43, i32 515)
  %81 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %82 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %81, i32 42, i32 2211)
  br label %83

83:                                               ; preds = %78, %69
  %84 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %85 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 65535, i32* %87, align 4
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %100, %83
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %93 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %92, i32 82, i32 %96)
  %98 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %99 = call i32 @b43legacy_phy_lo_b_r15_loop(%struct.b43legacy_wldev* %98)
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %88

103:                                              ; preds = %88
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %136, %103
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 10
  br i1 %106, label %107, label %139

107:                                              ; preds = %104
  %108 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %109 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %108, i32 82, i32 %112)
  %114 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %115 = call i32 @b43legacy_phy_lo_b_r15_loop(%struct.b43legacy_wldev* %114)
  %116 = sdiv i32 %115, 10
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %119 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %117, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %107
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %127 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %132 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %130, i32* %134, align 4
  br label %135

135:                                              ; preds = %124, %107
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %104

139:                                              ; preds = %104
  %140 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %141 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %144 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %142, %147
  %149 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %140, i32 82, i32 %148)
  %150 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %151 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 65535, i32* %153, align 4
  store i32 -4, i32* %7, align 4
  br label %154

154:                                              ; preds = %205, %139
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %155, 5
  br i1 %156, label %157, label %208

157:                                              ; preds = %154
  store i32 -4, i32* %8, align 4
  br label %158

158:                                              ; preds = %201, %157
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %159, 5
  br i1 %160, label %161, label %204

161:                                              ; preds = %158
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* %7, align 4
  %166 = mul nsw i32 256, %165
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %166, %167
  %169 = add nsw i32 %168, 256
  store i32 %169, i32* %6, align 4
  br label %175

170:                                              ; preds = %161
  %171 = load i32, i32* %7, align 4
  %172 = mul nsw i32 256, %171
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %172, %173
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %170, %164
  %176 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %176, i32 47, i32 %177)
  %179 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %180 = call i32 @b43legacy_phy_lo_b_r15_loop(%struct.b43legacy_wldev* %179)
  %181 = sdiv i32 %180, 10
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %184 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %182, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %175
  %190 = load i32, i32* %5, align 4
  %191 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %192 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  store i32 %190, i32* %194, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %197 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  store i32 %195, i32* %199, align 4
  br label %200

200:                                              ; preds = %189, %175
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 2
  store i32 %203, i32* %8, align 4
  br label %158

204:                                              ; preds = %158
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, 2
  store i32 %207, i32* %7, align 4
  br label %154

208:                                              ; preds = %154
  %209 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %210 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 257
  store i32 %214, i32* %212, align 4
  %215 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %216 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %217 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %215, i32 47, i32 %220)
  %222 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %223 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 8275
  br i1 %225, label %226, label %271

226:                                              ; preds = %208
  %227 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %228 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %227, i32 10, i32 %229)
  %231 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %232 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %231, i32 42, i32 %233)
  %235 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %236 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 4
  %237 = load i32, i32* %236, align 16
  %238 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %235, i32 53, i32 %237)
  %239 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %240 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 5
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %239, i32 3, i32 %241)
  %243 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %244 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 6
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %243, i32 1, i32 %245)
  %247 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %248 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 7
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %247, i32 48, i32 %249)
  %251 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %252 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 8
  %253 = load i32, i32* %252, align 16
  %254 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %251, i32 67, i32 %253)
  %255 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %256 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 9
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %255, i32 122, i32 %257)
  %259 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %260 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %261 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %260, i32 82)
  %262 = and i32 %261, 15
  %263 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 11
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %262, %264
  %266 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %259, i32 82, i32 %265)
  %267 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %268 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 10
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %267, i32 1004, i32 %269)
  br label %271

271:                                              ; preds = %226, %208
  %272 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %273 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %274 = load i32, i32* %273, align 16
  %275 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %272, i32 21, i32 %274)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_phy_lo_b_r15_loop(%struct.b43legacy_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
