; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_lo_g_measure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_lo_g_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i32, %struct.b43legacy_lopair*, i64 }
%struct.b43legacy_lopair = type { i32, i32, i32 }

@b43legacy_phy_lo_g_measure.pairorder = internal constant [10 x i32] [i32 3, i32 1, i32 5, i32 7, i32 9, i32 2, i32 0, i32 4, i32 6, i32 8], align 16
@B43legacy_STAT_STARTED = common dso_local global i64 0, align 8
@B43legacy_PHY_G_CRS = common dso_local global i32 0, align 4
@B43legacy_MMIO_CHANNEL_EXT = common dso_local global i32 0, align 4
@B43legacy_LO_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_phy_lo_g_measure(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43legacy_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43legacy_lopair, align 4
  %10 = alloca %struct.b43legacy_lopair*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %17 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %16)
  %18 = load i64, i64* @B43legacy_STAT_STARTED, align 8
  %19 = icmp slt i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %21, i32 0, i32 1
  store %struct.b43legacy_phy* %22, %struct.b43legacy_phy** %4, align 8
  store i32 0, i32* %7, align 4
  %23 = bitcast [16 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 64, i1 false)
  store i32 0, i32* %14, align 4
  %24 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %25 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %28 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %1
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %33 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %34 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %32, i32 %33)
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  store i32 %34, i32* %35, align 16
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %37 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %36, i32 2050)
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %40 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = and i32 %42, 32767
  %44 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %39, i32 %40, i32 %43)
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 65532
  %49 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %45, i32 2050, i32 %48)
  br label %50

50:                                               ; preds = %31, %1
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %52 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %51, i32 994)
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 3
  store i32 %52, i32* %53, align 4
  %54 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 32768
  %58 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %54, i32 994, i32 %57)
  %59 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %60 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %61 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %59, i32 %60)
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 4
  store i32 %61, i32* %62, align 16
  %63 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %64 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %63, i32 21)
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 5
  store i32 %64, i32* %65, align 4
  %66 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %67 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %66, i32 42)
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 6
  store i32 %67, i32* %68, align 8
  %69 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %70 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %69, i32 53)
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 7
  store i32 %70, i32* %71, align 4
  %72 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %73 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %72, i32 96)
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 8
  store i32 %73, i32* %74, align 16
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %76 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %75, i32 67)
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 9
  store i32 %76, i32* %77, align 4
  %78 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %79 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %78, i32 122)
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 10
  store i32 %79, i32* %80, align 8
  %81 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %82 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %81, i32 82)
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 11
  store i32 %82, i32* %83, align 4
  %84 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %85 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %50
  %89 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %90 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %89, i32 2065)
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 12
  store i32 %90, i32* %91, align 16
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %93 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %92, i32 2066)
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 13
  store i32 %93, i32* %94, align 4
  %95 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %96 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %95, i32 2068)
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 14
  store i32 %96, i32* %97, align 8
  %98 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %99 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %98, i32 2069)
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 15
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %88, %50
  %102 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %103 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %102, i32 6, i32 0)
  %104 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %105 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %101
  %109 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %110 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %111 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %112 = load i32, i32* %111, align 16
  %113 = and i32 %112, 32767
  %114 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %109, i32 %110, i32 %113)
  %115 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 65532
  %119 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %115, i32 2050, i32 %118)
  %120 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %121 = call i32 @b43legacy_dummy_transmission(%struct.b43legacy_wldev* %120)
  br label %122

122:                                              ; preds = %108, %101
  %123 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %124 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %123, i32 67, i32 6)
  %125 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %126 = call i32 @b43legacy_phy_set_baseband_attenuation(%struct.b43legacy_wldev* %125, i32 2)
  %127 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %128 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %129 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %127, i32 %128, i32 0)
  %130 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %131 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %130, i32 46, i32 127)
  %132 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %133 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %132, i32 2063, i32 120)
  %134 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 7
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, -129
  %138 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %134, i32 53, i32 %137)
  %139 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 10
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 65520
  %143 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %139, i32 122, i32 %142)
  %144 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %145 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %144, i32 43, i32 515)
  %146 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %147 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %146, i32 42, i32 2211)
  %148 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %149 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %122
  %153 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %154 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 14
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, 3
  %157 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %153, i32 2068, i32 %156)
  %158 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 15
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 65532
  %162 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %158, i32 2069, i32 %161)
  %163 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %164 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %163, i32 2065, i32 435)
  %165 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %166 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %165, i32 2066, i32 178)
  br label %167

167:                                              ; preds = %152, %122
  %168 = load i32, i32* %3, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %172 = call i32 @b43legacy_phy_lo_g_measure_txctl2(%struct.b43legacy_wldev* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %175 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %174, i32 2063, i32 32888)
  %176 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 0
  store i32 0, i32* %176, align 4
  %177 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 1
  store i32 0, i32* %177, align 4
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %302, %173
  %179 = load i32, i32* %5, align 4
  %180 = icmp slt i32 %179, 10
  br i1 %180, label %181, label %305

181:                                              ; preds = %178
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [10 x i32], [10 x i32]* @b43legacy_phy_lo_g_measure.pairorder, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %3, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %223

188:                                              ; preds = %181
  %189 = load i32, i32* %6, align 4
  %190 = icmp eq i32 %189, 3
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 0
  store i32 0, i32* %192, align 4
  %193 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 1
  store i32 0, i32* %193, align 4
  br label %222

194:                                              ; preds = %188
  %195 = load i32, i32* %6, align 4
  %196 = srem i32 %195, 2
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load i32, i32* %7, align 4
  %200 = srem i32 %199, 2
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %210, label %202

202:                                              ; preds = %198, %194
  %203 = load i32, i32* %6, align 4
  %204 = srem i32 %203, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %202
  %207 = load i32, i32* %7, align 4
  %208 = srem i32 %207, 2
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206, %198
  %211 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %212 = load i32, i32* %7, align 4
  %213 = call %struct.b43legacy_lopair* @b43legacy_get_lopair(%struct.b43legacy_phy* %211, i32 %212, i32 0)
  store %struct.b43legacy_lopair* %213, %struct.b43legacy_lopair** %10, align 8
  %214 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %10, align 8
  %215 = call i32 @memcpy(%struct.b43legacy_lopair* %9, %struct.b43legacy_lopair* %214, i32 12)
  br label %221

216:                                              ; preds = %206, %202
  %217 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %218 = call %struct.b43legacy_lopair* @b43legacy_get_lopair(%struct.b43legacy_phy* %217, i32 3, i32 0)
  store %struct.b43legacy_lopair* %218, %struct.b43legacy_lopair** %10, align 8
  %219 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %10, align 8
  %220 = call i32 @memcpy(%struct.b43legacy_lopair* %9, %struct.b43legacy_lopair* %219, i32 12)
  br label %221

221:                                              ; preds = %216, %210
  br label %222

222:                                              ; preds = %221, %191
  br label %223

223:                                              ; preds = %222, %181
  store i32 0, i32* %8, align 4
  br label %224

224:                                              ; preds = %297, %223
  %225 = load i32, i32* %8, align 4
  %226 = icmp slt i32 %225, 4
  br i1 %226, label %227, label %300

227:                                              ; preds = %224
  %228 = load i32, i32* %3, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %227
  %231 = load i32, i32* %6, align 4
  %232 = mul nsw i32 %231, 2
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %232, %233
  store i32 %234, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %235 = load i32, i32* %11, align 4
  %236 = icmp sgt i32 %235, 14
  br i1 %236, label %237, label %246

237:                                              ; preds = %230
  store i32 1, i32* %15, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp sgt i32 %238, 17
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store i32 1, i32* %14, align 4
  br label %241

241:                                              ; preds = %240, %237
  %242 = load i32, i32* %11, align 4
  %243 = icmp sgt i32 %242, 19
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  store i32 2, i32* %14, align 4
  br label %245

245:                                              ; preds = %244, %241
  br label %246

246:                                              ; preds = %245, %230
  br label %261

247:                                              ; preds = %227
  %248 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* %8, align 4
  %251 = mul nsw i32 %250, 2
  %252 = call %struct.b43legacy_lopair* @b43legacy_get_lopair(%struct.b43legacy_phy* %248, i32 %249, i32 %251)
  store %struct.b43legacy_lopair* %252, %struct.b43legacy_lopair** %10, align 8
  %253 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %10, align 8
  %254 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %247
  br label %297

258:                                              ; preds = %247
  %259 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %10, align 8
  %260 = call i32 @memcpy(%struct.b43legacy_lopair* %9, %struct.b43legacy_lopair* %259, i32 12)
  store i32 3, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %261

261:                                              ; preds = %258, %246
  %262 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %262, i32 67, i32 %263)
  %265 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %266 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %267 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %265, i32 82, i32 %268)
  %270 = call i32 @udelay(i32 10)
  %271 = call i32 (...) @cond_resched()
  %272 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %273 = load i32, i32* %8, align 4
  %274 = mul nsw i32 %273, 2
  %275 = call i32 @b43legacy_phy_set_baseband_attenuation(%struct.b43legacy_wldev* %272, i32 %274)
  %276 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 10
  %277 = load i32, i32* %276, align 8
  %278 = and i32 %277, 65520
  store i32 %278, i32* %11, align 4
  %279 = load i32, i32* %15, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %261
  %282 = load i32, i32* %11, align 4
  %283 = or i32 %282, 8
  store i32 %283, i32* %11, align 4
  br label %284

284:                                              ; preds = %281, %261
  %285 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %286 = load i32, i32* %11, align 4
  %287 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %285, i32 122, i32 %286)
  %288 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %289 = load i32, i32* %6, align 4
  %290 = load i32, i32* %8, align 4
  %291 = mul nsw i32 %290, 2
  %292 = call %struct.b43legacy_lopair* @b43legacy_get_lopair(%struct.b43legacy_phy* %288, i32 %289, i32 %291)
  store %struct.b43legacy_lopair* %292, %struct.b43legacy_lopair** %10, align 8
  %293 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %294 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %10, align 8
  %295 = load i32, i32* %14, align 4
  %296 = call i32 @b43legacy_phy_lo_g_state(%struct.b43legacy_wldev* %293, %struct.b43legacy_lopair* %9, %struct.b43legacy_lopair* %294, i32 %295)
  br label %297

297:                                              ; preds = %284, %257
  %298 = load i32, i32* %8, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %8, align 4
  br label %224

300:                                              ; preds = %224
  %301 = load i32, i32* %6, align 4
  store i32 %301, i32* %7, align 4
  br label %302

302:                                              ; preds = %300
  %303 = load i32, i32* %5, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %5, align 4
  br label %178

305:                                              ; preds = %178
  store i32 10, i32* %6, align 4
  br label %306

306:                                              ; preds = %400, %305
  %307 = load i32, i32* %6, align 4
  %308 = icmp slt i32 %307, 14
  br i1 %308, label %309, label %403

309:                                              ; preds = %306
  store i32 0, i32* %8, align 4
  br label %310

310:                                              ; preds = %396, %309
  %311 = load i32, i32* %8, align 4
  %312 = icmp slt i32 %311, 4
  br i1 %312, label %313, label %399

313:                                              ; preds = %310
  %314 = load i32, i32* %3, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %343

316:                                              ; preds = %313
  %317 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sub nsw i32 %318, 9
  %320 = load i32, i32* %8, align 4
  %321 = mul nsw i32 %320, 2
  %322 = call %struct.b43legacy_lopair* @b43legacy_get_lopair(%struct.b43legacy_phy* %317, i32 %319, i32 %321)
  store %struct.b43legacy_lopair* %322, %struct.b43legacy_lopair** %10, align 8
  %323 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %10, align 8
  %324 = call i32 @memcpy(%struct.b43legacy_lopair* %9, %struct.b43legacy_lopair* %323, i32 12)
  %325 = load i32, i32* %6, align 4
  %326 = sub nsw i32 %325, 9
  %327 = mul nsw i32 %326, 2
  %328 = load i32, i32* %8, align 4
  %329 = add nsw i32 %327, %328
  %330 = sub nsw i32 %329, 5
  store i32 %330, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %331 = load i32, i32* %11, align 4
  %332 = icmp sgt i32 %331, 14
  br i1 %332, label %333, label %342

333:                                              ; preds = %316
  store i32 1, i32* %15, align 4
  %334 = load i32, i32* %11, align 4
  %335 = icmp sgt i32 %334, 17
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  store i32 1, i32* %14, align 4
  br label %337

337:                                              ; preds = %336, %333
  %338 = load i32, i32* %11, align 4
  %339 = icmp sgt i32 %338, 19
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  store i32 2, i32* %14, align 4
  br label %341

341:                                              ; preds = %340, %337
  br label %342

342:                                              ; preds = %341, %316
  br label %358

343:                                              ; preds = %313
  %344 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %345 = load i32, i32* %6, align 4
  %346 = sub nsw i32 %345, 9
  %347 = load i32, i32* %8, align 4
  %348 = mul nsw i32 %347, 2
  %349 = call %struct.b43legacy_lopair* @b43legacy_get_lopair(%struct.b43legacy_phy* %344, i32 %346, i32 %348)
  store %struct.b43legacy_lopair* %349, %struct.b43legacy_lopair** %10, align 8
  %350 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %10, align 8
  %351 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %343
  br label %396

355:                                              ; preds = %343
  %356 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %10, align 8
  %357 = call i32 @memcpy(%struct.b43legacy_lopair* %9, %struct.b43legacy_lopair* %356, i32 12)
  store i32 3, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %358

358:                                              ; preds = %355, %342
  %359 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %360 = load i32, i32* %6, align 4
  %361 = sub nsw i32 %360, 9
  %362 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %359, i32 67, i32 %361)
  %363 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %364 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %365 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = or i32 %366, 48
  %368 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %363, i32 82, i32 %367)
  %369 = call i32 @udelay(i32 10)
  %370 = call i32 (...) @cond_resched()
  %371 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %372 = load i32, i32* %8, align 4
  %373 = mul nsw i32 %372, 2
  %374 = call i32 @b43legacy_phy_set_baseband_attenuation(%struct.b43legacy_wldev* %371, i32 %373)
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 10
  %376 = load i32, i32* %375, align 8
  %377 = and i32 %376, 65520
  store i32 %377, i32* %11, align 4
  %378 = load i32, i32* %15, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %358
  %381 = load i32, i32* %11, align 4
  %382 = or i32 %381, 8
  store i32 %382, i32* %11, align 4
  br label %383

383:                                              ; preds = %380, %358
  %384 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %385 = load i32, i32* %11, align 4
  %386 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %384, i32 122, i32 %385)
  %387 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %388 = load i32, i32* %6, align 4
  %389 = load i32, i32* %8, align 4
  %390 = mul nsw i32 %389, 2
  %391 = call %struct.b43legacy_lopair* @b43legacy_get_lopair(%struct.b43legacy_phy* %387, i32 %388, i32 %390)
  store %struct.b43legacy_lopair* %391, %struct.b43legacy_lopair** %10, align 8
  %392 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %393 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %10, align 8
  %394 = load i32, i32* %14, align 4
  %395 = call i32 @b43legacy_phy_lo_g_state(%struct.b43legacy_wldev* %392, %struct.b43legacy_lopair* %9, %struct.b43legacy_lopair* %393, i32 %394)
  br label %396

396:                                              ; preds = %383, %354
  %397 = load i32, i32* %8, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %8, align 4
  br label %310

399:                                              ; preds = %310
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %6, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %6, align 4
  br label %306

403:                                              ; preds = %306
  %404 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %405 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %429

408:                                              ; preds = %403
  %409 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %410 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %409, i32 21, i32 58112)
  %411 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %412 = load i32, i32* %14, align 4
  %413 = shl i32 %412, 8
  %414 = or i32 %413, 160
  %415 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %411, i32 2066, i32 %414)
  %416 = call i32 @udelay(i32 5)
  %417 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %418 = load i32, i32* %14, align 4
  %419 = shl i32 %418, 8
  %420 = or i32 %419, 162
  %421 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %417, i32 2066, i32 %420)
  %422 = call i32 @udelay(i32 2)
  %423 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %424 = load i32, i32* %14, align 4
  %425 = shl i32 %424, 8
  %426 = or i32 %425, 163
  %427 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %423, i32 2066, i32 %426)
  %428 = call i32 (...) @cond_resched()
  br label %434

429:                                              ; preds = %403
  %430 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %431 = load i32, i32* %14, align 4
  %432 = or i32 %431, 61344
  %433 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %430, i32 21, i32 %432)
  br label %434

434:                                              ; preds = %429, %408
  %435 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %436 = load i32, i32* %3, align 4
  %437 = call i32 @b43legacy_phy_lo_adjust(%struct.b43legacy_wldev* %435, i32 %436)
  %438 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %439 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %438, i32 46, i32 32895)
  %440 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %441 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %440, i32 0, i32 3
  %442 = load i64, i64* %441, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %434
  %445 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %446 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %445, i32 47, i32 514)
  br label %450

447:                                              ; preds = %434
  %448 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %449 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %448, i32 47, i32 257)
  br label %450

450:                                              ; preds = %447, %444
  %451 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %452 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 4
  %454 = load i32, i32* %453, align 16
  %455 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %451, i32 %452, i32 %454)
  %456 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %457 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 5
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %456, i32 21, i32 %458)
  %460 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 6
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %460, i32 42, i32 %462)
  %464 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %465 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 7
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %464, i32 53, i32 %466)
  %468 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %469 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 8
  %470 = load i32, i32* %469, align 16
  %471 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %468, i32 96, i32 %470)
  %472 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %473 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 9
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %472, i32 67, i32 %474)
  %476 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %477 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 10
  %478 = load i32, i32* %477, align 8
  %479 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %476, i32 122, i32 %478)
  %480 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 11
  %481 = load i32, i32* %480, align 4
  %482 = and i32 %481, 240
  store i32 %482, i32* %480, align 4
  %483 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %484 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %483, i32 82)
  %485 = and i32 %484, 15
  %486 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 11
  %487 = load i32, i32* %486, align 4
  %488 = or i32 %487, %485
  store i32 %488, i32* %486, align 4
  %489 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %490 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 11
  %491 = load i32, i32* %490, align 4
  %492 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %489, i32 82, i32 %491)
  %493 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %494 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 3
  %495 = load i32, i32* %494, align 4
  %496 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %493, i32 994, i32 %495)
  %497 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %498 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %497, i32 0, i32 3
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %527

501:                                              ; preds = %450
  %502 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %503 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 12
  %504 = load i32, i32* %503, align 16
  %505 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %502, i32 2065, i32 %504)
  %506 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %507 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 13
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %506, i32 2066, i32 %508)
  %510 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %511 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 14
  %512 = load i32, i32* %511, align 8
  %513 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %510, i32 2068, i32 %512)
  %514 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %515 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 15
  %516 = load i32, i32* %515, align 4
  %517 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %514, i32 2069, i32 %516)
  %518 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %519 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %521 = load i32, i32* %520, align 16
  %522 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %518, i32 %519, i32 %521)
  %523 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %524 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 1
  %525 = load i32, i32* %524, align 4
  %526 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %523, i32 2050, i32 %525)
  br label %527

527:                                              ; preds = %501, %450
  %528 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %529 = load i32, i32* %13, align 4
  %530 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %528, i32 %529, i32 1)
  ret void
}

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_dummy_transmission(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_set_baseband_attenuation(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_phy_lo_g_measure_txctl2(%struct.b43legacy_wldev*) #1

declare dso_local %struct.b43legacy_lopair* @b43legacy_get_lopair(%struct.b43legacy_phy*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.b43legacy_lopair*, %struct.b43legacy_lopair*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @b43legacy_phy_lo_g_state(%struct.b43legacy_wldev*, %struct.b43legacy_lopair*, %struct.b43legacy_lopair*, i32) #1

declare dso_local i32 @b43legacy_phy_lo_adjust(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
